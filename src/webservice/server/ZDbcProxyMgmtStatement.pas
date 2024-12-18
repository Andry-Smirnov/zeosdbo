{*********************************************************}
{                                                         }
{                 Zeos Database Objects                   }
{           DBC Layer Proxy Connectivity Classes          }
{                                                         }
{        Originally written by Jan Baumgarten             }
{                                                         }
{*********************************************************}

{@********************************************************}
{    Copyright (c) 1999-2020 Zeos Development Group       }
{                                                         }
{ License Agreement:                                      }
{                                                         }
{ This library is distributed in the hope that it will be }
{ useful, but WITHOUT ANY WARRANTY; without even the      }
{ implied warranty of MERCHANTABILITY or FITNESS FOR      }
{ A PARTICULAR PURPOSE.  See the GNU Lesser General       }
{ Public License for more details.                        }
{                                                         }
{ The source code of the ZEOS Libraries and packages are  }
{ distributed under the Library GNU General Public        }
{ License (see the file COPYING / COPYING.ZEOS)           }
{ with the following  modification:                       }
{ As a special exception, the copyright holders of this   }
{ library give you permission to link this library with   }
{ independent modules to produce an executable,           }
{ regardless of the license terms of these independent    }
{ modules, and to copy and distribute the resulting       }
{ executable under terms of your choice, provided that    }
{ you also meet, for each linked independent module,      }
{ the terms and conditions of the license of that module. }
{ An independent module is a module which is not derived  }
{ from or based on this library. If you modify this       }
{ library, you may extend this exception to your version  }
{ of the library, but you are not obligated to do so.     }
{ If you do not wish to do so, delete this exception      }
{ statement from your version.                            }
{                                                         }
{                                                         }
{ The project web site is located on:                     }
{  http://zeoslib.sourceforge.net  (FORUM)                }
{  http://sourceforge.net/p/zeoslib/tickets/ (BUGTRACKER) }
{  http://svn.code.sf.net/p/zeoslib/code-0/trunk (SVN)    }
{                                                         }
{  http://www.sourceforge.net/projects/zeoslib.           }
{                                                         }
{                                                         }
{                                 Zeos Development Group. }
{********************************************************@}

unit ZDbcProxyMgmtStatement;

interface

{$I ../../Zeos.inc}

uses
  Classes, SysUtils,
  ZDbcIntfs, ZDbcBeginnerStatement, ZDbcLogging,
  ZCompatibility, ZVariant, ZDbcGenericResolver, ZDbcCachedResultSet,
  ZDbcUtils;

type
  { TZProxyMgmtPreparedStatement }

  {** Dbc Layer Web Proxy Prepared SQL statement interface. }
  IZProxyMgmtPreparedStatement = interface(IZPreparedStatement)
    ['{16818F5D-9A5B-4402-A71A-40839E414D2D}']
  end;

  TZDbcProxyMgmtPreparedStatement = class(TZAbstractBeginnerPreparedStatement,
    IZProxyMgmtPreparedStatement)
  private
  protected
  public
    constructor Create(const Connection: IZConnection; const SQL: string; Info: TStrings);

    /// <summary>
    ///   Executes the SQL query in this PreparedStatement object
    ///   and returns the result set generated by the query.
    /// </summary>
    /// <returns>
    ///   a ResultSet object that contains the data produced by the
    ///   query; never null
    /// </returns>
    function ExecuteQueryPrepared: IZResultSet; override;
    /// <summary>
    ///   Executes the SQL INSERT, UPDATE or DELETE statement
    ///   in this <code>PreparedStatement</code> object.
    ///   In addition,
    ///   SQL statements that return nothing, such as SQL DDL statements,
    ///   can be executed.
    /// </summary>
    /// <returns>
    ///   either the row count for INSERT, UPDATE or DELETE statements;
    ///   or 0 for SQL statements that return nothing
    /// </returns>
    function ExecuteUpdatePrepared: Integer; override;
    /// <summary>
    ///  Executes any kind of SQL statement.
    ///  Some prepared statements return multiple results; the <code>execute</code>
    ///  method handles these complex statements as well as the simpler
    ///  form of statements handled by the methods <code>executeQuery</code>
    ///  and <code>executeUpdate</code>.
    /// </summary>
    /// <returns>
    ///   True if there is an IZResultSet. False Otherwise.
    /// </returns>
    /// <see>
    ///   IZStatement.Execute
    /// </see>
    /// <remarks>
    ///   The result definition has been taken from the JDBC docs on PreparedStatement.execute()
    /// </remarks>
    function ExecutePrepared: Boolean; override;
  end;

implementation

uses
  {$IFDEF WITH_UNITANSISTRINGS}AnsiStrings, {$ENDIF}
  ZSysUtils, ZFastCode, ZMessages, ZDbcProxy, ZDbcProxyResultSet, ZDbcProxyUtils,
  ZEncoding, ZTokenizer, ZClasses, zeosproxy_imp, DbcProxyConnectionManager,
  ZDbcMetadata, ZExceptions, ZDbcProxyMgmtMetadata;

var
  ProxyFormatSettings: TFormatSettings;
  AttachmentsColumnDefs: TZMetadataColumnDefs;
  I: Integer;

const
  AttachmentsColumnCount = 5;
  AttachmentsColumns: array[FirstDbcIndex..AttachmentsColumnCount {$IFDEF GENERIC_INDEX}-1{$ENDIF}]
    of TZMetadataColumnDef =(
    (Name: 'NR'; SQLType: stLong; Length: 0),
    (Name: 'DATABASE_NAME'; SQLType: stString; Length: 25),
    (Name: 'USER_NAME'; SQLType: stString; Length: 25),
    (Name: 'CREATED'; SQLType: stTimestamp; Length: 0),
    (Name: 'LAST_ACCESS'; SQLType: stTimestamp; Length: 0)
  );

{ TZDbcProxyPreparedStatement }

constructor TZDbcProxyMgmtPreparedStatement.Create(const Connection: IZConnection; const SQL: string; Info: TStrings);
begin
  inherited;
  ResultSetType := rtScrollInsensitive;
end;

function TZDbcProxyMgmtPreparedStatement.ExecuteQueryPrepared: IZResultSet;
begin
  ExecutePrepared;
  Result := LastResultSet;
end;

function TZDbcProxyMgmtPreparedStatement.ExecuteUpdatePrepared: Integer;
begin
  ExecutePrepared;
  Result := LastUpdateCount;
end;

function TZDbcProxyMgmtPreparedStatement.ExecutePrepared: Boolean;
var
  xSQL: UTF8String;
  x: Integer;
  InfoList: TDbcProxyConnectionInfos;
begin
  xSQL := Trim({$IFDEF UNICODE}UTF8Encode(FWSQL){$ELSE}FASQL{$ENDIF});
  if LowerCase(xSQL) <> 'select * from attachments' then
    raise EZSQLException.Create('Only the statement >select * from attachments< is currently supported.');

  FLastResultSet := (GetConnection.GetMetadata as IZProxyMgmtDatabaseMetadata).ConstructVirtualResultSet(AttachmentsColumnDefs);
  Result := True;

  InfoList := ConnectionManager.GetConnectionInfoList;
  for x := 0 to High(InfoList) do begin
    FLastResultSet.MoveToInsertRow;
    FLastResultSet.UpdateLong(FirstDbcIndex, InfoList[x].SessionNr);
    FLastResultSet.UpdateAnsiString(FirstDbcIndex+1, InfoList[x].Database);
    FLastResultSet.UpdateAnsiString(FirstDbcIndex+2, InfoList[x].User);
    FLastResultSet.UpdateTimestamp(FirstDbcIndex+3, InfoList[x].Created);
    FLastResultSet.UpdateTimestamp(FirstDbcIndex+4, InfoList[x].LastAccess);
    FLastResultSet.InsertRow;
  end;
  FLastResultSet.MoveAbsolute(0);
  inherited ExecutePrepared;
end;

initialization
  ProxyFormatSettings.DateSeparator := '-';
  ProxyFormatSettings.LongDateFormat := 'YYYY/MM/DD';
  ProxyFormatSettings.ShortDateFormat := 'YYYY/MM/DD';
  ProxyFormatSettings.LongTimeFormat := 'HH:NN:SS.ZZZ';
  ProxyFormatSettings.ShortTimeFormat := 'HH:NN:SS.ZZZ';
  ProxyFormatSettings.DecimalSeparator := '.';
  ProxyFormatSettings.TimeSeparator := ':';
  ProxyFormatSettings.ThousandSeparator := ',';

  SetLength(AttachmentsColumnDefs, AttachmentsColumnCount);
  for I := FirstDbcIndex to High(AttachmentsColumns) do
    AttachmentsColumnDefs[I{$IFNDEF GENERIC_INDEX}-1{$ENDIF}] := AttachmentsColumns[I];

end.
