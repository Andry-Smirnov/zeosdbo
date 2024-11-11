{*********************************************************}
{                                                         }
{                 Zeos Database Objects                   }
{             Constant messages used by Zeos              }
{                                                         }
{ This unit contains all the messages that are output by  }
{ ZEOS methods. One of the given language can be activated}
{ by setting the language in ->                           }
{ ZEOS.inc (e.g.: $DEFINE GERMAN).                        }
{ If no language is defined english will be used.         }
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
{   https://zeoslib.sourceforge.io/ (FORUM)               }
{   http://sourceforge.net/p/zeoslib/tickets/ (BUGTRACKER)}
{   svn://svn.code.sf.net/p/zeoslib/code-0/trunk (SVN)    }
{                                                         }
{   http://www.sourceforge.net/projects/zeoslib.          }
{                                                         }
{                                                         }
{                                 Zeos Development Group. }
{********************************************************@}

unit ZMessages;

interface

{$I ZCore.inc}

{$IFDEF FPC}
uses ZEncoding;

const
{$IFDEF FRENCH}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !FRENCH}
{$IFDEF PORTUGUESE}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !PORTUGUESE}
{$IFDEF DUTCH}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !DUTCH}
{$IFDEF GERMAN}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !GERMAN}
{$IFDEF SPANISH}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !SPANISH}
{$IFDEF ROMANA}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !ROMANA}
{$IFDEF INDONESIAN}
  MsgCodePage = zCP_WIN1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !INDONESIAN}
{$IFDEF RUSSIAN}
  MsgCodePage = zCP_WIN1251; {Microsoft Windows Codepage 1251 (Cyrl)}
{$ELSE !RUSSIAN}
{$IFDEF CZECH}
  MsgCodePage = zCP_WIN1250; {Microsoft Windows Codepage 1250 (East European)}
{$ELSE !CZECH}
{$IFDEF POLISH}
  MsgCodePage = zCP_WIN1250; {Microsoft Windows Codepage 1250 (East European)}
{$ELSE !POLISH}
  {$DEFINE ASCII7_MESSAGES}
  MsgCodePage = zCP_us_ascii; {US-ASCII (7-bit)}
{$ENDIF POLISH}
{$ENDIF CZECH}
{$ENDIF RUSSIAN}
{$ENDIF INDONESIAN}
{$ENDIF ROMANA}
{$ENDIF SPANISH}
{$ENDIF GERMAN}
{$ENDIF DUTCH}
{$ENDIF PORTUGUESE}
{$ENDIF FRENCH}
{$ENDIF FPC}

{$IF defined(FPC) and not defined(ASCII7_MESSAGES)) and
     (defined(WITH_DEFAULTSYSTEMCODEPAGE) or defined(LCL))}
  {$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
  function SInvalidGuidArray: String;
  {$ENDIF}
  {$IFNDEF WITH_SBCDOVERFLOW}
  function SBcdOverflow: String;
  {$ENDIF}
  {$IFNDEF WITH_SInvalidBcdValue}
  function SInvalidBcdValue: String;
  {$ENDIF}

  function SSQLError1: String;
  function SSQLError2: String;
  function SSQLError3: String;
  function SSQLError4: String;

  function SListCapacityError: String;
  function SListCountError: String;
  function SListIndexError: String;

  function SClonningIsNotSupported: String;
  function SImmutableOpIsNotAllowed: String;
  function SStackIsEmpty: String;
  function SVariableWasNotFound: String;
  function SFunctionWasNotFound: String;
  function SInternalError: String;
  function SSyntaxErrorNear: String;
  function SSyntaxError: String;
  function SUnknownSymbol: String;
  function SUnexpectedExprEnd: String;
  function SRightBraceExpected: String;
  function SParametersError: String;
  function SParamValueExceeded: String;
  function SExpectedMoreParams: String;
  function SInvalidVarByteArray: String;
  function SVariableAlreadyExists: String;
  function STypesMismatch: String;
  function SUnsupportedVariantType: String;
  function SUnsupportedOperation: String;

  function STokenizerIsNotDefined: String;
  function SLibraryNotFound: String;
  function SLibraryNotCompatible: String;

  function SCanNotRetrieveResultSetData: String;
  function SRowBufferIsNotAssigned: String;
  function SColumnIsNotAccessable: String;
  function SConvertionIsNotPossible: String;
  function SCanNotAccessBlobRecord: String;
  function SRowDataIsNotAvailable: String;
  function SResolverIsNotSpecified: String;
  function SResultsetIsAlreadyOpened: String;
  function SCanNotUpdateEmptyRow: String;
  function SCanNotUpdateDeletedRow: String;
  function SCanNotDeleteEmptyRow: String;
  function SCannotUseCommit: String;
  function SCannotUseRollBack: String;
  function SCanNotUpdateComplexQuery: String;
  function SCanNotUpdateThisQueryType: String;
  function SDriverWasNotFound: String;
  function SCanNotConnectToServer: String;
  function STableIsNotSpecified: String;
  function SLiveResultSetsAreNotSupported: String;
  function SInvalidInputParameterCount: String;
  function SIsolationIsNotSupported: String;
  function SColumnWasNotFound: String;
  function SWrongTypeForBlobParameter: String;
  function SIncorrectConnectionURL: String;
  function SUnsupportedProtocol: String;
  function SUnsupportedByDriver   : String;

  function SConnectionIsNotOpened: String;
  function SConnectionIsOpened: String;
  function SInvalidOpInAutoCommit: String;
  function SInvalidOpInNonAutoCommit: String;
  function SInvalidOpPrepare: String;

  function SConnectionIsNotAssigned: String;
  function SQueryIsEmpty: String;
  function SCanNotExecuteMoreQueries: String;
  function SOperationIsNotAllowed1: String;
  function SOperationIsNotAllowed2: String;
  function SOperationIsNotAllowed3: String;
  function SOperationIsNotAllowed4: String;
  function SNoMoreRecords: String;
  function SCanNotOpenResultSet: String;
  function SCanNotOpenDataSetWhenDestroying: String;
  function SCircularLink: String;
  function SBookmarkWasNotFound: String;
  function SIncorrectSearchFieldsNumber: String;
  function SInvalidOperationInTrans: String;
  function SIncorrectSymbol: String;
  function SIncorrectToken: String;
  function SIncorrectParamChar: String;

  function SSelectedTransactionIsolation: String;
  function SDriverNotSupported: String;
  function SPattern2Long: String;
  function SDriverNotCapableOutParameters: String;
  function SStatementIsNotAllowed: String;
  function SStoredProcIsNotAllowed: String;
  function SCannotPerformOperation: String;
  function SInvalidState: String;
  function SErrorConvertion: String;
  function SDataTypeDoesNotSupported: String;
  function SUnsupportedParameterType: String;
  function SUnsupportedDataType: String;
  function SErrorConvertionField: String;
  function SBadOCI: String;
  function SConnect2AsUser: String;
  function SConnect2WinAuth: String;
  function SUnknownError: String;
  function SFieldNotFound1: String;
  function SFieldNotFound2: String;

  function SLoginPromptFailure: String;

  function SPropertyQuery: String;
  function SPropertyTables: String;
  function SPropertyColumns: String;
  function SPropertyProcedures: String;
  function SPropertySequences: String;
  function SPropertyExecute: String;

  function SFormTest: String;
  function SButtonClose: String;
  function SFormEditor: String;
  function STabSheetSelect: String;
  function SMenuLoad: String;
  function SMenuSave: String;
  function SButtonGenerate: String;
  function SButtonCheck: String;
  function SButtonTest: String;
  function SButtonOk: String;
  function SButtonCancel: String;
  function STableAlias: String;
  function SReplaceSQL: String;
  function SDialogOpenTitle: String;
  function SDialogSaveTitle: String;
  function SSQLEditor: String;
  function SDatabaseDialog: String;

  function SUpdateSQLNoResult: String;
  function SUpdateSQLRefreshStatementcount: String;

  function SNotEditing: String;
  function SFieldTypeMismatch: String;
  function SFieldSizeMismatch: String;

  function SNeedField: String;

  function SFailedtoInitPrepStmt: String;
  function SFailedtoPrepareStmt: String;
  function SFailedToBindAllValues: String;
  function SAttemptExecOnBadPrep: String;
  function SBindingFailure: String;
  function SPreparedStmtExecFailure: String;
  function SBoundVarStrIndexMissing: String;
  function SBindVarOutOfRange: String;
  function SFailedToBindResults: String;
  function SPreviousResultStillOpen: String;


  function SRefreshRowOnlySupportedWithUpdateObject: String;
  function SMustBeInBrowseMode: String;

  function SUnKnownParamDataType: String;
  function SFieldReadOnly: String;
  function SInvalidUpdateCount: String;

  function SBackgroundOperationStillRunning: String;
{$ELSE}
procedure loadmessages();

var
  {$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
  SInvalidGuidArray: String;
  {$ENDIF}
  {$IFNDEF WITH_SBCDOVERFLOW}
  SBcdOverflow: String;
  {$ENDIF}
  {$IFNDEF WITH_SInvalidBcdValue}
  SInvalidBcdValue: String;
  {$ENDIF}

  SSQLError1: String;
  SSQLError2: String;
  SSQLError3: String;
  SSQLError4: String;

  SListCapacityError: String;
  SListCountError: String;
  SListIndexError: String;

  SClonningIsNotSupported: String;
  SImmutableOpIsNotAllowed: String;
  SStackIsEmpty: String;
  SVariableWasNotFound: String;
  SFunctionWasNotFound: String;
  SInternalError: String;
  SSyntaxErrorNear: String;
  SSyntaxError: String;
  SUnknownSymbol: String;
  SUnexpectedExprEnd: String;
  SRightBraceExpected: String;
  SParametersError: String;
  SParamValueExceeded: String;
  SExpectedMoreParams: String;
  SInvalidVarByteArray: String;
  SVariableAlreadyExists: String;
  STypesMismatch: String;
  SUnsupportedVariantType: String;
  SUnsupportedOperation: String;

  STokenizerIsNotDefined: String;
  SLibraryNotFound: String;
  SLibraryNotCompatible: String;

  SCanNotRetrieveResultSetData: String;
  SRowBufferIsNotAssigned: String;
  SColumnIsNotAccessable: String;
  SConvertionIsNotPossible: String;
  SCanNotAccessBlobRecord: String;
  SRowDataIsNotAvailable: String;
  SResolverIsNotSpecified: String;
  SResultsetIsAlreadyOpened: String;
  SCanNotUpdateEmptyRow: String;
  SCanNotUpdateDeletedRow: String;
  SCanNotDeleteEmptyRow: String;
  SCannotUseCommit: String;
  SCannotUseRollBack: String;
  SCanNotUpdateComplexQuery: String;
  SCanNotUpdateThisQueryType: String;
  SDriverWasNotFound: String;
  SCanNotConnectToServer: String;
  STableIsNotSpecified: String;
  SLiveResultSetsAreNotSupported: String;
  SInvalidInputParameterCount: String;
  SIsolationIsNotSupported: String;
  SColumnWasNotFound: String;
  SWrongTypeForBlobParameter: String;
  SIncorrectConnectionURL: String;
  SUnsupportedProtocol: String;
  SUnsupportedByDriver   : String;

  SConnectionIsNotOpened: String;
  SConnectionIsOpened: String;
  SInvalidOpInAutoCommit: String;
  SInvalidOpInNonAutoCommit: String;
  SInvalidOpPrepare: String;

  SConnectionIsNotAssigned: String;
  SQueryIsEmpty: String;
  SCanNotExecuteMoreQueries: String;
  SOperationIsNotAllowed1: String;
  SOperationIsNotAllowed2: String;
  SOperationIsNotAllowed3: String;
  SOperationIsNotAllowed4: String;
  SNoMoreRecords: String;
  SCanNotOpenResultSet: String;
  SCanNotOpenDataSetWhenDestroying: String;
  SCircularLink: String;
  SBookmarkWasNotFound: String;
  SIncorrectSearchFieldsNumber: String;
  SInvalidOperationInTrans: String;
  SIncorrectSymbol: String;
  SIncorrectToken: String;
  SIncorrectParamChar: String;

  SSelectedTransactionIsolation: String;
  SDriverNotSupported: String;
  SPattern2Long: String;
  SDriverNotCapableOutParameters: String;
  SStatementIsNotAllowed: String;
  SStoredProcIsNotAllowed: String;
  SCannotPerformOperation: String;
  SInvalidState: String;
  SErrorConvertion: String;
  SDataTypeDoesNotSupported: String;
  SUnsupportedParameterType: String;
  SUnsupportedDataType: String;
  SErrorConvertionField: String;
  SBadOCI: String;
  SConnect2AsUser: String;
  SConnect2WinAuth: String;
  SUnknownError: String;
  SFieldNotFound1: String;
  SFieldNotFound2: String;

  SLoginPromptFailure: String;

  SPropertyQuery: String;
  SPropertyTables: String;
  SPropertyColumns: String;
  SPropertyProcedures: String;
  SPropertySequences: String;
  SPropertyExecute: String;

  SFormTest: String;
  SButtonClose: String;
  SFormEditor: String;
  STabSheetSelect: String;
  SMenuLoad: String;
  SMenuSave: String;
  SButtonGenerate: String;
  SButtonCheck: String;
  SButtonTest: String;
  SButtonOk: String;
  SButtonCancel: String;
  STableAlias: String;
  SReplaceSQL: String;
  SDialogOpenTitle: String;
  SDialogSaveTitle: String;
  SSQLEditor: String;
  SDatabaseDialog: String;

  SUpdateSQLNoResult: String;
  SUpdateSQLRefreshStatementcount: String;
  {$IFDEF FPC}
  SNotEditing: String;
  SFieldTypeMismatch: String;
  SFieldSizeMismatch: String;
  {$ENDIF}
  SNeedField: String;

  SFailedtoInitPrepStmt: String;
  SFailedtoPrepareStmt: String;
  SFailedToBindAllValues: String;
  SAttemptExecOnBadPrep: String;
  SBindingFailure: String;
  SPreparedStmtExecFailure: String;
  SBoundVarStrIndexMissing: String;
  SBindVarOutOfRange: String;
  SFailedToBindResults: String;
  SPreviousResultStillOpen: String;


  SRefreshRowOnlySupportedWithUpdateObject: String;
  SMustBeInBrowseMode: String;

  SUnKnownParamDataType: String;
  SFieldReadOnly: String;
  SInvalidUpdateCount: String;

  SBackgroundOperationStillRunning: String;
{$IFEND}

implementation

uses ZCompatibility;

resourcestring
  {$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
    cInvalidGuidArray = 'Byte-Array or Buffer for GUID must have exact %s Bytes';
  {$ENDIF}
  {$IFNDEF WITH_SBCDOVERFLOW}
    cBcdOverflow = 'BCD-Overflow';
  {$ENDIF}
  {$IFNDEF WITH_SInvalidBcdValue}
    cInvalidBcdValue = '%s is not a valid BCD-Value';
  {$ENDIF}
  cSLibraryNotCompatible = 'Client-Library %s found but could not be loaded. Check compile-target and library compatibility!';
//--- added by Serge Girard --------------------------------------------------------
{$IFDEF FRENCH}
  cSSQLError1 = 'Erreur SQL: %s';
  cSSQLError2 = 'Erreur SQL: %s Code: %d';
  cSSQLError3 = 'Erreur SQL: %s '+LineEnding+'Code: %d SQL: %s';
  cSSQLError4 = 'Erreur SQL: %s '+LineEnding+'Code: %d Message: %s';

  cSListCapacityError = 'Capacitй de liste hors limite (%d)';
  cSListCountError = 'Compteur de liste (count) hors limite (%d)';
  cSListIndexError = 'Index de liste hors limite (%d)';

  cSClonningIsNotSupported = 'Le clonage n''est pas supportй pour cette classe';
  cSImmutableOpIsNotAllowed = 'L''opйration n''est pas permise sur des collections non modifiables';
  cSStackIsEmpty = 'La pile est vide';
  cSVariableWasNotFound = 'Variable "%s" non trouvйe';
  cSFunctionWasNotFound = 'Fonction "%s" non trouvйe';
  cSInternalError = 'Erreur interne';
  cSSyntaxErrorNear = 'Erreur de syntaxe proche de "%s"';
  cSSyntaxError = 'Erreur de syntaxe';
  cSUnknownSymbol = 'Symbole inconnu "%s"';
  cSUnexpectedExprEnd = 'Fin d''expression imprйvue';
  cSRightBraceExpected = ') attendue';
  cSParametersError = '%d paramиtres attendus mais %d ont йtй trouvйs';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Plus de deux paramиtres sont attendus';
  cSInvalidVarByteArray = 'Tableau de VarByte non valide';
  cSVariableAlreadyExists = 'La variable "%s" existe dйjа';
  cSTypesMismatch = 'Types non concordants';
  cSUnsupportedVariantType = 'Type variant non supportй';
  cSUnsupportedOperation = 'Opйration non supportйe';

  cSTokenizerIsNotDefined = 'l''objet Tokenizer n''est pas dйfini';
  cSLibraryNotFound = 'Acune des bibliothиques dynamiques ne peut кtre trouvйe ou chargйe: %s !'#10#13'Utilisez TZConnection.LibraryLocation si l''emplacement est incorrect.';

  cSCanNotRetrieveResultSetData = 'Ne peut rйcupйrer l''ensemble de donnйes rйsultant';
  cSRowBufferIsNotAssigned = 'Le buffer de ligne n''est pas assignй';
  cSColumnIsNotAccessable = 'Colonne d''index %d inaccessible';
  cSConvertionIsNotPossible = 'Conversion impossible de la colonne %d de %s vers %s';
  cSCanNotAccessBlobRecord = 'Ne peut accйder au blob de la colonne %d avec le type %s';
  cSRowDataIsNotAvailable = 'Ligne de donnйes non disponible';
  cSResolverIsNotSpecified = 'L''objet Resolver n''est pas indiquй';
  cSResultsetIsAlreadyOpened = 'L''ensemble rйsultat est dйjа ouvert';
  cSCanNotUpdateEmptyRow = 'Ne peut mettre а jour une ligne vide';
  cSCanNotUpdateDeletedRow = 'Ne peut mettre а jour une ligne supprimйe';
  cSCanNotDeleteEmptyRow = 'Ne peut supprimer un ligne vide';
  cSCannotUseCommit = 'Vous ne pouvez pas utiliser COMMIT en mode AUTOCOMMIT';
  cSCannotUseRollBack = 'Vous ne pouvez pas utiliser ROLLBACK en mode AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Ne peut mettre а jour une requкte complexe impliquant plus d''une table';
  cSCanNotUpdateThisQueryType = 'Ne peut mettre а jour ce type de requкte';
  cSDriverWasNotFound = 'Le driver de base de donnйes demandй n''a pas йtй trouvй';
  cSCanNotConnectToServer = 'Ne peut se connecter au serveur SQL';
  cSTableIsNotSpecified = 'La table n''est pas spйcifiйe';
  cSLiveResultSetsAreNotSupported = 'Une requкte actualisable n''est pas supportйe par cette classe';
  cSInvalidInputParameterCount = 'Le nombre de paramиtres attendu est infйrieur au prйvu';
  cSIsolationIsNotSupported = 'Niveau d''isolation de transaction non supportй';
  cSColumnWasNotFound = 'Colonne de nom "%s" non trouvйe';
  cSWrongTypeForBlobParameter = 'Type incorrect pour le paramиtre Blob';
  cSIncorrectConnectionURL = 'Connexion URL: %s incorrect';
  cSUnsupportedProtocol = 'Protocole: %s non supportй';
  cSUnsupportedByDriver    = 'Le driver d''origine ne supporte pas cette fonctionnalitй: [%s]';

  cSConnectionIsNotOpened = 'Connexion non encore ouverte';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Opйration non valide en mode AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Opйration non valide si le mode n''est pas AutoCommit';
  cSInvalidOpPrepare = 'Prйparer une transaction n''est possible qu''en en dйmarrant une (Starttransaction) d''abord (!)';

  cSConnectionIsNotAssigned = 'La connexion а la base donnйes n''est pas indiquй';
  cSQueryIsEmpty = 'La requкte SQL est vide';
  cSCanNotExecuteMoreQueries = 'Ne peut exйcuter plus d''une requкte';
  cSOperationIsNotAllowed1 = 'Cette opйration n''est pas permise en mode FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Cette opйration n''est pas permise en mode READ ONLY';
  cSOperationIsNotAllowed3 = 'Cette opйration n''est pas permise en mode %s';
  cSOperationIsNotAllowed4 = 'Cette opйration n''est pas permise en mode sur un ensemble de donnйes fermй';
  cSNoMoreRecords = 'Plus d''enregistrements dans l''ensemble de donnйes';
  cSCanNotOpenResultSet = 'Ne peut ouvrir un ensemble de donnйes';
  cSCanNotOpenDataSetWhenDestroying ='Ne peut ouvrir un ensemble de donnйes alors que l''йtat du composant est dsDestroying';
  cSCircularLink = 'Lien circulaire crйй par le Datasource';
  cSBookmarkWasNotFound = 'Le marque page (Bookmark) n''a pas йtй trouvй';
  cSIncorrectSearchFieldsNumber = 'Nombre incorrect de valeurs de recherche';
  cSInvalidOperationInTrans = 'Opйration invalide dans un mode de transaction explicite';
  cSIncorrectSymbol = 'Symbole incorrect dans la liste des champs "%s".';
  cSIncorrectToken = 'Token incorrect suivi par ":"';
  cSIncorrectParamChar = 'Valeur non valide pour ParamChar';

  cSSelectedTransactionIsolation = 'Le niveau d''isolation de transaction sйlectionnй n''est pas supportй';
  cSDriverNotSupported = 'Driver non supportй %s';
  cSPattern2Long = 'Le Pattern est trop long';
  cSDriverNotCapableOutParameters = 'Le Driver n''est pas capable d''utiliser des paramиtres';
  cSStatementIsNotAllowed = 'Dйclaration non permise';
  cSStoredProcIsNotAllowed = 'La procйdure stockйe n''est pas permise';
  cSCannotPerformOperation = 'Ne peut effectuer cette opйration sur une ensemble de donnйes fermй';
  cSInvalidState = 'Йtat non valide';
  cSErrorConvertion = 'Erreur de conversion';
  cSDataTypeDoesNotSupported = 'Type de donnйe non supportй';
  cSUnsupportedParameterType = 'Type de paramиtre non supportй';
  cSUnsupportedDataType = 'Type de donnйe non supportй';
  cSErrorConvertionField = 'Erreur de conversion pour le champ "%s" vers le type SQL "%s"';
  cSBadOCI = 'Mauvaise version OCI [%s] . Version 8.0.3 ou plus ancienne requise';
  cSConnect2AsUser = 'Connexion а "%s" en tant qu''utilisateur "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Erreur inconnue';
  cSFieldNotFound1 = 'Champ "%s" non trouvй';
  cSFieldNotFound2 = 'Champ %d non trouvй';

  cSLoginPromptFailure = 'Ne peut trouver le dialogue d''identification par dйfaut. Ajoutez ,S.V.P. DBLogDlg dans la section uses section de votre fichier principal.';

  cSPropertyQuery = 'La requкte peut prendre un certain temps sur des bases de donnйes importantes!';
  cSPropertyTables = 'Vous devriez la limiter via Catalogue et/ou Schйma.';
  cSPropertyColumns = 'Vous devriez la limiter via Catalogue, Schйma et/ou Nom de Table.';
  cSPropertyProcedures = 'Vous devriez la limiter via Catalogue et/ou Schema.';
  cSPropertySequences = 'Vous devriez la limiter via Catalogue et/ou Schema.';
  cSPropertyExecute = 'La Requкte doit-elle s''exйcuter quand mкme?';

  cSFormTest = 'Йditeur SQL ZEOS Test';
  cSButtonClose = '&Fermer';
  cSFormEditor = 'Йditeur SQL ZEOS';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Charger';
  cSMenuSave = 'Sauver';
  cSButtonGenerate = '&Gйnйrer';
  cSButtonCheck = '&Vйrifier';
  cSButtonTest = '&Tester';
  cSButtonOk = '&OK';
  cSButtonCancel = 'A&nnuler';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Remplacer le SQL';
  cSDialogOpenTitle = 'Ouvrir fichier SQL';
  cSDialogSaveTitle = 'Sauver dans un fichier SQL';
  cSSQLEditor = 'Йditeur SQL';
  cSDatabaseDialog = 'Ouvrir base existante';

  cSUpdateSQLNoResult = '"Update Refresh SQL" ne fourni aucun ensemble de rйsultat';
  cSUpdateSQLRefreshStatementcount ='La dйclaration de l''"Update Refresh SQL" ne peut кtre qu''unique';

  {$IFDEF FPC}
  cSNotEditing = 'L''ensemble de donnйes n''est ni en modification ni en insertion';
  cSFieldTypeMismatch = 'Diffйrence de type pour le champ ''%s'', attendu: %s trouvй: %s';
  cSFieldSizeMismatch = 'Diffйrence de taille pour le champ ''%s'', attendue: %d trouvйe: %d';
  {$ENDIF}
  cSNeedField               = 'Le champ %s est requis, mais non renseignй.';

  cSFailedtoInitPrepStmt   = 'La dйclaration a йchouйe а l''initialisation';
  cSFailedtoPrepareStmt    = 'La dйclaration a йchouйe durant le processus de prйparation';
  cSFailedToBindAllValues  = 'L''application a йchouй а prй-relier toutes les valeurs';
  cSAttemptExecOnBadPrep   = 'Tentative d''exйcuter une dйclaration avant une prйparation rйussie.';
  cSBindingFailure         = 'Йchec а relier l''ensemble des paramиtres';
  cSPreparedStmtExecFailure = 'La prйparation de la dйclaration a йchouй';
  cSBoundVarStrIndexMissing = 'Nom de la variable de relation "%s" inexistant';
  cSBindVarOutOfRange      = 'Index de la variable de relation hors limite: %d';
  cSFailedToBindResults    = 'L''application a йchouй а lier l''ensemble rйsultat';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'La mйthode "refreshrow" n''est permise qu''avec un objet de mise а jour(Update)';
  cSMustBeInBrowseMode = 'Opйration uniquement permise dans l''йtat dsBROWSE';

  cSUnKnownParamDataType = 'Param.DataType inconnu';
  cSFieldReadOnly        = ' A un champ en lecture seule on ne peut assigner une valeur : %s';
  cSInvalidUpdateCount     = '%d enregistrement(s) mis а jour. Un seul urait du l''кtre.';

  cSPreviousResultStillOpen = 'L''ensemble de donnйes rйsultat prйcйdent de cette instruction est encore ouvert';
//--- end added by Serge Girard ------------------------------------
  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE !FRENCH}
// -> ms, 09/05/2005
{$IFDEF PORTUGUESE}
  cSSQLError1 = 'Erro SQL: %s';
  cSSQLError2 = 'Erro SQL: %s Cуdigo: %d';
  cSSQLError3 = 'Erro SQL: %s '+LineEnding+'Cуdigo: %d SQL: %s';
  cSSQLError4 = 'Erro SQL: %s '+LineEnding+'Cуdigo: %d Mensagem: %s';

  cSListCapacityError = 'Capacidade da Lista fora do limite (%d)';
  cSListCountError = 'Contagem da Lista fora do limite (%d)';
  cSListIndexError = 'Нndice da Lista fora do limite (%d)';

  cSClonningIsNotSupported = 'Clonagem nгo й suportada por esta classe';
  cSImmutableOpIsNotAllowed = 'A operaзгo nгo й permitida para coleзгo imutбvel';
  cSStackIsEmpty = 'Pilha estб vazia';
  cSVariableWasNotFound = 'Variбvel "%s" nгo foi encontrada';
  cSFunctionWasNotFound = 'Function "%s" nгo foi encontrada';
  cSInternalError = 'Erro interno';
  cSSyntaxErrorNear = 'Erro de sintaxe prуximo a "%s"';
  cSSyntaxError = 'Erro de sintaxe';
  cSUnknownSymbol = 'Sнmbolo desconhecido "%s"';
  cSUnexpectedExprEnd = 'Final inesperado de expressгo';
  cSRightBraceExpected = ') esperado';
  cSParametersError = 'Esperado %d parвmetros mas foi encontrado %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Esperado mais que 2 parвmetros';
  cSInvalidVarByteArray = 'VarByte array invбlido';
  cSVariableAlreadyExists = 'Variбvel "%s" jб existe';
  cSTypesMismatch = 'Tipos nгo combinam';
  cSUnsupportedVariantType = 'Tipo variante nгo suportado';
  cSUnsupportedOperation = 'Operaзгo nгo suportada';

  cSTokenizerIsNotDefined = 'Sinalizador nгo definido';
  cSLibraryNotFound = 'Nenhuma biblioteca dinвmica da lista %s foi encontrada';

  cSCanNotRetrieveResultSetData = 'Nгo foi possнvel obter os dados do ResultSet';
  cSRowBufferIsNotAssigned = 'Buffer da Linha nгo atribuнdo';
  cSColumnIsNotAccessable = 'Coluna com нndice %d nгo й acessнvel';
  cSConvertionIsNotPossible = 'A conversгo da coluna %d de %s para %s nгo й possнvel';
  cSCanNotAccessBlobRecord = 'Nгo й possнvel acessar um registro BLOB na coluna %d com o tipo %s';
  cSRowDataIsNotAvailable = 'Dados na Linha nгo disponнveis';
  cSResolverIsNotSpecified = 'Resolver nгo foi especificado para este ResultSet';
  cSResultsetIsAlreadyOpened = 'ResultSet jб estб aberto';
  cSCanNotUpdateEmptyRow = 'Nгo й possнvel atualizar uma linha vazia';
  cSCanNotUpdateDeletedRow = 'Nгo й possнvel atualizar uma linha apagada';
  cSCanNotDeleteEmptyRow = 'Nгo й possнvel apagar uma linha vazia';
  cSCannotUseCommit = 'Vocк nгo pode usar Commit no modo AutoCommit';
  cSCannotUseRollBack = 'Vocк nгo pode usar Rollback no modo AutoCommit';
  cSCanNotUpdateComplexQuery = 'Nгo й possнvel atualizar uma query complexa com mais de uma tabela';
  cSCanNotUpdateThisQueryType = 'Nгo й possнvel atualizar este tipo de query';
  cSDriverWasNotFound = 'O driver de banco de dados requisitado nгo foi encontrado';
  cSCanNotConnectToServer = 'Nгo foi possнvel conectar ao servidor SQL';
  cSTableIsNotSpecified = 'Tabela nгo especificada';
  cSLiveResultSetsAreNotSupported = 'Live query nгo й suportado por esta classe';
  cSInvalidInputParameterCount = 'A contagem do parвmetro de entrada й menor que o esperado';
  cSIsolationIsNotSupported = 'O nнvel de isolamento da Transaзгo nгo й suportado';
  cSColumnWasNotFound = 'Coluna com o nome "%s" nгo foi encontrada';
  cSWrongTypeForBlobParameter = 'Tipo errado para parвmetro Blob';
  cSIncorrectConnectionURL = 'Conexгo incorreta URL: %s';
  cSUnsupportedProtocol = 'Protocolo nгo suportado: %s';
  cSUnsupportedByDriver    = 'O Driver nгo suporta este recurso nativamente: [%s]';

  cSConnectionIsNotOpened = 'Conexгo ainda nгo estб aberta.';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Operaзгo invбlida no modo AutoCommit.';
  cSInvalidOpInNonAutoCommit = 'Operaзгo invбlida quando o modo AutoCommit й False.';
  cSInvalidOpPrepare = 'Prepare transaction somente й possнvel apуs comandar StartTransaction';

  cSConnectionIsNotAssigned = 'Componente de conexгo de banco de dados nгo atribuнdo';
  cSQueryIsEmpty = 'A consulta SQL estб vazia';
  cSCanNotExecuteMoreQueries = 'Nгo й possнvel executar mais que uma query';
  cSOperationIsNotAllowed1 = 'Operaзгo nгo permitida no modo FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operaзгo nгo permitida no modo READ ONLY';
  cSOperationIsNotAllowed3 = 'Operaзгo nгo permitida no modo %s';
  cSOperationIsNotAllowed4 = 'Operaзгo nгo permitida para DataSet fechado';
  cSNoMoreRecords = 'Nenhum registro no ResultSet';
  cSCanNotOpenResultSet = 'Nгo foi possнvel abrir o ResultSet';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'DataSource possui um link circular';
  cSBookmarkWasNotFound = 'Bookmark nгo foi encontrado';
  cSIncorrectSearchFieldsNumber = 'Nъmero incorreto de valores de campos de procura';
  cSInvalidOperationInTrans = 'Operaзгo invбlida no modo de transaзгo explнcita';
  cSIncorrectSymbol = 'Sнmbolo incorreto na lista de campos "%s".';
  cSIncorrectToken = 'Sinal incorreto seguido por ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'O nнvel selecionado do isolamento da transaзгo nгo й suportado';
  cSDriverNotSupported = 'Driver nгo suportado %s';
  cSPattern2Long = 'Padrгo й muito longo';
  cSDriverNotCapableOutParameters = 'O Driver nгo suporta a passagem de parвmetros';
  cSStatementIsNotAllowed = 'Declaraзгo nгo permitida';
  cSStoredProcIsNotAllowed = 'A stored procedure nгo й permitida';
  cSCannotPerformOperation = 'Nгo й possнvel executar a operaзгo num ResultSet fechado';
  cSInvalidState = 'Estado invбlido';
  cSErrorConvertion = 'Erro de conversгo';
  cSDataTypeDoesNotSupported = 'Tipo de dado nгo suportado';
  cSUnsupportedParameterType = 'Tipo de parвmetro nгo suportado';
  cSUnsupportedDataType = 'Tipo de dado nгo suportado';
  cSErrorConvertionField = 'Erro de conversгo para do campo "%s" para SQLType "%s"';
  cSBadOCI = 'Versгo de OCI incompatнvel [% s]. Requer 8.0.3 ou mais antigo';
  cSConnect2AsUser = 'Conecte "% s" como usuбrio "% s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Erro desconhecido';
  cSFieldNotFound1 = 'Campo "%s" nгo foi encontrado';
  cSFieldNotFound2 = 'Campo %d nгo foi encontrado';

  cSLoginPromptFailure = 'Nгo foi possнvel encontrar o diбlogo padrгo de login. Por favor adicione DBLogDlg para a seзгo uses de seu arquivo principal.';

  cSPropertyQuery = 'A Query poderб demorar em bancos de dados grandes!';
  cSPropertyTables = 'Vocк deveria limitar por Catalogo e/ou Esquema.';
  cSPropertyColumns = 'Vocк deveria limitar por Catalogo, Esquema e/ou Tabela.';
  cSPropertyProcedures = 'Vocк deveria limitar por Catalogo e/ou Esquema.';
  cSPropertySequences = 'Vocк deveria limitar por Catalogo e/ou Esquema..';
  cSPropertyExecute = 'Executar a Query de qualquer maneira?';

  cSFormTest = 'Teste Editor ZEOS SQL';
  cSButtonClose = '&Fechar';
  cSFormEditor = 'Editor ZEOS SQL';
  cSTabSheetSelect = 'SQL Select';
  cSMenuLoad = 'Carregar';
  cSMenuSave = 'Salvar';
  cSButtonGenerate = '&Gerar';
  cSButtonCheck = '&Verificar';
  cSButtonTest = '&Testar';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Cancelar';
  cSTableAlias = '&Alias Tabela';
  cSReplaceSQL = '&Substituir SQL';
  cSDialogOpenTitle = 'Abrir Arquivo SQL';
  cSDialogSaveTitle = 'Salvar Arquivo SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Abrir Banco de Dados existente';

  cSUpdateSQLNoResult = 'SQL Update Refresh resultou num conjunto vazio';
  cSUpdateSQLRefreshStatementcount ='Usar somente 1 declaraзгo SQL para Update Refresh';
  {$IFDEF FPC}
  cSNotEditing = 'Dataset nгo estб em modo de ediзгo ou inserзгo';
  cSFieldTypeMismatch = 'Tipo invбlido para o campo ''%s'', esperado: %s atual: %s';
  cSFieldSizeMismatch = 'Tamanho Invбlido para o campo ''%s'', esperado: %d atual: %d';
  {$ENDIF}
  cSNeedField               = 'O campo %s й obrigatуrio, mas nгo foi preenchido.';

  cSFailedtoInitPrepStmt   = 'A declaraзгo preparada falhou ao inicializar';
  cSFailedtoPrepareStmt    = 'A declaraзгo falhou durante o processo de preparo';
  cSFailedToBindAllValues  = 'A Aplicaзгo falhou na traduзгo de todos os valores';
  cSAttemptExecOnBadPrep   = 'Tentativa de executar uma declaraзгo que nгo foi corretamente preparada';
  cSBindingFailure         = 'Falha ao traduzir o conjunto de parвmetros';
  cSPreparedStmtExecFailure = 'A declaraзгo preparada falhou ao executar';
  cSBoundVarStrIndexMissing = 'Нndice de texto "%s" da variбvel de limite nгo existe';
  cSBindVarOutOfRange      = 'Нndice da variбvel de limite fora de alcance: %d';
  cSFailedToBindResults    = 'A Aplicaзгo falhou ao tratar o result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'O mйtodo RefreshRow somente й suportado com um update object';
  cSMustBeInBrowseMode = 'A Operaзгo й permitida somente no modo dsBrowse';

  cSUnKnownParamDataType = 'Param.DataType й de tipo desconhecido';
  cSFieldReadOnly        = 'O campo %d й somente leitura e nгo pфde receber dados';
  cSInvalidUpdateCount   = '%d registro(s) atualizados. Apenas um registro deveria ter sido atualizado.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}

{$IFDEF DUTCH}
  cSSQLError1 = 'SQL Fout: %s';
  cSSQLError2 = 'SQL Fout: %s Code: %d';
  cSSQLError3 = 'SQL Fout: %s '+LineEnding+'Code: %d SQL: %s';
  cSSQLError4 = 'SQL Fout: %s '+LineEnding+'Code: %d Bericht: %s';

  cSListCapacityError = 'Lijst capaciteit buiten bereik (%d)';
  cSListCountError = 'Lijst aantal buiten bereik (%d)';
  cSListIndexError = 'Lijst index buiten bereik (%d)';

  cSClonningIsNotSupported = 'Kloonen worden niet ondersteund in deze klasse';
  cSImmutableOpIsNotAllowed = 'Deze operatie is niet ondersteund voor immutable collection';
  cSStackIsEmpty = 'Stack is leeg';
  cSVariableWasNotFound = 'Variabele "%s" niet gevonden';
  cSFunctionWasNotFound = 'Functie "%s" niet gevonden';
  cSInternalError = 'Interne fout';
  cSSyntaxErrorNear = 'Syntaxis fout bij "%s"';
  cSSyntaxError = 'Syntaxis fout';
  cSUnknownSymbol = 'Onbekend symbool "%s"';
  cSUnexpectedExprEnd = 'Onverwacht einde van de expressie';
  cSRightBraceExpected = ') verwacht';
  cSParametersError = 'Verwacht worden %d parameters maar er zijn er %d gevonden';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Meer dan 2 parameters werden verwacht';
  cSInvalidVarByteArray = 'Ongeldig VarByte array';
  cSVariableAlreadyExists = 'Variabele "%s" bestaat al';
  cSTypesMismatch = 'Types komen niet overeen';
  cSUnsupportedVariantType = 'Niet ondersteund variant type';
  cSUnsupportedOperation = 'Niet ondersteunde operatie';

  cSTokenizerIsNotDefined = 'Tokenizer is niet gedefinieerd';
  cSLibraryNotFound = 'DLL van de lijst %s werd niet gevonden';

  cSCanNotRetrieveResultSetData = 'Kan ResultSet data niet ophalen';
  cSRowBufferIsNotAssigned = 'Row buffer is niet toegekend';
  cSColumnIsNotAccessable = 'Kolom met index %d is niet bereikbaar';
  cSConvertionIsNotPossible = 'Conversie is niet mogelijk voor kolom %d van %s tot %s';
  cSCanNotAccessBlobRecord = 'Kan het blob record in kolom %d met type %s niet benaderen';
  cSRowDataIsNotAvailable = 'Rij data is niet beschikbaar';
  cSResolverIsNotSpecified = 'Resolver is niet gespecificeerd voor deze ResultSet';
  cSResultsetIsAlreadyOpened = 'ResultSet is al geopend';
  cSCanNotUpdateEmptyRow = 'Kan een lege rij niet updaten';
  cSCanNotUpdateDeletedRow = 'Kan een verwijderde rij niet updaten';
  cSCanNotDeleteEmptyRow = 'Kan een lege rij niet verwijderen';
  cSCannotUseCommit = 'Commit in autocommit mode is niet mogelijk';
  cSCannotUseRollBack = 'Rollback in autocommit mode is niet mogelijk';
  cSCanNotUpdateComplexQuery = 'Kan een complexe query met meerdere tabellen niet updaten';
  cSCanNotUpdateThisQueryType = 'Kan dit query type niet updaten';
  cSDriverWasNotFound = 'Gevraagde database driver is niet gevonden';
  cSCanNotConnectToServer = 'Kan geen verbinding maken met de SQL server';
  cSTableIsNotSpecified = 'Tabel is niet gespecifieerd';
  cSLiveResultSetsAreNotSupported = 'Live query is niet ondersteund door deze klasse';
  cSInvalidInputParameterCount = 'Input parameter aantal is lager dan verwacht';
  cSIsolationIsNotSupported = 'Transactie isolatie niveau wordt niet ondersteund';
  cSColumnWasNotFound = 'Kolom met naam "%s" bestaat niet';
  cSWrongTypeForBlobParameter = 'Verkeerde type voor Blob parameter';
  cSIncorrectConnectionURL = 'Ongeldige connectie URL: %s';
  cSUnsupportedProtocol = 'Niet ondersteund protocol: %s';
  cSUnsupportedByDriver    = 'De driver ondersteunt deze functie niet: [%s]';

  cSConnectionIsNotOpened = 'Verbinding is niet gemaakt.';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Ongeldige operatie in AutoCommit mode.';
  cSInvalidOpInNonAutoCommit = 'Ongeldige operatie in non AutoCommit mode.';
  cSInvalidOpPrepare = 'Transactie voorbereiden is enkel mogelijk bij de eerste aanroep van Starttransaction!';

  cSConnectionIsNotAssigned = 'Database connectie component is niet toegekend';
  cSQueryIsEmpty = 'SQL Query is leeg';
  cSCanNotExecuteMoreQueries = 'Kan niet meerdere queries uitvoeren';
  cSOperationIsNotAllowed1 = 'Bewerking is niet toegestaan in FORWARD ONLY mode';
  cSOperationIsNotAllowed2 = 'Bewerking is niet toegestaan in READ ONLY mode';
  cSOperationIsNotAllowed3 = 'Bewerking is niet toegestaan in %s mode';
  cSOperationIsNotAllowed4 = 'Bewerking is niet toegestaan voor gesloten dataset';
  cSNoMoreRecords = 'Geen records meer aanwezig in ResultSet';
  cSCanNotOpenResultSet = 'Kan een ResultSet niet openen';
  cSCanNotOpenDataSetWhenDestroying ='Kan een Dataset niet openen wanneer de componentstate=dsDestroying';
  cSCircularLink = 'Databron maakt een oneindige verbindingslus';
  cSBookmarkWasNotFound = 'Bookmark niet gevonden';
  cSIncorrectSearchFieldsNumber = 'Incorrect aantal zoekvelden';
  cSInvalidOperationInTrans = 'Ongeldige operatie in explicit transaction mode';
  cSIncorrectSymbol = 'Ongeldig symbool in veld lijst "%s".';
  cSIncorrectToken = 'Ongeldig teken gevolgd door ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Geselecteerd transactie isolatie niveau niet ondersteund';
  cSDriverNotSupported = 'Driver niet ondersteund %s';
  cSPattern2Long = 'Patroon is te lang';
  cSDriverNotCapableOutParameters = 'Driver ondersteunt geen out parameters';
  cSStatementIsNotAllowed = 'Statement is niet toegestaan';
  cSStoredProcIsNotAllowed = 'Stored procedures zijn niet toegestaan';
  cSCannotPerformOperation = 'Kan operatie niet uitvoeren op een gesloten ResultSet';
  cSInvalidState = 'Ongeldige status';
  cSErrorConvertion = 'Conversiefout';
  cSDataTypeDoesNotSupported = 'Data type is niet onderstuend';
  cSUnsupportedParameterType = 'Niet ondersteund parameter type';
  cSUnsupportedDataType = 'Niet ondersteund data type';
  cSErrorConvertionField = 'Conversie fout voor veld "%s" naar SQLType "%s"';
  cSBadOCI = 'Ongeschikte OCI version [%s]. Vereist is 8.0.3 of nieuwer';
  cSConnect2AsUser = 'Verbinden met "%s" als gebruiker "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Onbekende fout';
  cSFieldNotFound1 = 'Veld "%s" niet gevonden';
  cSFieldNotFound2 = 'Veld %d niet gevonden';

  cSLoginPromptFailure = 'Kan de standaard login prompt niet vinden.  Voeg DBLogDlg toe aan de uses sectie.';

  cSPropertyQuery = 'De Query kan enige tijd duren bij grote databases!';
  cSPropertyTables = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertyColumns = 'Limiet op Catalog, Schema en/of tablenaam is vereist.';
  cSPropertyProcedures = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertySequences = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertyExecute = 'Dient de Query toch te worden uitgevoerd?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Sluiten';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Laden';
  cSMenuSave = 'Opslaan';
  cSButtonGenerate = '&Genereren';
  cSButtonCheck = 'C&heck';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Annuleren';
  cSTableAlias = 'Tabel al&ias';
  cSReplaceSQL = '&Vervang SQL';
  cSDialogOpenTitle = 'SQL Bestand Openen';
  cSDialogSaveTitle = 'SQL Bestand Opslaan';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Open bestaande database';

  cSUpdateSQLNoResult = 'Der zuvor aktualisierte SQL liefert kein Resultset zurьck';
  cSUpdateSQLRefreshStatementcount ='Update Refresh SQL Statement count moet 1 zijn';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset is niet in edit of insert modus';
  cSFieldTypeMismatch = 'Type mismatch voor veld ''%s'', verwacht: %s actueel: %s';
  cSFieldSizeMismatch = 'Size mismatch voor veld ''%s'', verwacht: %d actueel: %d';
  {$ENDIF}
  cSNeedField               = 'Veld %s is verplicht, maar niet ingevuld.';

  cSFailedtoInitPrepStmt   = 'Initialisatie van Prepared statement mislukt';
  cSFailedtoPrepareStmt    = 'Statement mislukt tijdens prepare';
  cSFailedToBindAllValues  = 'Pre-bind van alle waarden is mislukt';
  cSAttemptExecOnBadPrep   = 'Poging om een statement uit te voeren voor een succesvolle prepare';
  cSBindingFailure         = 'Binding van parameterset mislukt';
  cSPreparedStmtExecFailure = 'Uitvoeren van Prepared statement mislukt';
  cSBoundVarStrIndexMissing = 'Tekst index van bound variable bestaat niet: "%s"';
  cSBindVarOutOfRange      = 'Bound variable index buiten bereik: %d';
  cSFailedToBindResults    = 'Binding van resultaat mislukt';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'De refreshrow methode is enkel ondersteund vooreen update object';
  cSMustBeInBrowseMode = 'Bewerking is enkel toegestaan in dsBROWSE status';

  cSUnKnownParamDataType = 'Param.DataType is onbekend';
  cSFieldReadOnly        = 'Readonly veld kan geen waarde toegewezen krijgen: %d';
  cSInvalidUpdateCount     = '%d record(s) gewijzigd. Slechts 1 record had gewijzigd mogen zijn.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}
// <- ms, 09/05/2005

// -> ms, 03/05/2005
{$IFDEF GERMAN}
  cSSQLError1 = 'SQL Fehler: %s';
  cSSQLError2 = 'SQL Fehler: %s Code: %d';
  cSSQLError3 = 'SQL Fehler: %s '+LineEnding+'Code: %d SQL: %s';
  cSSQLError4 = 'SQL Fehler: %s '+LineEnding+'Code: %d Meldung: %s';

  cSListCapacityError = 'Die Listenkapazitдt ьbersteigt die definierte Grenze (%d)';
  cSListCountError = 'Der Listenzдhler ist auЯerhalb seiner definierten Grenzen (%d)';
  cSListIndexError = 'Der Listenindex ist auЯerhalb der definierten Grenzen (%d)';

  cSClonningIsNotSupported = 'Diese Klasse kann nicht geklont werden';
  cSImmutableOpIsNotAllowed = 'Diese Operation ist bei nicht дnderbaren Collections nicht erlaubt';
  cSStackIsEmpty = 'Der Stack ist leer';
  cSVariableWasNotFound = 'Die Variable "%s" wurde nicht gefunden';
  cSFunctionWasNotFound = 'Die Funktion "%s" wurde nicht gefunden';
  cSInternalError = 'Interner Fehler';
  cSSyntaxErrorNear = 'Syntax Fehler bei "%s"';
  cSSyntaxError = 'Syntax Fehler';
  cSUnknownSymbol = 'Unbekanntes Symbol "%s"';
  cSUnexpectedExprEnd = 'Unerwartetes Ende des Ausdrucks';
  cSRightBraceExpected = ') erwartet';
  cSParametersError = 'Es werden %d Parameter erwartet, aber nur %d Parameter gefunden';
  cSParamValueExceeded = 'Daten des Parameters %d zu groЯ.';
  cSExpectedMoreParams = 'Es werden mehr als zwei Parameter erwartet';
  cSInvalidVarByteArray = 'Ungьltiges VarByte Array';
  cSVariableAlreadyExists = 'Die Variable "%s" existiert bereits';
  cSTypesMismatch = 'Inkompatible Typen';
  cSUnsupportedVariantType = 'Nicht unterstьtzter Variant-Typ';
  cSUnsupportedOperation = 'Nicht unterstьtzte Operation';
  cSUnsupportedByDriver    = 'Der Treiber unterstьtzt dieses Feature nicht von haus aus: [%s]';

  cSTokenizerIsNotDefined = 'Tokenizer wurde nicht definiert';
  cSLibraryNotFound = 'Es wurde keine der in %s gelisteten DLL''s gefunden';

  cSCanNotRetrieveResultSetData = 'Die Ergebnismenge kann nicht ermittelt werden';
  cSRowBufferIsNotAssigned = 'Der Zeilen-Buffer ist nicht zugewiesen';
  cSColumnIsNotAccessable = 'Auf die Spalte (Tabellenfeld) mit dem Index %d kann nicht zugegriffen werden';
  cSConvertionIsNotPossible = 'Eine Konvertierung der Spalte (Tabellenfeld) %d von %s bis %s kann nicht durchgefьhrt werden';
  cSCanNotAccessBlobRecord = 'Auf den BLOB-Datensatz in Spalte (Tabellenfeld) %d vom Typ %s kann nicht zugegriffen werden';
  cSRowDataIsNotAvailable = 'Die Zeilendaten (Datensatzdaten) sind nicht verfьgbar';
  cSResolverIsNotSpecified = 'Fьr diese Ergebnismenge wurde kein sog. "Resolver" angegeben';
  cSResultsetIsAlreadyOpened = 'Die Ergebnismenge ist bereits geцffnet';
  cSCanNotUpdateEmptyRow = 'Eine leere Datenzeile kann nicht aktualisiert werden';
  cSCanNotUpdateDeletedRow = 'Eine gelцschte Datenzeile kann nicht aktualisiert werden';
  cSCanNotDeleteEmptyRow = 'Eine leere Datenzeile kann nicht gelцscht werden';
  cSCannotUseCommit = 'COMMIT kann im AUTOCOMMIT-Modus nicht verwendet werden';
  cSCannotUseRollBack = 'ROLLBACK kann im AUTOCOMMIT-Modus nicht verwendet werden';
  cSCanNotUpdateComplexQuery = 'Ein Query, dessen Ergebnismenge aus mehr als einer Tabelle stammt, kann nicht aktualisiert werden';
  cSCanNotUpdateThisQueryType = 'Diese Art von Queries kann nicht aktualisiert werden';
  cSDriverWasNotFound = 'Der angegebene Datenbanktreiber wurde nicht gefunden';
  cSCanNotConnectToServer = 'Kann keine Verbindung zum SQL Server herstellen';
  cSTableIsNotSpecified = 'Tabelle ist nicht spezifiziert';
  cSLiveResultSetsAreNotSupported = 'Ein "Live Query" wird von dieser Klasse nicht unterstьtzt';
  cSInvalidInputParameterCount = 'Es wurden weniger Eingabeparameter angegeben, als erwartet';
  cSIsolationIsNotSupported = 'Der gewдhlte Trasaktions-Isolationslevel wird nicht unterstьtzt';
  cSColumnWasNotFound = 'Eine Tabellenspalte namens "%s" wurde nicht gefunden';
  cSWrongTypeForBlobParameter = 'Falscher Typ fьr einen BLOB-Parameter';
  cSIncorrectConnectionURL = 'Falsche Verbindungs-URL: %s';
  cSUnsupportedProtocol = 'Nicht unterstьtztes Protokoll: %s';

  cSConnectionIsNotOpened = 'Die Verbindung zur Datenbank ist noch nicht hergestellt';
  cSConnectionIsOpened = 'Die Verbindung zur Datenbank ist bereits hergestellt';
  cSInvalidOpInAutoCommit = 'Ungьltige Operation im AUTOCOMMIT-Modus';
  cSInvalidOpInNonAutoCommit = 'Ungьltige Operation auЯerhalb des AUTOCOMMIT-Modus';
  cSInvalidOpPrepare = 'Transaktion vorzubereiten ist nur beim ersten Aufruf von Starttransaction mцglich!';

  cSConnectionIsNotAssigned = 'Die Datenbank-Verbindungskomponente ist nicht angegeben';
  cSQueryIsEmpty = 'SQL Query leer';
  cSCanNotExecuteMoreQueries = 'Mehr als ein Query kann nicht abgearbeitet werden';
  cSOperationIsNotAllowed1 = 'Die Operation ist im FORWARD ONLY Modus nicht erlaubt';
  cSOperationIsNotAllowed2 = 'Die Operation ist im READ ONLY Modus nicht erlaubt';
  cSOperationIsNotAllowed3 = 'Die Operation ist im %s Modus nicht erlaubt';
  cSOperationIsNotAllowed4 = 'Die Operation ist bei einem geschlossenen DataSet nicht erlaubt';
  cSNoMoreRecords = 'Es gibt keine weiteren Datensдtze in der Ergebnismenge';
  cSCanNotOpenResultSet = 'Die Ergebnismenge kann nicht geцffnet werden';
  cSCanNotOpenDataSetWhenDestroying ='Dataset kann nicht im Komponenten-Status dsDestroying geцffnet werden';
  cSCircularLink = 'Die DataSource hat einen zirkulдren Verweis';
  cSBookmarkWasNotFound = 'Das Lesezeichen (Bookmark) wurde nicht gefunden';
  cSIncorrectSearchFieldsNumber = 'Die Anzahl der Suchfeldwerte ist nicht korrekt';
  cSInvalidOperationInTrans = 'Ungьltige Operatio im Zustand einer expliziten Transaktion';
  cSIncorrectSymbol = 'Falsches Symbol in der Feldliste "%s".';
  cSIncorrectToken = 'Falsches Token gefolgt von ":"';
  cSIncorrectParamChar = 'Ungьltiger Wert fьr Parameter-Indikator';

  cSSelectedTransactionIsolation = 'Der gewдhlte Transaktions-Isolationslevel wird nicht unterstьtzt';
  cSDriverNotSupported = 'Der Treiber wird nicht unterstьtzt: %s';
  cSPattern2Long = 'Das Muster (Pattern) ist zu lang';
  cSDriverNotCapableOutParameters = 'Der Treiber beherrscht keine Parameter';
  cSStatementIsNotAllowed = 'Diese Anweisung ist nicht erlaubt';
  cSStoredProcIsNotAllowed = 'Diese Stored Procedure ist nicht erlaubt';
  cSCannotPerformOperation = 'Auf eine geschlossene Ergebnismenge kцnnen keine Operationen ausgefьhrt werden';
  cSInvalidState = 'Ungьltiger Status';
  cSErrorConvertion = 'Konvertierungsfehler';
  cSDataTypeDoesNotSupported = 'Der Datentyp wird nicht unterstьtzt';
  cSUnsupportedParameterType = 'Der Parametertyp wird nicht unterstьtzt';
  cSUnsupportedDataType = 'Der Datentyp wird nicht unterstьtzt';
  cSErrorConvertionField = 'Konvertierungsfehler bei Feld "%s" nach SQL-Typ "%s"';
  cSBadOCI = 'Die OCI Version 8.0.3 (oder дlter) wird benцtigt! Aktuelle Version: %s';
  cSConnect2AsUser = 'Verbinde zu "%s" als User "%s"';
  cSConnect2WinAuth = 'Verbinde zu "%s" mit Windows-Authentifizierung';
  cSUnknownError = 'Unbekannter Fehler';
  cSFieldNotFound1 = 'Das Feld "%s" wurde nicht gefunden';
  cSFieldNotFound2 = 'Das Feld %d wurde nicht gefunden';

  cSLoginPromptFailure = 'Der Standard-Login-Dialog konnte nicht gefunden werden. Bitte DBLogDlg in die USES-Sektion der Haupt-Unit hinzufьgen';

  cSPropertyQuery = 'Die Abfrage kann bei groЯen Datenbanken eine Weile dauern!';
  cSPropertyTables = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschrдnkt werden.';
  cSPropertyColumns = 'Sie sollte durch die Angabe von Catalog, Schema und/oder Tabellenname eingeschrдnkt werden.';
  cSPropertyProcedures = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschrдnkt werden.';
  cSPropertySequences = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschrдnkt werden.';
  cSPropertyExecute = 'Soll die Abfrage trotzdem ausgefьhrt werden?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&SchlieЯen';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'SQL aus&wдhlen';
  cSMenuLoad = 'Цffnen';
  cSMenuSave = 'Speichern';
  cSButtonGenerate = '&Generieren';
  cSButtonCheck = 'Syntax &Prьfen';
  cSButtonTest = 'Befehl &Testen';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Abbruch';
  cSTableAlias = 'Tabllen-Alias';
  cSReplaceSQL = 'SQL &ersetzen';
  cSDialogOpenTitle = 'SQL Script цffnen';
  cSDialogSaveTitle = 'SQL Script speichern';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Existierende Datenbank цffnen';

  cSUpdateSQLNoResult = 'Translate : Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Translate : Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'Das DataSet ist nicht im "Дndern" oder "Einfьge" Modus.';
  cSFieldTypeMismatch = 'Der Typ fьr Feld ''%s'' stimmt nicht. Erwartet wird %s der Typ ist aber momentan %s';
  cSFieldSizeMismatch = 'Die GrцЯe des Feldes ''%s'' stimmt nicht. Erwartet wird  %d die GrцЯe ist aber momentan %d';
  {$ENDIF}
  cSNeedField               = 'Feld %s benцtigt einen Wert, welcher nicht zugewiesen wurde.';

  cSFailedtoInitPrepStmt   = 'Die Initialisierung fьr vorbereitete Abfrage ist gescheitert';
  cSFailedtoPrepareStmt    = 'Abfrage ist wдrend des Vorbereitungsprozesses gescheitert.';
  cSFailedToBindAllValues  = 'Anwendung konnte nicht alle Werte ьbergeben';
  cSAttemptExecOnBadPrep   = 'Es wurde versucht eine nicht erfolgreich vorbereitete Abfrage auszufьhren';
  cSBindingFailure         = 'Konnte nicht alle ausgewдhlten Parameter der Abfrage binden';
  cSPreparedStmtExecFailure = 'Vorbeitet Abfrage scheiterte beim Ausfьhren';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'Unbekannter Parameter-Datentyp';
  cSFieldReadOnly          = 'Einem "Nur-Lesen" Feld kann kein Wert zugewiesen werden: %d';
  cSInvalidUpdateCount     = '%d Datensдtze geдndert. Exakt ein Datensatz sollte geдndert werden.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}
  // -> fduenas, 28/06/2005
{$IFDEF SPANISH} //Spanish translations
  cSSQLError1 = 'Error SQL: %s';
  cSSQLError2 = 'Error SQL: %s Cуdigo: %d';
  cSSQLError3 = 'Error SQL: %s '+LineEnding+'Cуdigo: %d SQL: %s';
  cSSQLError4 = 'Error SQL: %s '+LineEnding+'Cуdigo: %d Mensage: %s';

  cSListCapacityError = 'List capacity fuera de lнmites (%d)';
  cSListCountError = 'List count fuera de lнmites (%d)';
  cSListIndexError = 'List index fuera de lнmites (%d)';

  cSClonningIsNotSupported = 'La Clonaciуn no estб soportada por esta clase';
  cSImmutableOpIsNotAllowed = 'Operaciуn no permitida en colecciones no modificables';
  cSStackIsEmpty = 'La Pila (Stack) estб vacнa';
  cSVariableWasNotFound = 'Variable "%s" no encontrada';
  cSFunctionWasNotFound = 'Funciуn "%s" no encontrada';
  cSInternalError = 'Error interno';
  cSSyntaxErrorNear = 'Error de sintaxis cerca de "%s"';
  cSSyntaxError = 'Error de sintaxis';
  cSUnknownSymbol = 'Sнmbolo "%s" desconocido';
  cSUnexpectedExprEnd = 'Fin de expresiуn inesperado';
  cSRightBraceExpected = ') esperado';
  cSParametersError = 'Se esperaban %d parбmetros pero solo %d fueron encontrados';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Se esperaban mбs de dos parбmetros';
  cSInvalidVarByteArray = 'Arreglo VarByte invбlido';
  cSVariableAlreadyExists = 'La variable "%s" ya existe';
  cSTypesMismatch = 'Los Tipos no coinciden';
  cSUnsupportedVariantType = 'Tipo de Variant no soportando';
  cSUnsupportedOperation = 'Operaciуn no soportada';

  cSTokenizerIsNotDefined = 'El objeto Tokenizer no estб definido';
  cSLibraryNotFound = 'Ninguna librerнa dinбmica de la lista %s fue encontrada';

  cSCanNotRetrieveResultSetData = 'No se pueden obtener datos del Resultset';
  cSRowBufferIsNotAssigned = 'Buffer de lнnea no asignado';
  cSColumnIsNotAccessable = 'La columna con нndice %d no estб accesible';
  cSConvertionIsNotPossible = 'La conversiуn no es posible para la columna %d de %s a %s';
  cSCanNotAccessBlobRecord = 'No se puede accesar al registro del blob en la columna %d con tipo %s';
  cSRowDataIsNotAvailable = 'Datos de lнnea no disponibles';
  cSResolverIsNotSpecified = 'El objeto Resolver no estб especificado para este ResultSet';
  cSResultsetIsAlreadyOpened = 'El Resultset ya estб abierto';
  cSCanNotUpdateEmptyRow = 'No se puede actualizar una lнnea vacнa';
  cSCanNotUpdateDeletedRow = 'No se puede actualizar una lнnea borrada';
  cSCanNotDeleteEmptyRow = 'No se puede borrar una lнnea vacнa';
  cSCannotUseCommit = 'No se puede usar COMMIT en modo AUTOCOMMIT';
  cSCannotUseRollBack = 'No se puede usar ROLLBACK en modo AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'No se puede actualizar una consulta compleja que haga referencia a mбs de una tabla';
  cSCanNotUpdateThisQueryType = 'No se puede actualizar este tipo de consulta';
  cSDriverWasNotFound = 'No se encontrу el controlador de base de datos solicitado';
  cSCanNotConnectToServer = 'No puede conectarse al servidor SQL';
  cSTableIsNotSpecified = 'La Tabla no estб especificada';
  cSLiveResultSetsAreNotSupported = 'La consulta actualizable no es soportada por esta clase';
  cSInvalidInputParameterCount = 'El nъmero de parбmetros de tipo Input es menor al esperado';
  cSIsolationIsNotSupported = 'Nivel de aislamiento de transacciуn no soportado';
  cSColumnWasNotFound = 'Columna con nombre "%s" no encontrada';
  cSWrongTypeForBlobParameter = 'Tipo incorrecto para el parбmetro Blob';
  cSIncorrectConnectionURL = 'URL de conexiуn incorrecta: %s';
  cSUnsupportedProtocol = 'Protocolo no soportado: %s';
  cSUnsupportedByDriver    = 'Translate: Driver can not support this feature natively: [%s]';

  cSConnectionIsNotOpened = 'La conexiуn no ha sido abierta todavнa';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Operaciуn invбlida en modo AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Operaciуn invбlida en modo No-AutoCommit';
  cSInvalidOpPrepare = 'Translate : Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'El componente de conexiуn a base de datos no estб asigando';
  cSQueryIsEmpty = 'La Consulta SQL estб vacнa';
  cSCanNotExecuteMoreQueries = 'No se puede ejecutar mбs de una consulta';
  cSOperationIsNotAllowed1 = 'Operaciуn no permitida en modo FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operaciуn no permitida en modo READ ONLY (Solo lectura)';
  cSOperationIsNotAllowed3 = 'Operaciуn no permitida en modo %s';
  cSOperationIsNotAllowed4 = 'Operaciуn no permitida en un dataset cerrado';
  cSNoMoreRecords = 'No hay mбs registros en el Resultset';
  cSCanNotOpenResultSet = 'No se puede abrir el Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource hace una referencia cнclica';
  cSBookmarkWasNotFound = 'Bookmark no encontrado';
  cSIncorrectSearchFieldsNumber = 'Nъmero incorrecto de valores de bъsqueda';
  cSInvalidOperationInTrans = 'Operaciуn invбlida en modo de transacciуn explнcita';
  cSIncorrectSymbol = 'Sнmbolo incorrecto en la lista de campos "%s".';
  cSIncorrectToken = 'Token incorrecto seguido de ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'El Nivel seleccionado de aislamiento de transacciуn no estб soportado';
  cSDriverNotSupported = 'Controlador %s no soportado';
  cSPattern2Long = 'Patrуn de bъsqueda demasiado largo';
  cSDriverNotCapableOutParameters = 'El controlador no tiene cualidades para manejar parбmetros';
  cSStatementIsNotAllowed = 'Sentencia no permitida';
  cSStoredProcIsNotAllowed = 'El procedimiento alamacenado no estб permitido';
  cSCannotPerformOperation = 'No se puede efectuar la operaciуn en un resultset cerrado';
  cSInvalidState = 'Estado Invбlido';
  cSErrorConvertion = 'Error de conversiуn';
  cSDataTypeDoesNotSupported = 'Tipo de datos no soportado';
  cSUnsupportedParameterType = 'Tipo de parбmetro no soportado';
  cSUnsupportedDataType = 'Tipo de datos no soportado';
  cSErrorConvertionField = 'Error de conversiуn del campo "%s" al Tipo SQL "%s"';
  cSBadOCI = 'Versiуn de OCI [%s] no aceptable. Se requiere versiуn 8.0.3 o menor';
  cSConnect2AsUser = 'Conectando a "%s" como usuario "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Error desconocido';
  cSFieldNotFound1 = 'Campo "%s" no encontrado';
  cSFieldNotFound2 = 'Campo %d no encontrado';

  cSLoginPromptFailure = 'Cuadro de Diбlogo por omisiуn para autenticaciуn no encontrado.'+#10#13+
                        'Por favor agregue la unidad DBLogDlg a la secciуn uses de la unidad principal de su proyecto.';

  cSPropertyQuery = 'ЎLa Consulta puede tardar un poco en bases de datos extensas!';
  cSPropertyTables = 'Deberнa limitarlas mediante Catalog y/o Schema.';
  cSPropertyColumns = 'Deberнa limitarlas mediante Catalog, Schema y/o TableName.';
  cSPropertyProcedures = 'Deberнa limitarlos mediante Catalog y/or Schema.';
  cSPropertySequences = 'Deberнa limitarlos mediante Catalog y/or Schema.';
  cSPropertyExecute = 'їDesea ejecutar la consulta de todos modos?';

  cSFormTest = 'Prueba del Editor ZEOS SQL';
  cSButtonClose = '&Cerrar';
  cSFormEditor = 'Editor ZEOS SQL';
  cSTabSheetSelect = 'Seleccionar SQL';
  cSMenuLoad = 'Cargar...';
  cSMenuSave = 'Guardar...';
  cSButtonGenerate = '&Generar';
  cSButtonCheck = 'C&hecar';
  cSButtonTest = 'Pro&bar';
  cSButtonOk = '&Aceptar';
  cSButtonCancel = '&Cancelar';
  cSTableAlias = 'A&lias de la tabla';
  cSReplaceSQL = '&Reemplazar SQL';
  cSDialogOpenTitle = 'Abrir archivo SQL';
  cSDialogSaveTitle = 'Guardar archivo SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Abrir base de datos existente';

  cSUpdateSQLNoResult = 'Translate : Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Translate : Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'El Dataset no se encuentra en modo de ediciуn o inserciуn';
  cSFieldTypeMismatch = 'El Tipo de dato no coincide para el campo ''%s'', se espera: %s, actual: %s';
  cSFieldSizeMismatch = 'El Tamaсo de dato no coincide para el campo ''%s'', se espera: %d, actual: %d';
  {$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Translate: Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Translate: Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Translate: Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Translate: Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Translate: Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Translate: Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'TRANSLATE: Unknown Param.DataType';
  cSFieldReadOnly          = 'Translate : Readonly field can''t be assigned a value: %d';
  cSInvalidUpdateCount     = 'Translate : %d record(s) updated. Only one record should have been updated.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}

{$IFDEF ROMANA}

  SSQLError1 = 'SQL Eroare: %s';
  cSSQLError2 = 'SQL Eroare: %s Cod: %d';
  cSSQLError3 = 'SQL Eroare: %s '+LineEnding+'Cod: %d SQL: %s';
  cSSQLError4 = 'SQL Eroare: %s '+LineEnding+'Cod: %d Mesaj: %s';

  cSListCapacityError = 'Capacitatea listei este оn afara limitelor (%d)';
  cSListCountError = 'Contorul listei este оn afara limitelor (%d)';
  cSListIndexError = 'Indexul listei este оn afara limitelor (%d)';

  cSClonningIsNotSupported = 'Clonning nu este suportat de aceastг clasг';
  cSImmutableOpIsNotAllowed = 'Operaюia nu este permisг ori colecюia nu este modificabilг';
  cSStackIsEmpty = 'Stiva este goalг';
  cSVariableWasNotFound = 'Variabila "%s" nu a fost gгsitг';
  cSFunctionWasNotFound = 'Funcюia "%s" nu a fost gгsitг';
  cSInternalError = 'Eroare Internг';
  cSSyntaxErrorNear = 'Eroare de sintaxг lвngг "%s"';
  cSSyntaxError = 'Eroare de sintaxг';
  cSUnknownSymbol = 'Simbol necunoscut "%s"';
  cSUnexpectedExprEnd = 'Final neaєteptat pentru expresie';
  cSRightBraceExpected = ') aєteptat';
  cSParametersError = 'parametrul %d a fost aєteptat dar %d a fost gгsit';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Mai nult de doi parametrii sunt aєteptaюi';
  cSInvalidVarByteArray = 'Arie VarByte invalidг';
  cSVariableAlreadyExists = 'Variabila "%s" deja existг';
  cSTypesMismatch = 'Tip nepotrivit';
  cSUnsupportedVariantType = 'Tip variant neasteptat';
  cSUnsupportedOperation = 'Operaюie nesuportatг';

  cSTokenizerIsNotDefined = 'Simbolistica nu este definitг';
  cSLibraryNotFound = 'None of the dynamic libraries can be found: %s';

  cSCanNotRetrieveResultSetData = 'Nu pot returna  Resultset data';
  cSRowBufferIsNotAssigned = 'Row buffer nu este asignat';
  cSColumnIsNotAccessable = 'Column with index %d nu este accesibil';
  cSConvertionIsNotPossible = 'Conversia nu este posibilг pentru coloana %d din %s оn %s';
  cSCanNotAccessBlobRecord = 'Nu pot aceesa оnregistrarea blob оn coloana %d cu tipul %s';
  cSRowDataIsNotAvailable = 'Row data nu este disponibil';
  cSResolverIsNotSpecified = 'Resolver nu este specificat pentru acest ResultSet';
  cSResultsetIsAlreadyOpened = 'Resultset este deja deschisг';
  cSCanNotUpdateEmptyRow = 'Nu pot updata o оnregistrare goalг';
  cSCanNotUpdateDeletedRow = 'Nu pot updata o оnregistrare єtearsг';
  cSCanNotDeleteEmptyRow = 'Nu pot єterge o оnregistrare goalг';
  cSCannotUseCommit = 'Nu poюi folosi COMMIT оn modul AUTOCOMMIT ';
  cSCannotUseRollBack = 'Nu poюi folosi ROLLBACK оn modul AUTOCOMMIT ';
  cSCanNotUpdateComplexQuery = 'Nu pot updata un query complex cu mai mult de un tabel';
  cSCanNotUpdateThisQueryType = 'Nu pot updata acest tip de query';
  cSDriverWasNotFound = 'Driverul pentru baza de date nu a fost gгsit';
  cSCanNotConnectToServer = 'Nu ma pot conecta la serverul SQL';
  cSTableIsNotSpecified = 'Tbelul nu este specificat';
  cSLiveResultSetsAreNotSupported = 'Live query is not supported by this class';
  cSInvalidInputParameterCount = 'Input parameter count is less then expected';
  cSIsolationIsNotSupported = 'Transaction isolation level nu este suportat';
  cSColumnWasNotFound = 'Coloana cu numele "%s" nu a fost fгsitг';
  cSWrongTypeForBlobParameter = 'Tip greєit pentru parametru Blob';
  cSIncorrectConnectionURL = 'Conexiune URL incorectг: %s';
  cSUnsupportedProtocol = 'Protocol nesuportat: %s';
  cSUnsupportedByDriver    = 'Driver nu poate suporta aceastг facilitate : [%s]';

  cSConnectionIsNotOpened = 'Conexiune nu este deschisг incг';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Operaюie invalidг оn modul AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Operaюie invalidг оn modul non AutoCommit ';
  cSInvalidOpPrepare = 'Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Nu este asignatг o componentг Database connection';
  cSQueryIsEmpty = 'SQL Query este gol';
  cSCanNotExecuteMoreQueries = 'Nu pot executa mai mult de un query';
  cSOperationIsNotAllowed1 = 'Operaюia nu este permisг оn modul FORWARD ONLY ';
  cSOperationIsNotAllowed2 = 'Operaюia nu este permisг оn modul READ ONLY';
  cSOperationIsNotAllowed3 = 'Operaюia nu este permisг оn modul %s ';
  cSOperationIsNotAllowed4 = 'Operaюia nu este permisг pentru оn dataset оnchis';
  cSNoMoreRecords = 'Nu mai sunt оnregistrгri оn Resultset';
  cSCanNotOpenResultSet = 'Nu pot deschide Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource makes a circular link';
  cSBookmarkWasNotFound = 'Bookmark nu a fost gгsit';
  cSIncorrectSearchFieldsNumber = 'Numгr incorect of search field values';
  cSInvalidOperationInTrans = 'Operaюie invalidг оn modul explicit transaction';
  cSIncorrectSymbol = 'Simbol incorect оn lista de cвmpuri  "%s".';
  cSIncorrectToken = 'Incorect token dupг ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Selected transaction isolation level is not supported';
  cSDriverNotSupported = 'Driver nesuportat %s';
  cSPattern2Long = 'Pattern is too long';
  cSDriverNotCapableOutParameters = 'Driver nu este capabil sг mвnuie parametrii';
  cSStatementIsNotAllowed = 'Statement nu sunt permise';
  cSStoredProcIsNotAllowed = 'The stored proc nu sunt permise';
  cSCannotPerformOperation = 'Nu se pot face operaюii cu Resultset оnchis';
  cSInvalidState = 'Stare invalidг';
  cSErrorConvertion = 'Eroare de conversie';
  cSDataTypeDoesNotSupported = 'Tip de datг nesuportat';
  cSUnsupportedParameterType = 'Tip parametru nesuportat';
  cSUnsupportedDataType = 'Tip datг nesuportat';
  cSErrorConvertionField = 'Eroare de conversie pentru cвmpul "%s" оn TipSQL "%s"';
  cSBadOCI = 'Bad OCI version [%s]. Version 8.0.3 or older is required';
  cSConnect2AsUser = 'Conectare la "%s" ca utlizator "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Eroare necunoscutг';
  cSFieldNotFound1 = 'Cвmpul "%s" nu a fost gгsit';
  cSFieldNotFound2 = 'Cвmpul %d nu a fost gгsit';

  cSLoginPromptFailure = 'Nu gгsesc fereastra de dialog implicitг pentru login. Vг rog adгugaюi DBLogDlg оn secюiunea uses.';

  cSPropertyQuery = 'The Query may last a while on large databases!';
  cSPropertyTables = 'You should limit it by Catalog and/or Schema.';
  cSPropertyColumns = 'You should limit it by Catalog, Schema and/or TableName.';
  cSPropertyProcedures = 'You should limit it by Catalog and/or Schema.';
  cSPropertySequences = 'You should limit it by Catalog and/or Schema.';
  cSPropertyExecute = 'Query va fi executatг oricum?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = 'Оn&chide';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Deschide';
  cSMenuSave = 'Salvare';
  cSButtonGenerate = '&Generare';
  cSButtonCheck = 'Verificare';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'Revo&care';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Replace SQL';
  cSDialogOpenTitle = 'Deschide Fiєier SQL';
  cSDialogSaveTitle = 'Salveazг Fiєier SQL';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Deschide bazг date existentг';

  cSUpdateSQLNoResult = '"Update Refresh SQL" furnizat nu este un recordset';
  cSUpdateSQLRefreshStatementcount ='Declaraюia "Update Refresh SQL" ca numгr trebuie sг fie una';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset nu este оn modul de editare sau inserare';
  cSFieldTypeMismatch = 'Tip nepotrivit pentru cвmpul ''%s'', aєteptat: %s actual: %s';
  cSFieldSizeMismatch = 'Dimensiune nepotrivitг pentru cвmpul  ''%s'', aєteptat: %d actual: %d';
  {$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Translate: Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Translate: Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Translate: Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Translate: Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Translate: Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Translate: Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'TRANSLATE: Unknown Param.DataType';

  // <-- added by tohenk
  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
  {$ELSE}
  {$IFDEF INDONESIAN}
  cSSQLError1 = 'Kesalahan SQL: %s';
  cSSQLError2 = 'Kesalahan SQL: %s Kode: %d';
  cSSQLError3 = 'Kesalahan SQL: %s '+LineEnding+'Kode: %d SQL: %s';
  cSSQLError4 = 'Kesalahan SQL: %s '+LineEnding+'Kode: %d Pesan: %s';

  cSListCapacityError = 'Kapasitas List diluar jangkauan (%d)';
  cSListCountError = 'Jumlah List diluar jangkauan (%d)';
  cSListIndexError = 'Indeks List diluar jangkauan (%d)';

  cSClonningIsNotSupported = 'Class ini tidak mendukung kloning';
  cSImmutableOpIsNotAllowed = 'Operasi tidak diperkenankan pada koleksi yang tidak dapat diubah';
  cSStackIsEmpty = 'Stack kosong';
  cSVariableWasNotFound = 'Variabel "%s" tidak ada';
  cSFunctionWasNotFound = 'Fungsi "%s" tidak ada';
  cSInternalError = 'Kesalahan internal';
  cSSyntaxErrorNear = 'Kesalahan Syntax di dekat "%s"';
  cSSyntaxError = 'Kesalahan Syntax';
  cSUnknownSymbol = 'Simbol tidak dikenali "%s"';
  cSUnexpectedExprEnd = 'Tidak dibutuhkan, akhir dari ekspresi';
  cSRightBraceExpected = ') dibutuhkan';
  cSParametersError = '%d parameter dibutuhkan tapi terdapat %d parameter';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Dibutuhkan lebih dari dua parameter';
  cSInvalidVarByteArray = 'array VarByte tidak valid';
  cSVariableAlreadyExists = 'Variabel "%s" sudah ada';
  cSTypesMismatch = 'Tipe tidak sesuai';
  cSUnsupportedVariantType = 'Tipe variant tidak didukung';
  cSUnsupportedOperation = 'Operasi tidak didukung';

  cSTokenizerIsNotDefined = 'Tokenizer belum ditentukan';
  cSLibraryNotFound = 'Tidak ada library ditemukan: %s';

  cSCanNotRetrieveResultSetData = 'Tidak dapat mengambil data Resultset';
  cSRowBufferIsNotAssigned = 'Row buffer tidak disediakan';
  cSColumnIsNotAccessable = 'Kolom dengan indeks %d tidak dapat diakses';
  cSConvertionIsNotPossible = 'Konversi tidak dimungkinkan pada kolom %d dari %s ke %s';
  cSCanNotAccessBlobRecord = 'Tidak dapat mengakses rekord `blob` pada kolom %d dengan tipe %s';
  cSRowDataIsNotAvailable = 'Data Row tidak tersedia';
  cSResolverIsNotSpecified = 'Resolver belum ditentukan pada ResultSet ini';
  cSResultsetIsAlreadyOpened = 'Resultset sudah terbuka';
  cSCanNotUpdateEmptyRow = 'Tidak dapat meng-update row kosong';
  cSCanNotUpdateDeletedRow = 'Tidak dapat meng-update row terhapus';
  cSCanNotDeleteEmptyRow = 'Tidak dapat meng-hapus row kosong';
  cSCannotUseCommit = 'COMMIT tidak dapat digunakan pada mode AUTOCOMMIT';
  cSCannotUseRollBack = 'ROLLBACK tidak dapat digunakan pada mode AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Tidak dapat meng-update query kompleks dengan lebih dari satu tabel';
  cSCanNotUpdateThisQueryType = 'Tidak dapat meng-update query dengan tipe ini';
  cSDriverWasNotFound = 'Driver database yang diminta tidak ada';
  cSCanNotConnectToServer = 'Tidak dapat terhubung ke server SQL';
  cSTableIsNotSpecified = 'Tabel belum ditentukan';
  cSLiveResultSetsAreNotSupported = 'Live query tidak didukung oleh Class ini';
  cSInvalidInputParameterCount = 'Jumlah parameter Input kurang dari yang dibutuhkan';
  cSIsolationIsNotSupported = 'Level Isolasi Transaksi tidak didukung';
  cSColumnWasNotFound = 'Kolom dengan nama "%s" tidak ada';
  cSWrongTypeForBlobParameter = 'Salah tipe untuk parameter Blob';
  cSIncorrectConnectionURL = 'Salah koneksi URL: %s';
  cSUnsupportedProtocol = 'Protokol tidak didukung: %s';
  cSUnsupportedByDriver    = 'Driver tidak mendukung fitur: [%s]';

  cSConnectionIsNotOpened = 'Koneksi belum dibuka';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Operasi tidak valid pada mode AUTOCOMMIT';
  cSInvalidOpInNonAutoCommit = 'Operasi tidak valid pada mode non AUTOCOMMIT';
  cSInvalidOpPrepare = 'Persiapan transaksi hanya mungkin pada (!) Starttransaction pertama';

  cSConnectionIsNotAssigned = 'Komponen koneksi Database tidak ditentukan';
  cSQueryIsEmpty = 'Query SQL kosong';
  cSCanNotExecuteMoreQueries = 'Tidak dapat meng-eksekusi lebih dari satu query';
  cSOperationIsNotAllowed1 = 'Operasi tidak diperkenankan pada mode FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operasi tidak diperkenankan pada mode READ ONLY';
  cSOperationIsNotAllowed3 = 'Operasi tidak diperkenankan pada mode %s';
  cSOperationIsNotAllowed4 = 'Operasi tidak diperkenankan pada dataset tertutup';
  cSNoMoreRecords = 'Tidak ada rekord lagi pada Resultset';
  cSCanNotOpenResultSet = 'Tidak dapat membuka Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Terjadi hubungan Datasource circular';
  cSBookmarkWasNotFound = 'Bookmark tidak ada';
  cSIncorrectSearchFieldsNumber = 'Salah jumlah nilai field pada pencarian';
  cSInvalidOperationInTrans = 'Operasi tidak valid pada mode explicit transaction';
  cSIncorrectSymbol = 'Simbol salah pada daftar field "%s".';
  cSIncorrectToken = 'Token salah setelah ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Level Isolasi Transaksi terpilih tidak didukung';
  cSDriverNotSupported = 'Driver tidak mendukung %s';
  cSPattern2Long = 'Pola terlalu panjang';
  cSDriverNotCapableOutParameters = 'Driver tidak mampu menangani parameter';
  cSStatementIsNotAllowed = 'Statement tidak diperbolehkan';
  cSStoredProcIsNotAllowed = 'StoredProc tidak diperbolehkan';
  cSCannotPerformOperation = 'Tidak dapat melakukan operasi pada Resultset tertutup';
  cSInvalidState = 'Sate tidak valid';
  cSErrorConvertion = 'Kesalahan konversi';
  cSDataTypeDoesNotSupported = 'Tipe Data tidak didukung';
  cSUnsupportedParameterType = 'Tidak mendukung tipe parameter';
  cSUnsupportedDataType = 'Tidak mendukung tipe data';
  cSErrorConvertionField = 'Kesalahan konversi field "%s" ke Tipe SQL "%s"';
  cSBadOCI = 'OCI version [%s] tidak sah. Dibutuhkan versi 8.0.3 atau terdahulu';
  cSConnect2AsUser = 'Koneksi ke "%s" dengan user "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Kesalahan tidak diketahui';
  cSFieldNotFound1 = 'Field "%s" tidak ada';
  cSFieldNotFound2 = 'Field %d tidak ada';

  cSLoginPromptFailure = 'Tidak ada dialog Login default. Silahkan tambahkan DBLogDlg ke klausula `uses` pada file utama.';

  cSPropertyQuery = 'Query mungkin berlangsung lama pada database besar!';
  cSPropertyTables = 'Batasi dengan Katalog data/atau Skema.';
  cSPropertyColumns = 'Batasi dengan Katalog, Skema dan/atau Nama Tabel.';
  cSPropertyProcedures = 'Batasi dengan Katalog dan/atau Skema.';
  cSPropertySequences = 'Batasi dengan Katalog dan/atau Skema.';
  cSPropertyExecute = 'Apakah Query jadi dieksekusi?';

  cSFormTest = 'Tes Editor SQLZEOS';
  cSButtonClose = '&Tutup';
  cSFormEditor = 'Editor SQL ZEOS';
  cSTabSheetSelect = 'SQL Select';
  cSMenuLoad = 'Ambil';
  cSMenuSave = 'Simpan';
  cSButtonGenerate = '&Generate';
  cSButtonCheck = '&Cek';
  cSButtonTest = 'T&es';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Batal';
  cSTableAlias = 'Alias T&abel';
  cSReplaceSQL = 'SQL &Replace';
  cSDialogOpenTitle = 'Buka File SQL';
  cSDialogSaveTitle = 'Simpan File SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Buka database yang tersedia';

  cSUpdateSQLNoResult = 'Tidak ada Resultset pada Update Refresh SQL';
  cSUpdateSQLRefreshStatementcount ='Jumlah Statement pada Update Refresh SQL harus 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset tidak dalam mode edit atau sisip';
  cSFieldTypeMismatch = 'Tipe tidak sesuai pada field ''%s'', seharusnya: %s aktual: %s';
  cSFieldSizeMismatch = 'Ukuran tidak sesuai pada field ''%s'', seharusnya: %d aktual: %d';
  {$ENDIF}
  cSNeedField               = 'Field %s diperlukan, namun tidak disediakan.';

  cSFailedtoInitPrepStmt   = 'Gagal inisialisasi Prepared statement';
  cSFailedtoPrepareStmt    = 'Statemen gagal sewaktu proses persiapan';
  cSFailedToBindAllValues  = 'Aplikasi gagal dalam penggabungan pendahuluan semua nilai';
  cSAttemptExecOnBadPrep   = 'Percobaan eksekusi statemen dilakukan sebelum persiapan berhasil.';
  cSBindingFailure         = 'Gagal menggabungkan parameter';
  cSPreparedStmtExecFailure = 'Prepared Statement gagal dieksekusi';
  cSBoundVarStrIndexMissing = 'Teks variabel indeks "%s" tidak ada';
  cSBindVarOutOfRange      = 'Variabel indeks diluar jangkauan: %d';
  cSFailedToBindResults    = 'Aplikasi gagal pada penggabungan ke Resultset';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'Metode RefreshRow hanya didukung oleh obyek Update';
  cSMustBeInBrowseMode = 'Operasi hanya diperbolehkan pada status dsBrowse';

  cSUnKnownParamDataType = 'Param.DataType tidak dikenal';
  cSFieldReadOnly          = 'Field readonly tidak dapat diberikan nilai: %d';
  cSInvalidUpdateCount     = '%d rekord terupdate. Seharusnya hanya satu rekord yang terupdate.';

  // <--- end added by tohenk
  //--- begin added by ORMADA --------------------------------------------------
  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}
{$IFDEF RUSSIAN}
  cSSQLError1                               = 'Ошибка в SQL выражении: %s';
  cSSQLError2                               = 'Ошибка в SQL выражении: %s Код ошибки: %d';
  cSSQLError3                               = 'Ошибка в SQL выражении: %s '+LineEnding+'Код ошибки: %d SQL: %s';
  cSSQLError4                               = 'Ошибка в SQL выражении: %s '+LineEnding+'Код ошибки: %d Сообщение: %s';

  cSListCapacityError                       = 'Размер списка вышел за границы (%d)';
  cSListCountError                          = 'Счетчик списка вышел за границы (%d)';
  cSListIndexError                          = 'Индекс списка вышел за границы (%d)';

  cSClonningIsNotSupported                  = 'Данный класс не поддерживает клонирование';
  cSImmutableOpIsNotAllowed                 = 'Операция не поддерживается на изменяемых коллекциях';
  cSStackIsEmpty                            = 'Стек пуст';
  cSVariableWasNotFound                     = 'Значение "%s" не найдено';
  cSFunctionWasNotFound                     = 'Функция "%s" не найдена';
  cSInternalError                           = 'Внутреняя ошибка';
  cSSyntaxErrorNear                         = 'Ошибка в синтаксисе "%s"';
  cSSyntaxError                             = 'Ошибка в синтаксисе';
  cSUnknownSymbol                           = 'Неизвестный символ "%s"';
  cSUnexpectedExprEnd                       = 'Неожиданный конец выражения';
  cSRightBraceExpected                      = ') пропущена';
  cSParametersError                         = 'ожидается %d параметров, найдено %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams                      = 'Ожидается более 2-х параметров';
  cSInvalidVarByteArray                     = 'Неверный массив (VarByte)';
  cSVariableAlreadyExists                   = 'Значение "%s" уже существует';
  cSTypesMismatch                           = 'Несовпадение типов';
  cSUnsupportedVariantType                  = 'Неподдерживаемый вариантный (variant) тип';
  cSUnsupportedOperation                    = 'Неподдерживаемая операция';

  cSTokenizerIsNotDefined                   = 'Метка не определена';
  cSLibraryNotFound                         = 'Не одной динамической библиотеки не найдено: %s';

  cSCanNotRetrieveResultSetData             = 'Невозможно получить набор данных (Resultset)';
  cSRowBufferIsNotAssigned                  = 'Не назначен буффер строки';
  cSColumnIsNotAccessable                   = 'Недоступен столбец с индексом %d';
  cSConvertionIsNotPossible                 = 'Конвертация невозможна для столбца %d с %s на %s';
  cSCanNotAccessBlobRecord                  = 'Невозможно получить доступ к blob записи в столбце %d с типом %s';
  cSRowDataIsNotAvailable                   = 'Недоступны данные строки';
  cSResolverIsNotSpecified                  = 'Для данного набора данных (ResultSet) не задан Resolver';
  cSResultsetIsAlreadyOpened                = 'Набор данных (Resultset) уже открыт';
  cSCanNotUpdateEmptyRow                    = 'Невозможно обновить пустой строку';
  cSCanNotUpdateDeletedRow                  = 'Невозможно обновить удалённую строку';
  cSCanNotDeleteEmptyRow                    = 'Невозможно удалить пустую строку';
  cSCannotUseCommit                         = 'Невозможно использовать COMMIT в AUTOCOMMIT режиме';
  cSCannotUseRollBack                       = 'Невозможно использовать ROLLBACK в AUTOCOMMIT режиме';
  cSCanNotUpdateComplexQuery                = 'Невозможно обновить комплексный запрос с более чем одной таблицей';
  cSCanNotUpdateThisQueryType               = 'Невозможно обновить этот тип запроса';
  cSDriverWasNotFound                       = 'Требуемый драйвер БД не найден';
  cSCanNotConnectToServer                   = 'Невозможно подключиться к SQL серверу';
  cSTableIsNotSpecified                     = 'Таблица не задана';
  cSLiveResultSetsAreNotSupported           = 'Живой набор данных не поддерживается этим классом';
  cSInvalidInputParameterCount              = 'Количество входных параметром is меньше чем ожидается';
  cSIsolationIsNotSupported                 = 'Уровень изоляции транзанкций не поддерживается';
  cSColumnWasNotFound                       = 'Не найден столбец с именем "%s"';
  cSWrongTypeForBlobParameter               = 'Неверный тип для Blob прараметра';
  cSIncorrectConnectionURL                  = 'Неверный путь (URL) для подключения: %s';
  cSUnsupportedProtocol                     = 'Неподдерживаемый протокол: %s';
  cSUnsupportedByDriver                     = 'Драйвер не поддерживает данную возможность : [%s]';

  cSConnectionIsNotOpened                   = 'Подключение не открыто';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit                   = 'Неверная операция в режиме автоподтверждения (AutoCommit)';
  cSInvalidOpInNonAutoCommit                = 'Неверная операция в режиме НЕ автоподтверждения (non AutoCommit)';
  cSInvalidOpPrepare                        = 'Подготовка транзанкции возможна только при первом использовании(!) StartTransaction';

  cSConnectionIsNotAssigned                 = 'Подключения к БД не задано';
  cSQueryIsEmpty                            = 'SQL запрос пуст';
  cSCanNotExecuteMoreQueries                = 'Невозможно выполнить более одного запроса';
  cSOperationIsNotAllowed1                  = 'Операция не поддерживается в режиме только вперёд (FORWARD ONLY)';
  cSOperationIsNotAllowed2                  = 'Операция не поддерживается в режиме только для чтения (READ ONLY)';
  cSOperationIsNotAllowed3                  = 'Операция не поддерживается в %s режиме';
  cSOperationIsNotAllowed4                  = 'Операция не поддерживается на закрытом наборе данных';
  cSNoMoreRecords                           = 'В наборе данных (Resultset) нет записей';
  cSCanNotOpenResultSet                     = 'Невозможно открыть набор данных (Resultset)';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink                            = 'Источник данных (Datasource) имеет циклицеские ссылки';
  cSBookmarkWasNotFound                     = 'Заметка (Bookmark) не найдена';
  cSIncorrectSearchFieldsNumber             = 'Некорректное число  Incorrect number of search field values';
  cSInvalidOperationInTrans                 = 'Неверная операция в рамках транзанкции';
  cSIncorrectSymbol                         = 'Неверный символ в списке полей "%s".';
  cSIncorrectToken                          = 'Неверный знак после ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation            = 'Выбранный уровень изоляции транзанкции не поддерживается';
  cSDriverNotSupported                      = 'Драйвер не поддерживается %s';
  cSPattern2Long                            = 'Образец слишком длинный';
  cSDriverNotCapableOutParameters           = 'Драйвер не способен управлять параметрами';
  cSStatementIsNotAllowed                   = 'Выражение не поддерживается';
  cSStoredProcIsNotAllowed                  = 'Хранимая процедура не разрешена';
  cSCannotPerformOperation                  = 'Невозможно выполнить операцию на закрытом наборе данных (Resultset)';
  cSInvalidState                            = 'Неверное состояние';
  cSErrorConvertion                         = 'Ошибка преобразования';
  cSDataTypeDoesNotSupported                = 'Тип данных не поддерживается';
  cSUnsupportedParameterType                = 'Неподдерживаемый тип параметра';
  cSUnsupportedDataType                     = 'Неподдерживаемый тип данных';
  cSErrorConvertionField                    = 'Ошибка конвертации для поля "%s" в SQLType "%s"';
  cSBadOCI                                  = 'Неверная версия OCI [%s]. Необходимая версия 8.0.3 или выше';
  cSConnect2AsUser                          = 'Невозможно подключиться к "%s" пользователем "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError                            = 'Неизвестная ошибка';
  cSFieldNotFound1                          = 'Поле "%s" не найдено';
  cSFieldNotFound2                          = 'Поле %d не найдено';

  cSLoginPromptFailure                      = 'Невозможно найти диалог авторизации по умолчанияю. Добавьте модуль DBLogDlg в секцию uses главного программного модуля.';

  cSPropertyQuery                           = 'Это может быть последний запрос пока БД большая The Query may last a while on large databases!';
  cSPropertyTables                          = 'Следует ограничить каталогом(Catalog) и/или схемой (Schema)';
  cSPropertyColumns                         = 'Следует ограничить каталогом (Catalog), схемой (Schema) и/или таблицей (TableName).';
  cSPropertyProcedures                      = 'Следует ограничить каталогом(Catalog) и/или схемой (Schema).';
  cSPropertySequences                       = 'Следует ограничить каталогом(Catalog) и/или схемой (Schema).';
  cSPropertyExecute                         = 'Всё равно выполнить запрос ?';

  cSFormTest                                = 'ZEOS SQL тест редактора';
  cSButtonClose                             = '&Закрыть';
  cSFormEditor                              = 'ZEOS SQL редактор';
  cSTabSheetSelect                          = 'Выбор SQL';
  cSMenuLoad                                = 'Загрузить';
  cSMenuSave                                = 'Сохранить';
  cSButtonGenerate                          = '&Сгенерировать';
  cSButtonCheck                             = 'П&роверить';
  cSButtonTest                              = '&Тест';
  cSButtonOk                                = '&Ок';
  cSButtonCancel                            = '&Отмена';
  cSTableAlias                              = 'П&севдоним таблицы';
  cSReplaceSQL                              = '&Заменить SQL';
  cSDialogOpenTitle                         = 'Открыть SQL файл';
  cSDialogSaveTitle                         = 'Сохранить SQL файл';
  cSSQLEditor                               = 'SQL редактор';
  cSDatabaseDialog                          = 'Открыть существующую БД';

  cSUpdateSQLNoResult                       = 'В результате обновления (Refresh) данные не получены';
  cSUpdateSQLRefreshStatementcount          = 'Refresh запрос должен быть только один';

{$IFDEF FPC}
  cSNotEditing                              = 'Набор данных (Dataset) не в режиме редактирования или вставки';
  cSFieldTypeMismatch                       = 'Несовпадение типа для поля ''%s'', ожидается %s найден: %s';
  cSFieldSizeMismatch                       = 'Размер поля ''%s'' не совпадает, ожидается: %d найден: %d';
{$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt                    = 'Неудалось инициализировать подготовленное выражение';
  cSFailedtoPrepareStmt                     = 'Ошибка выполнения выражения в процессе подготовки';
  cSFailedToBindAllValues                   = 'Ошибка при пре-связываниии значений';
  cSAttemptExecOnBadPrep                    = 'Попытка выполнить выражение до успешной подготовки.';
  cSBindingFailure                          = 'Ошибка при связывании параметра';
  cSPreparedStmtExecFailure                 = 'Неудалось выполнить подготовленное выражение';
  cSBoundVarStrIndexMissing                 = 'Ограничение на текст с индексом "%s" не существует';
  cSBindVarOutOfRange                       = 'Индекс ограничения вышел за границы : %d';
  cSFailedToBindResults                     = 'Неудалось связать(bind) результат выполнения';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'Метод обновления строки (RefreshRow) поддерживается только при обновлении объекта';
  cSMustBeInBrowseMode                      = 'Операция поддерживает только в режиме просмотра (dsBROWSE)';

  cSUnKnownParamDataType                    = 'Неизвестный типа параметра (Param.DataType)';
  //--- end added by ORMADA ----------------------------------------------------
  cSFieldReadOnly          = 'Translate : Readonly field can''t be assigned a value: %d';
  cSInvalidUpdateCount     = 'Translate : %d record(s) updated. Only one record should have been updated.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}

//--- added by Petr Stasiak - pestasoft.com ------------------------------------
{$IFDEF CZECH}
  cSSQLError1 = 'SQL chyba: %s';
  cSSQLError2 = 'SQL chyba: %s kуd: %d';
  cSSQLError3 = 'SQL chyba: %s '+LineEnding+'kуd: %d SQL: %s';
  cSSQLError4 = 'SQL chyba: %s '+LineEnding+'kуd: %d Hlбљenн: %s';

  cSListCapacityError = 'Kapacita seznamu je mimo rozsah (%d)';
  cSListCountError = 'Poиet seznamщ je mimo rozsah (%d)';
  cSListIndexError = 'Index v seznamu je mimo rozsah (%d)';

  cSClonningIsNotSupported = 'Klonovбnн nenн v tйto tшнdм podporovбno';
  cSImmutableOpIsNotAllowed = 'Tato operace nenн povolena na nemмnitelnй "collections"';
  cSStackIsEmpty = 'Zбsobnнk je prбzdnэ';
  cSVariableWasNotFound = 'Promмnб "%s" neexistuje';
  cSFunctionWasNotFound = 'Funkce "%s" neexistuje';
  cSInternalError = 'Internн chyba';
  cSSyntaxErrorNear = 'Chybnб syntaxe "%s"';
  cSSyntaxError = 'Chybnб syntaxe';
  cSUnknownSymbol = 'Neznбmэ symbol "%s"';
  cSUnexpectedExprEnd = 'Neoиekбvanэ konec vэrazu';
  cSRightBraceExpected = ') oиekбvбn(o/a/y)';
  cSParametersError = '%d parametrщ oиekбvбno, ale %d existuje';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Je oиekбvбno vнce, neћ 2 parametry';
  cSInvalidVarByteArray = 'Nesprбvnэ VarByte array';
  cSVariableAlreadyExists = 'Promмnб "%s" jiћ existuje';
  cSTypesMismatch = 'Nesouhlasnй typy';
  cSUnsupportedVariantType = 'Nepodporovanэ typ variant';
  cSUnsupportedOperation = 'Nepodporovanб operace';

  cSTokenizerIsNotDefined = 'Nenн definovбn "Tokenizer"';
  cSLibraryNotFound = 'Neexistuje dll knihovna(y): %s';

  cSCanNotRetrieveResultSetData = 'Nelze zнskat data "Resultset"';
  cSRowBufferIsNotAssigned = 'Nenн pшiшazen шбdkovэ buffer';
  cSColumnIsNotAccessable = 'Sloupec s indexem %d nenн pшнstupnэ';
  cSConvertionIsNotPossible = 'Pшevod sloupce %d  nenн moћnэ z %s na %s';
  cSCanNotAccessBlobRecord = 'Nelze pшistupovat k blob zбznamu ze zloupce %d pшes typ %s';
  cSRowDataIsNotAvailable = 'Шбdkovб data nejsou pшнstupnб';
  cSResolverIsNotSpecified = 'Nenн specifikovбn "rozkladaи" pro tento vэsledek';
  cSResultsetIsAlreadyOpened = '"Resultset" byl jiћ otevшen';
  cSCanNotUpdateEmptyRow = 'Nelze aktualizovat prбzdnэ шбdek';
  cSCanNotUpdateDeletedRow = 'Nelze aktualizovat smazanэ шбdek';
  cSCanNotDeleteEmptyRow = 'Nelze vymazat prбzdnэ шбdek';
  cSCannotUseCommit = 'Nepouћнvejte COMMIT v mуdu AUTOCOMMIT';
  cSCannotUseRollBack = 'Nelze pouћнt ROLLBACK v AUTOCOMMIT mуdu';
  cSCanNotUpdateComplexQuery = 'Nelze aktualizovat komplexnн dotaz pro vнce, neћ jednu tabulku';
  cSCanNotUpdateThisQueryType = 'Nelze aktualizovat tento typ dotazu';
  cSDriverWasNotFound = 'Poћadovanэ databбzovэ ovladaи nenalezen';
  cSCanNotConnectToServer = 'Nezdaшilo se pшipojenн k SQL serveru';
  cSTableIsNotSpecified = 'Tabulka nenн specifikovбna';
  cSLiveResultSetsAreNotSupported = '"Ћivэ" dotaz nenн podporovбn v tйto tшнdм';
  cSInvalidInputParameterCount = 'Poиet vstupnнch parametrщ neodpovнdб oиekбvanйmu poиtu';
  cSIsolationIsNotSupported = 'Mнra izolace transakce nenн podporovбna';
  cSColumnWasNotFound = 'Sloupec s nбzvem "%s" neexistuje';
  cSWrongTypeForBlobParameter = 'Nesprбvnэ typ pro Blob parametr';
  cSIncorrectConnectionURL = 'Nesprбvnэ tvar URL adresy: %s';
  cSUnsupportedProtocol = 'Nepodporovanэ protokol: %s';
  cSUnsupportedByDriver    = 'Ovladaи nepodporuje tuto vlastnost: [%s]';

  cSConnectionIsNotOpened = 'Spojenн nenн otevшeno';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Nesprбvnб operace v mуdu AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Nesprбvnб operace v mуdu NE AutoCommit';
  cSInvalidOpPrepare = '"Prepare" transakce je moћnй pouze jako prvnн! Starttransaction';

  cSConnectionIsNotAssigned = 'Nenн pшiшazen komponent "connection"';
  cSQueryIsEmpty = 'SQL dotaz je prбzdnэ';
  cSCanNotExecuteMoreQueries = 'Nelze spustit vнce, neћ 1 dotaz';
  cSOperationIsNotAllowed1 = 'Operace nenн povolena v mуdu "FORWARD ONLY"';
  cSOperationIsNotAllowed2 = 'Operace nenн povolena v mуdu "READ ONLY"';
  cSOperationIsNotAllowed3 = 'Operace nenн povolena v mуdu "%s"';
  cSOperationIsNotAllowed4 = 'Operace nenн povolena pro zavшenэ zdroj dat (dataset)';
  cSNoMoreRecords = 'Nejsou dalљн zбznamy';
  cSCanNotOpenResultSet = 'Nelze otevшнt vэsledek dotazu';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource vytvбшн cyklickэ dotaz';
  cSBookmarkWasNotFound = 'Zбloћka neexistuje';
  cSIncorrectSearchFieldsNumber = 'Nesprбvnэ poиet vyhledбvanэch poloћek';
  cSInvalidOperationInTrans = 'Nesprбvnб operace v explicitnнm transakиnнm mуdu';
  cSIncorrectSymbol = 'Nesprбvnэ symbol v seznamu poloћek "%s".';
  cSIncorrectToken = 'Za ":" nбsleduje nesprбvnэ znak';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Vybranб mнra izolace transakcн nenн podporovбna';
  cSDriverNotSupported = 'Ovladaи %s nenн podporovбn';
  cSPattern2Long = 'Pattern je pшнliљ dlouhэ';
  cSDriverNotCapableOutParameters = 'Ovladaи nenн schopen pшijнmat parametry';
  cSStatementIsNotAllowed = 'Pшнkaz nenн povolen';
  cSStoredProcIsNotAllowed = '"stored proc" nenн povolena';
  cSCannotPerformOperation = 'Nelze provйst operaci na uzavшenнm vэsledku dotazu (Resultset)';
  cSInvalidState = 'Nesprбvnэ stav';
  cSErrorConvertion = 'Chyba pшevodu';
  cSDataTypeDoesNotSupported = 'Tento typ dat nenн podporovбn';
  cSUnsupportedParameterType = 'Nepodporovanэ typ parametru';
  cSUnsupportedDataType = 'Nepodporovanэ typ dat';
  cSErrorConvertionField = 'Chyba pшevodu sloupce "%s" na SQLTyp "%s"';
  cSBadOCI = 'Љpatnй verze OCI [%s]. Je vyћadovбna 8.0.3 nebo starљн';
  cSConnect2AsUser = 'Pшipojit k "%s" jako "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Neznбmб chyba';
  cSFieldNotFound1 = 'Sloupec "%s" neexistuje';
  cSFieldNotFound2 = 'Sloupec %d neexistuje';

  cSLoginPromptFailure = 'Nelze najнt vэchozн pшihlaљovacн dialog. Prosнm pшidejte DBLogDlg do sekce USES vaљeho zdrojovйho souboru.';

  cSPropertyQuery = 'Dotaz mщћe bэt poslednн u vlelkэch databбzн!';
  cSPropertyTables = 'Mмlo by bэt limitovбno katalogen a/nebo schйmatem.';
  cSPropertyColumns = 'Mмlo by bэt limitovбno katalogem, schйmatem a/nebo nбzvem tabulky.';
  cSPropertyProcedures = 'Mмlo by bэt limitovбno katalogen a/nebo schйmatem.';
  cSPropertySequences = 'Mмlo by bэt limitovбno katalogen a/nebo schйmatem.';
  cSPropertyExecute = 'Mб se dotaz pшesto vykonat?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Zavшнt';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Naинst';
  cSMenuSave = 'Uloћit';
  cSButtonGenerate = '&Generovat';
  cSButtonCheck = '&Kontrola';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'Z&ruљit';
  cSTableAlias = '&Alias tabulky';
  cSReplaceSQL = 'Nah&radit SQL';
  cSDialogOpenTitle = 'Otevшнt SQL soubor';
  cSDialogSaveTitle = 'Uloћit SQL soubor';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Otevшнt existujнcн databбzi';

  cSUpdateSQLNoResult = 'Update Refresh SQL nevrбtilo ћбdnэ vэsledek';
  cSUpdateSQLRefreshStatementcount ='Poиet Update Refresh SQL pшнkazщ musн bэt 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset nenн v editaиnнm (edit), ani vklбdacнm (insert) reћimu';
  cSFieldTypeMismatch = 'Nesprбvnэ typ pro sloupec ''%s'', oиekбvбno: %s aktuбlnн: %s';
  cSFieldSizeMismatch = 'Nesprбvnб velikost sloupce ''%s'', oиekбvбno: %d aktuбlnн: %d';
  {$ENDIF}
  cSNeedField               = 'Sloupce %s je poћadovбn, ale nezadбn.';

  cSFailedtoInitPrepStmt   = 'Pшipravovanэ pшнkaz nelze inicializovat';
  cSFailedtoPrepareStmt    = 'Pшнkaz selhal bмhem pшнpravy procesu';
  cSFailedToBindAllValues  = 'Aplikace zkolabovala pшed pшнpravou vљech hodnot';
  cSAttemptExecOnBadPrep   = 'Pokouљнte sespustit pшнkaz pшed dokonиenнm jeho pшнpravy.';
  cSBindingFailure         = 'Chyba pшi zнskбvбnн sady parametrщ';
  cSPreparedStmtExecFailure = 'Pшipravovanэ pшнkaz selhal pшi vykonбvбnн';
  cSBoundVarStrIndexMissing = 'Index textovй promмnй "%s" neexistuje';
  cSBindVarOutOfRange      = 'Index promenй je mimo rozsah: %d';
  cSFailedToBindResults    = 'Aplikace selhala pшi zнskбvбnн vэsledkщ dotazu';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'Metoda "refreshrow" je podporovбna pouze v "update object"';
  cSMustBeInBrowseMode = 'Operace je povolena pouze ve stavu dsBROWSE';

  cSUnKnownParamDataType = 'Neznбmэ parametr.typ dat (Param.DataType)';
  cSFieldReadOnly        = 'Sloupec pouze pro иtenн nemщћe bэt pшiшazen k hodnotм: %d';
  cSInvalidUpdateCount     = '%d zбznam(щ) aktualizovбno. Pouze jeden zбznam byl zmмnмn.';

//--- end added by Petr Stasiak - pestasoft.com ------------------------------------

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';
{$ELSE}

//--- added by pawelsel --------------------------------------------------------
{$IFDEF POLISH}
  cSSQLError1 = 'Bі№d SQL: %s';
  cSSQLError2 = 'Bі№d SQL: %s Kod: %d';
  cSSQLError3 = 'Bі№d SQL: %s '+LineEnding+'Kod: %d SQL: %s';
  cSSQLError4 = 'Bі№d SQL: %s '+LineEnding+'Kod: %d Komunikat: %s';

  cSListCapacityError = 'Przekroczona pojemnoњж listy (%d)';
  cSListCountError = 'Licznik listy poza zakresem (%d)';
  cSListIndexError = 'Indeks listy poza zakresem (%d)';

  cSClonningIsNotSupported = 'Ta klasa nie obsіuguje klonowania';
  cSImmutableOpIsNotAllowed = 'Niedozwolona operacja na niezmienialnych kolekcjach';
  cSStackIsEmpty = 'Stos jest pusty';
  cSVariableWasNotFound = 'Nie znaleziono zmiennej "%s"';
  cSFunctionWasNotFound = 'Nie znaleziono funkcji "%s"';
  cSInternalError = 'Bі№d wewnкtrzny';
  cSSyntaxErrorNear = 'Bі№d skіadni przy "%s"';
  cSSyntaxError = 'Bі№d skіadni';
  cSUnknownSymbol = 'Nieznany symbol "%s"';
  cSUnexpectedExprEnd = 'Nieoczekiwany koniec wyraїenia';
  cSRightBraceExpected = 'Oczekiwano znaku )';
  cSParametersError = 'Oczekiwana iloњж parametrуw: %d, znaleziono: %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Oczekiwano wiкcej niї dwa parametry';
  cSInvalidVarByteArray = 'Bікdna tablica VarByte';
  cSVariableAlreadyExists = 'Zmienna "%s" juї istnieje';
  cSTypesMismatch = 'Niezgodnoњж typуw';
  cSUnsupportedVariantType = 'Nieznany typ danych';
  cSUnsupportedOperation = 'Nieznana operacja';

  cSTokenizerIsNotDefined = 'Nie zdefiniowano tokenizera';
  cSLibraryNotFound = 'Nie znaleziono їadnej z bibliotek dynamicznych: %s';

  cSCanNotRetrieveResultSetData = 'Nie moїna pobraж danych wynikowych';
  cSRowBufferIsNotAssigned = 'Nie przypisano bufora wiersza';
  cSColumnIsNotAccessable = 'Kolumna o numerze %d jest niedostкpna';
  cSConvertionIsNotPossible = 'Konwersja kolumny o numerze %d z %s na %s jest niemoїliwa';
  cSCanNotAccessBlobRecord = 'Brak dostкpu do rekordu typu blob w kolumnie %d z typem %s';
  cSRowDataIsNotAvailable = 'Dane wiersza s№ niedostкpne';
  cSResolverIsNotSpecified = 'Ten ResultSet nie ma okreњlonego Resolver-a';
  cSResultsetIsAlreadyOpened = 'ResultSet jest juї otwarty';
  cSCanNotUpdateEmptyRow = 'Nie moїna aktualizowaж pustego wiersza';
  cSCanNotUpdateDeletedRow = 'Nie moїna aktualizowaж usuniкtego wiersza';
  cSCanNotDeleteEmptyRow = 'Nie moїna usun№ж pustego wiersza';
  cSCannotUseCommit = 'Nie moїna uїyж COMMIT w trybie AUTOCOMMIT';
  cSCannotUseRollBack = 'Nie moїna uїyж ROLLBACK w trybie AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Nie moїna aktualizowaж zapytania zіoїonego z wiкcej niї jednej tabeli';
  cSCanNotUpdateThisQueryType = 'Nie moїna aktualizowaж tego typu zapytania';
  cSDriverWasNotFound = 'Nie znaleziono wymaganego sterownika bazy danych';
  cSCanNotConnectToServer = 'Nie moїna poі№czyж siк z serwerem SQL';
  cSTableIsNotSpecified = 'Nie okreњlono tabeli';
  cSLiveResultSetsAreNotSupported = '"Live query" nie jest obsіugiwane przez t№ klasк';
  cSInvalidInputParameterCount = 'Liczba parametrуw wejњciowych jest mniejsza niї oczekiwana';
  cSIsolationIsNotSupported = 'Poziom izolacji transakcji nie jest obsіugiwany';
  cSColumnWasNotFound = 'Nie znaleziono kolumny o nazwie "%s"';
  cSWrongTypeForBlobParameter = 'Bікdny typ parametru Blob';
  cSIncorrectConnectionURL = 'Bікdny URL poі№czenia: %s';
  cSUnsupportedProtocol = 'Nieobsіugiwany protokуі: %s';
  cSUnsupportedByDriver    = 'Sterownik nie obsіuguje tej wіaњciwoњci natywnie: [%s]';

  cSConnectionIsNotOpened = 'Jeszcze nie nawi№zano poі№czenia';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Bікdna operacja w trybie AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Bікdna operacja przy wyі№czonym AutoCommit';
  cSInvalidOpPrepare = 'Przygotowanie transakcji moїliwe jest tylko przy pierwszym(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Nie przypisano komponentu poі№czenia do bazy danych';
  cSQueryIsEmpty = 'Zapytanie SQL jest puste';
  cSCanNotExecuteMoreQueries = 'Nie moїna wykonaж wiкcej niї jednego zapytania';
  cSOperationIsNotAllowed1 = 'Niedozwolona operacja w trybie FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Niedozwolona operacja w trybie READ ONLY';
  cSOperationIsNotAllowed3 = 'Niedozwolona operacja w trybie %s';
  cSOperationIsNotAllowed4 = 'Niedozwolona operacja przy zamkniкtym џrуdle danych';
  cSNoMoreRecords = 'Nie ma juї wiкcej rekordуw wynikowych';
  cSCanNotOpenResultSet = 'Nie moїna otworzyж danych wynikowych';
  cSCanNotOpenDataSetWhenDestroying ='Nie moїna otworzyж dataset gdy componentstate to dsDestroying';
  cSCircularLink = 'Datasource tworzy powi№zanie cykliczne';
  cSBookmarkWasNotFound = 'Nie znaleziono zakіadki (Bookmark)';
  cSIncorrectSearchFieldsNumber = 'Bікdna liczba pуl do wyszukiwania';
  cSInvalidOperationInTrans = 'Bікdna operacja w trybie transakcji';
  cSIncorrectSymbol = 'Bікdny symbol w liњcie pуl "%s".';
  cSIncorrectToken = 'Bікdny wyraz za ":"';
  cSIncorrectParamChar = 'Bікdna wartoњж dla ParamChar';

  cSSelectedTransactionIsolation = 'Wybrany poziom izolacji transakcji nie jest obsіugiwany';
  cSDriverNotSupported = 'Nie obsіugiwany sterownik %s';
  cSPattern2Long = 'Wzorzec jest zbyt dіugi';
  cSDriverNotCapableOutParameters = 'Sterownik nie potrafi obsіuїyж parametrуw';
  cSStatementIsNotAllowed = 'Niedozwolone wyraїenie';
  cSStoredProcIsNotAllowed = 'Niedozwolona procedura skіadowana';
  cSCannotPerformOperation = 'Nie moїna wykonaж operacji na zamkniкtym zbiorze danych';
  cSInvalidState = 'Bікdny stan';
  cSErrorConvertion = 'Bі№d konwersji';
  cSDataTypeDoesNotSupported = 'Nieobsіugiwany typ danych';
  cSUnsupportedParameterType = 'Nieobsіugiwany typ parametru';
  cSUnsupportedDataType = 'Nieobsіugiwany typ danych';
  cSErrorConvertionField = 'Bі№d konwersji pola "%s" na SQLType "%s"';
  cSBadOCI = 'Zіa wersja OCI [%s]. Wymagana wersja 8.0.3 lub starsza';
  cSConnect2AsUser = 'Poі№czenie z "%s" jako uїytkownik "%s"';
  cSConnect2WinAuth = 'Translate: Connect to "%s" using windows authentification';
  cSUnknownError = 'Nieznany bі№d';
  cSFieldNotFound1 = 'Nie znaleziono pola "%s"';
  cSFieldNotFound2 = 'Nie znaleziono pola %d';

  cSLoginPromptFailure = 'Nie znaleziono domyњlnego dialogu logowania. Proszк dodaж DBLogDlg do sekcji uses gіуwnego pliku aplikacji.';

  cSPropertyQuery = 'Zapytanie moїe chwilк potrwaж na wiкkszej bazie danych!';
  cSPropertyTables = 'Powinieneњ uњciњliж Katalog i/lub Schemat.';
  cSPropertyColumns = 'Powinieneњ uњciњliж Katalog, Schemat i/lub Nazwк Tabeli.';
  cSPropertyProcedures = 'Powinieneњ uњciњliж Katalog i/lub Schemat.';
  cSPropertySequences = 'Powinieneњ uњciњliж Katalog i/lub Schemat.';
  cSPropertyExecute = 'Czy mimo to wykonaж zapytanie?';

  cSFormTest = 'Test Edytora SQL ZEOS';
  cSButtonClose = '&Zamknij';
  cSFormEditor = 'Edytor SQL ZEOS';
  cSTabSheetSelect = 'Wybуr SQL';
  cSMenuLoad = 'Јaduj';
  cSMenuSave = 'Zapisz';
  cSButtonGenerate = '&Generuj';
  cSButtonCheck = '&Sprawdџ';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'A&nuluj';
  cSTableAlias = '&Alias tabeli';
  cSReplaceSQL = 'Za&mieс SQL';
  cSDialogOpenTitle = 'Otwуrz plik SQL';
  cSDialogSaveTitle = 'Zapisz plik SQL';
  cSSQLEditor = 'Edytor SQL';
  cSDatabaseDialog = 'Otwуrz istniej№c№ bazк';

  cSUpdateSQLNoResult = 'Update Refresh SQL nie zwrуciіo їadnych danych';
  cSUpdateSQLRefreshStatementcount ='Wyraїenie Update Refresh SQL musi zwrуciж 1 rekord danych';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset nie jest w trybie "edit" lub "insert"';
  cSFieldTypeMismatch = 'Niezgodnoњж typуw dla pola ''%s'', oczekiwano: %s otrzymano: %s';
  cSFieldSizeMismatch = 'Niezgodnoњж rozmiarуw pola ''%s'', oczekiwano: %d otrzymano: %d';
  {$ENDIF}
  cSNeedField               = 'Pole %s jest wymagane.';

  cSFailedtoInitPrepStmt   = 'Nie udaіo siк zainicjalizowaж przygotowanego zapytania';
  cSFailedtoPrepareStmt    = 'Bі№d w wyraїeniu podczas procesu przygotowania';
  cSFailedToBindAllValues  = 'Bі№d aplikacji podczas przypisywania danych';
  cSAttemptExecOnBadPrep   = 'Prуba uruchomienia wyraїenia przed zakoсczeniem przygotowywania.';
  cSBindingFailure         = 'Bі№d przypisywania zbioru parametrуw';
  cSPreparedStmtExecFailure = 'Bі№d wykonania przygotowanego zapytania';
  cSBoundVarStrIndexMissing = 'Nie istnieje zmienna licznikowa "%s"';
  cSBindVarOutOfRange      = 'Wartoњж zmiennej licznikowej poza zakresem: %d';
  cSFailedToBindResults    = 'Bі№d aplikacji podczas і№czenia do wynikуw zapytania';
  cSPreviousResultStillOpen = 'Poprzedni zbiуr wynikowy tego wyraїenia jest nadal otwarty';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'Metoda refreshrow jest obsіugiwana tylko przez obiekt typu "update"';
  cSMustBeInBrowseMode = 'Operacja jest dozwolona tylko w stanie dsBROWSE';

  cSUnKnownParamDataType = 'Nieznany Param.DataType';
  cSFieldReadOnly        = 'Nie moїna przypisaж do pola tylko do odczytu wartoњci: %d';
  cSInvalidUpdateCount     = 'Liczba zaktualizowanych rekordуw: %d. tylko jeden rekord powinien byж zaktualizowany.';

  cSBackgroundOperationStillRunning = 'Translate: A background operation is still running!';

{$ELSE} // default: ENGLISH

  cSSQLError1 = 'SQL Error: %s';
  cSSQLError2 = 'SQL Error: %s Code: %d';
  cSSQLError3 = 'SQL Error: %s '+LineEnding+'Code: %d SQL: %s';
  cSSQLError4 = 'SQL Error: %s '+LineEnding+'Code: %d Message: %s';

  cSListCapacityError = 'List capacity out of bounds (%d)';
  cSListCountError = 'List count out of bounds (%d)';
  cSListIndexError = 'List index out of bounds (%d)';

  cSClonningIsNotSupported = 'Clonning is not supported by this class';
  cSImmutableOpIsNotAllowed = 'The operation is not allowed on not changeable collections';
  cSStackIsEmpty = 'Stack is empty';
  cSVariableWasNotFound = 'Variable "%s" was not found';
  cSFunctionWasNotFound = 'Function "%s" was not found';
  cSInternalError = 'Internal error';
  cSSyntaxErrorNear = 'Syntax error near "%s"';
  cSSyntaxError = 'Syntax error';
  cSUnknownSymbol = 'Unknown symbol "%s"';
  cSUnexpectedExprEnd = 'Unexpected end of expression';
  cSRightBraceExpected = ') expected';
  cSParametersError = '%d parameters were expected but %d were found';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'More than two parameters are expected';
  cSInvalidVarByteArray = 'Invalid VarByte array';
  cSVariableAlreadyExists = 'Variable "%s" already exists';
  cSTypesMismatch = 'Types mismatch';
  cSUnsupportedVariantType = 'Unsupported variant type';
  cSUnsupportedOperation = 'Unsupported operation';

  cSTokenizerIsNotDefined = 'Tokenizer is not defined';
  cSLibraryNotFound = 'None of the dynamic libraries can be found or is not loadable: %s !'#10#13'Use TZConnection.LibraryLocation if the location is invalid.';

  cSCanNotRetrieveResultSetData = 'Cannot retrieve Resultset data';
  cSRowBufferIsNotAssigned = 'Row buffer is not assigned';
  cSColumnIsNotAccessable = 'Column with index %d is not accessable';
  cSConvertionIsNotPossible = 'Convertion is not possible for column %d from %s to %s';
  cSCanNotAccessBlobRecord = 'Cannot access blob record in column %d with type %s';
  cSRowDataIsNotAvailable = 'Row data is not available';
  cSResolverIsNotSpecified = 'Resolver is not specified for this ResultSet';
  cSResultsetIsAlreadyOpened = 'Resultset is already open';
  cSCanNotUpdateEmptyRow = 'Cannot update an empty row';
  cSCanNotUpdateDeletedRow = 'Cannot update a deleted row';
  cSCanNotDeleteEmptyRow = 'Cannot delete an empty row';
  cSCannotUseCommit = 'You cannot use COMMIT in AUTOCOMMIT mode';
  cSCannotUseRollBack = 'You cannot use ROLLBACK in AUTOCOMMIT mode';
  cSCanNotUpdateComplexQuery = 'Cannot update a complex query with more then one table';
  cSCanNotUpdateThisQueryType = 'Cannot update this query type';
  cSDriverWasNotFound = 'Requested database driver was not found';
  cSCanNotConnectToServer = 'Cannot connect to SQL server';
  cSTableIsNotSpecified = 'Table is not specified';
  cSLiveResultSetsAreNotSupported = 'Live query is not supported by this class';
  cSInvalidInputParameterCount = 'Input parameter count is less then expected';
  cSIsolationIsNotSupported = 'Transaction isolation level is not supported';
  cSColumnWasNotFound = 'Column with name "%s" was not found';
  cSWrongTypeForBlobParameter = 'Wrong type for Blob parameter';
  cSIncorrectConnectionURL = 'Incorrect connection URL: %s';
  cSUnsupportedProtocol = 'Unsupported protocol: %s';
  cSUnsupportedByDriver    = 'Driver can not support this feature natively: [%s]';

  cSConnectionIsNotOpened = 'Connection is not opened yet';
  cSConnectionIsOpened = 'Translate: Connection is opened';
  cSInvalidOpInAutoCommit = 'Invalid operation in AutoCommit mode';
  cSInvalidOpInNonAutoCommit = 'Invalid operation in non AutoCommit mode';
  cSInvalidOpPrepare = 'Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Database connection component is not assigned';
  cSQueryIsEmpty = 'SQL Query is empty';
  cSCanNotExecuteMoreQueries = 'Cannot execute more then one query';
  cSOperationIsNotAllowed1 = 'Operation is not allowed in FORWARD ONLY mode';
  cSOperationIsNotAllowed2 = 'Operation is not allowed in READ ONLY mode';
  cSOperationIsNotAllowed3 = 'Operation is not allowed in %s mode';
  cSOperationIsNotAllowed4 = 'Operation is not allowed for closed dataset';
  cSNoMoreRecords = 'No more records in the Resultset';
  cSCanNotOpenResultSet = 'Can not open a Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource makes a circular link';
  cSBookmarkWasNotFound = 'Bookmark was not found';
  cSIncorrectSearchFieldsNumber = 'Incorrect number of search field values';
  cSInvalidOperationInTrans = 'Invalid operation in explicit transaction mode';
  cSIncorrectSymbol = 'Incorrect symbol in field list "%s".';
  cSIncorrectToken = 'Incorrect token followed by ":"';
  cSIncorrectParamChar = 'Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Selected transaction isolation level is not supported';
  cSDriverNotSupported = 'Driver not supported %s';
  cSPattern2Long = 'Pattern is too long';
  cSDriverNotCapableOutParameters = 'Driver is not capable to handle parameters';
  cSStatementIsNotAllowed = 'Statement is not allowed';
  cSStoredProcIsNotAllowed = 'The stored proc is not allowed';
  cSCannotPerformOperation = 'Can not perform operation on closed Resultset';
  cSInvalidState = 'Invalid state';
  cSErrorConvertion = 'Convertion error';
  cSDataTypeDoesNotSupported = 'Data type is not supported';
  cSUnsupportedParameterType = 'Unsupported parameter type';
  cSUnsupportedDataType = 'Unsupported data type';
  cSErrorConvertionField = 'Conversion error for field "%s" to SQLType "%s"';
  cSBadOCI = 'Bad OCI version [%s]. Version 8.0.3 or older is required';
  cSConnect2AsUser = 'Connect to "%s" as user "%s"';
  cSConnect2WinAuth = 'Connect to "%s" using windows authentification';
  cSUnknownError = 'Unknown error';
  cSFieldNotFound1 = 'Field "%s" was not found';
  cSFieldNotFound2 = 'Field %d was not found';

  cSLoginPromptFailure = 'Can not find default login prompt dialog. Please add DBLogDlg to the uses section of your main file.';

  cSPropertyQuery = 'The Query may last a while on large databases!';
  cSPropertyTables = 'You should limit it by Catalog and/or Schema.';
  cSPropertyColumns = 'You should limit it by Catalog, Schema and/or TableName.';
  cSPropertyProcedures = 'You should limit it by Catalog and/or Schema.';
  cSPropertySequences = 'You should limit it by Catalog and/or Schema.';
  cSPropertyExecute = 'Should the Query be executed anyway?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Close';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Load';
  cSMenuSave = 'Save';
  cSButtonGenerate = '&Generate';
  cSButtonCheck = 'C&heck';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Cancel';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Replace SQL';
  cSDialogOpenTitle = 'Open SQL File';
  cSDialogSaveTitle = 'Save SQL File';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Open existing database';

  cSUpdateSQLNoResult = 'Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset not in edit or insert mode';
  cSFieldTypeMismatch = 'Type mismatch for field ''%s'', expecting: %s actual: %s';
  cSFieldSizeMismatch = 'Size mismatch for field ''%s'', expecting: %d actual: %d';
  {$ENDIF}
  cSNeedField               = 'Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'Unknown Param.DataType';
  cSFieldReadOnly        = 'Readonly field can''t be assigned a value: %s';
  cSInvalidUpdateCount     = '%d record(s) updated. Only one record should have been updated.';

  cSBackgroundOperationStillRunning = 'A background operation is still running!';

{$ENDIF} // POLISH

{$ENDIF} // CZECH

{$ENDIF} // RUSSIAN

{$ENDIF}   // INDONESIAN <--- added by tohenk

{$ENDIF}   // ROMANA

{$ENDIF} //SPANISH

{$ENDIF} // GERMAN

{$ENDIF} // DUTCH

{$ENDIF} // PORTUGUESE
{$ENDIF FRENCH}

{$IF defined(FPC) and (defined(ZEOSDEBUG) or not defined(ASCII7_MESSAGES)) and
     (defined(WITH_DEFAULTSYSTEMCODEPAGE) or defined(LCL))}
function ConvertZMessageToRaw(const Value: String): String;
begin
  Result := ZUnicodeToRaw(PRawToUnicode(Pointer(Value), Length(Value), MsgCodePage),
    {$IFDEF WITH_DEFAULTSYSTEMCODEPAGE}DefaultSystemCodePage{$ELSE}
        {$IFDEF LCL}zCP_UTF8{$ELSE}zOSCodePage{$ENDIF}{$ENDIF});
end;

{$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
function SInvalidGuidArray: String;
begin
  Result := ConvertZMessageToRaw(cInvalidGuidArray);
end;
{$ENDIF}
{$IFNDEF WITH_SBCDOVERFLOW}
function SBcdOverflow: String;
begin
  Result := ConvertZMessageToRaw(cBcdOverflow);
end;
{$ENDIF}
{$IFNDEF WITH_SInvalidBcdValue}
function SInvalidBcdValue: String;
begin
  Result := ConvertZMessageToRaw(cInvalidBcdValue);
end;
{$ENDIF}

function SSQLError1: String;
begin
  Result := ConvertZMessageToRaw(cSSQLError1);
end;

function SSQLError2: String;
begin
  Result := ConvertZMessageToRaw(cSSQLError2);
end;

function SSQLError3: String;
begin
  Result := ConvertZMessageToRaw(cSSQLError3);
end;

function SSQLError4: String;
begin
  Result := ConvertZMessageToRaw(cSSQLError4);
end;

function SListCapacityError: String;
begin
  Result := ConvertZMessageToRaw(cSListCapacityError);
end;

function SListCountError: String;
begin
  Result := ConvertZMessageToRaw(cSListCountError);
end;

function SListIndexError: String;
begin
  Result := ConvertZMessageToRaw(cSListIndexError);
end;

function SClonningIsNotSupported: String;
begin
  Result := ConvertZMessageToRaw(cSClonningIsNotSupported);
end;

function SImmutableOpIsNotAllowed: String;
begin
  Result := ConvertZMessageToRaw(cSImmutableOpIsNotAllowed);
end;

function SStackIsEmpty: String;
begin
  Result := ConvertZMessageToRaw(cSStackIsEmpty);
end;

function SVariableWasNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSVariableWasNotFound);
end;

function SFunctionWasNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSFunctionWasNotFound);
end;

function SInternalError: String;
begin
  Result := ConvertZMessageToRaw(cSInternalError);
end;

function SSyntaxErrorNear: String;
begin
  Result := ConvertZMessageToRaw(cSSyntaxErrorNear);
end;

function SSyntaxError: String;
begin
  Result := ConvertZMessageToRaw(cSSyntaxError);
end;

function SUnknownSymbol: String;
begin
  Result := ConvertZMessageToRaw(cSUnknownSymbol);
end;

function SUnexpectedExprEnd: String;
begin
  Result := ConvertZMessageToRaw(cSUnexpectedExprEnd);
end;

function SRightBraceExpected: String;
begin
  Result := ConvertZMessageToRaw(cSRightBraceExpected);
end;

function SParametersError: String;
begin
  Result := ConvertZMessageToRaw(cSParametersError);
end;

function SParamValueExceeded: String;
begin
  Result := ConvertZMessageToRaw(cSParamValueExceeded);
end;

function SExpectedMoreParams: String;
begin
  Result := ConvertZMessageToRaw(cSExpectedMoreParams);
end;

function SInvalidVarByteArray: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidVarByteArray);
end;

function SVariableAlreadyExists: String;
begin
  Result := ConvertZMessageToRaw(cSVariableAlreadyExists);
end;

function STypesMismatch: String;
begin
  Result := ConvertZMessageToRaw(cSTypesMismatch);
end;

function SUnsupportedVariantType: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedVariantType);
end;

function SUnsupportedOperation: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedOperation);
end;

function STokenizerIsNotDefined: String;
begin
  Result := ConvertZMessageToRaw(cSTokenizerIsNotDefined);
end;

function SLibraryNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSLibraryNotFound);
end;

function SLibraryNotCompatible: String;
begin
  Result := ConvertZMessageToRaw(cSLibraryNotCompatible);
end;

function SCanNotRetrieveResultSetData: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotRetrieveResultSetData);
end;

function SRowBufferIsNotAssigned: String;
begin
  Result := ConvertZMessageToRaw(cSRowBufferIsNotAssigned);
end;

function SColumnIsNotAccessable: String;
begin
  Result := ConvertZMessageToRaw(cSColumnIsNotAccessable);
end;

function SConvertionIsNotPossible: String;
begin
  Result := ConvertZMessageToRaw(cSConvertionIsNotPossible);
end;

function SCanNotAccessBlobRecord: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotAccessBlobRecord);
end;

function SRowDataIsNotAvailable: String;
begin
  Result := ConvertZMessageToRaw(cSRowDataIsNotAvailable);
end;

function SResolverIsNotSpecified: String;
begin
  Result := ConvertZMessageToRaw(cSResolverIsNotSpecified);
end;

function SResultsetIsAlreadyOpened: String;
begin
  Result := ConvertZMessageToRaw(cSResultsetIsAlreadyOpened);
end;

function SCanNotUpdateEmptyRow: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotUpdateEmptyRow);
end;

function SCanNotUpdateDeletedRow: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotUpdateDeletedRow);
end;

function SCanNotDeleteEmptyRow: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotDeleteEmptyRow);
end;

function SCannotUseCommit: String;
begin
  Result := ConvertZMessageToRaw(cSCannotUseCommit);
end;

function SCannotUseRollBack: String;
begin
  Result := ConvertZMessageToRaw(cSCannotUseRollBack);
end;

function SCanNotUpdateComplexQuery: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotUpdateComplexQuery);
end;

function SCanNotUpdateThisQueryType: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotUpdateThisQueryType);
end;

function SDriverWasNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSDriverWasNotFound);
end;

function SCanNotConnectToServer: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotConnectToServer);
end;

function STableIsNotSpecified: String;
begin
  Result := ConvertZMessageToRaw(cSTableIsNotSpecified);
end;

function SLiveResultSetsAreNotSupported: String;
begin
  Result := ConvertZMessageToRaw(cSLiveResultSetsAreNotSupported);
end;

function SInvalidInputParameterCount: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidInputParameterCount);
end;

function SIsolationIsNotSupported: String;
begin
  Result := ConvertZMessageToRaw(cSIsolationIsNotSupported);
end;

function SColumnWasNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSColumnWasNotFound);
end;

function SWrongTypeForBlobParameter: String;
begin
  Result := ConvertZMessageToRaw(cSWrongTypeForBlobParameter);
end;

function SIncorrectConnectionURL: String;
begin
  Result := ConvertZMessageToRaw(cSIncorrectConnectionURL);
end;

function SUnsupportedProtocol: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedProtocol);
end;

function SUnsupportedByDriver: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedByDriver);
end;

function SConnectionIsNotOpened: String;
begin
  Result := ConvertZMessageToRaw(cSConnectionIsNotOpened);
end;

function SConnectionIsOpened: String;
begin
  Result := ConvertZMessageToRaw(cSConnectionIsOpened);
end;

function SInvalidOpInAutoCommit: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidOpInAutoCommit);
end;

function SInvalidOpInNonAutoCommit: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidOpInNonAutoCommit);
end;

function SInvalidOpPrepare: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidOpPrepare);
end;

function SConnectionIsNotAssigned: String;
begin
  Result := ConvertZMessageToRaw(cSConnectionIsNotAssigned);
end;

function SQueryIsEmpty: String;
begin
  Result := ConvertZMessageToRaw(cSQueryIsEmpty);
end;

function SCanNotExecuteMoreQueries: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotExecuteMoreQueries);
end;

function SOperationIsNotAllowed1: String;
begin
  Result := ConvertZMessageToRaw(cSOperationIsNotAllowed1);
end;

function SOperationIsNotAllowed2: String;
begin
  Result := ConvertZMessageToRaw(cSOperationIsNotAllowed2);
end;

function SOperationIsNotAllowed3: String;
begin
  Result := ConvertZMessageToRaw(cSOperationIsNotAllowed3);
end;

function SOperationIsNotAllowed4: String;
begin
  Result := ConvertZMessageToRaw(cSOperationIsNotAllowed4);
end;

function SNoMoreRecords: String;
begin
  Result := ConvertZMessageToRaw(cSNoMoreRecords);
end;

function SCanNotOpenResultSet: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotOpenResultSet);
end;

function SCanNotOpenDataSetWhenDestroying: String;
begin
  Result := ConvertZMessageToRaw(cSCanNotOpenDataSetWhenDestroying);
end;

function SCircularLink: String;
begin
  Result := ConvertZMessageToRaw(cSCircularLink);
end;

function SBookmarkWasNotFound: String;
begin
  Result := ConvertZMessageToRaw(cSBookmarkWasNotFound);
end;

function SIncorrectSearchFieldsNumber: String;
begin
  Result := ConvertZMessageToRaw(cSIncorrectSearchFieldsNumber);
end;

function SInvalidOperationInTrans: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidOperationInTrans);
end;

function SIncorrectSymbol: String;
begin
  Result := ConvertZMessageToRaw(cSIncorrectSymbol);
end;

function SIncorrectToken: String;
begin
  Result := ConvertZMessageToRaw(cSIncorrectToken);
end;

function SIncorrectParamChar: String;
begin
  Result := ConvertZMessageToRaw(cSIncorrectParamChar);
end;

function SSelectedTransactionIsolation: String;
begin
  Result := ConvertZMessageToRaw(cSSelectedTransactionIsolation);
end;

function SDriverNotSupported: String;
begin
  Result := ConvertZMessageToRaw(cSDriverNotSupported);
end;

function SPattern2Long: String;
begin
  Result := ConvertZMessageToRaw(cSPattern2Long);
end;

function SDriverNotCapableOutParameters: String;
begin
  Result := ConvertZMessageToRaw(cSDriverNotCapableOutParameters);
end;

function SStatementIsNotAllowed: String;
begin
  Result := ConvertZMessageToRaw(cSStatementIsNotAllowed);
end;

function SStoredProcIsNotAllowed: String;
begin
  Result := ConvertZMessageToRaw(cSStoredProcIsNotAllowed);
end;

function SCannotPerformOperation: String;
begin
  Result := ConvertZMessageToRaw(cSCannotPerformOperation);
end;

function SInvalidState: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidState);
end;

function SErrorConvertion: String;
begin
  Result := ConvertZMessageToRaw(cSErrorConvertion);
end;

function SDataTypeDoesNotSupported: String;
begin
  Result := ConvertZMessageToRaw(cSDataTypeDoesNotSupported);
end;

function SUnsupportedParameterType: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedParameterType);
end;

function SUnsupportedDataType: String;
begin
  Result := ConvertZMessageToRaw(cSUnsupportedDataType);
end;

function SErrorConvertionField: String;
begin
  Result := ConvertZMessageToRaw(cSErrorConvertionField);
end;

function SBadOCI: String;
begin
  Result := ConvertZMessageToRaw(cSBadOCI);
end;

function SConnect2AsUser: String;
begin
  Result := ConvertZMessageToRaw(cSConnect2AsUser);
end;

function SConnect2WinAuth: String;
begin
  Result := ConvertZMessageToRaw(cSConnect2WinAuth);
end;

function SUnknownError: String;
begin
  Result := ConvertZMessageToRaw(cSUnknownError);
end;

function SFieldNotFound1: String;
begin
  Result := ConvertZMessageToRaw(cSFieldNotFound1);
end;

function SFieldNotFound2: String;
begin
  Result := ConvertZMessageToRaw(cSFieldNotFound2);
end;

function SLoginPromptFailure: String;
begin
  Result := ConvertZMessageToRaw(cSLoginPromptFailure);
end;

function SPropertyQuery: String;
begin
  Result := ConvertZMessageToRaw(cSPropertyQuery);
end;

function SPropertyTables: String;
begin
  Result := ConvertZMessageToRaw(cSPropertyTables);
end;

function SPropertyColumns: String;
begin
  Result := ConvertZMessageToRaw(cSPropertyColumns);
end;

function SPropertyProcedures: String;
begin
  Result := ConvertZMessageToRaw(cSPropertyProcedures);
end;

function SPropertySequences: String;
begin
  Result := ConvertZMessageToRaw(cSPropertySequences);
end;

function SPropertyExecute: String;
begin
  Result := ConvertZMessageToRaw(cSPropertyExecute);
end;

function SFormTest: String;
begin
  Result := ConvertZMessageToRaw(cSFormTest);
end;

function SButtonClose: String;
begin
  Result := ConvertZMessageToRaw(cSButtonClose);
end;

function SFormEditor: String;
begin
  Result := ConvertZMessageToRaw(cSFormEditor);
end;

function STabSheetSelect: String;
begin
  Result := ConvertZMessageToRaw(cSTabSheetSelect);
end;

function SMenuLoad: String;
begin
  Result := ConvertZMessageToRaw(cSMenuLoad);
end;

function SMenuSave: String;
begin
  Result := ConvertZMessageToRaw(cSMenuSave);
end;

function SButtonGenerate: String;
begin
  Result := ConvertZMessageToRaw(cSButtonGenerate);
end;

function SButtonCheck: String;
begin
  Result := ConvertZMessageToRaw(cSButtonCheck);
end;

function SButtonTest: String;
begin
  Result := ConvertZMessageToRaw(cSButtonTest);
end;

function SButtonOk: String;
begin
  Result := ConvertZMessageToRaw(cSButtonOk);
end;

function SButtonCancel: String;
begin
  Result := ConvertZMessageToRaw(cSButtonCancel);
end;

function STableAlias: String;
begin
  Result := ConvertZMessageToRaw(cSTableAlias);
end;

function SReplaceSQL: String;
begin
  Result := ConvertZMessageToRaw(cSReplaceSQL);
end;

function SDialogOpenTitle: String;
begin
  Result := ConvertZMessageToRaw(cSDialogOpenTitle);
end;

function SDialogSaveTitle: String;
begin
  Result := ConvertZMessageToRaw(cSDialogSaveTitle);
end;

function SSQLEditor: String;
begin
  Result := ConvertZMessageToRaw(cSSQLEditor);
end;

function SDatabaseDialog: String;
begin
  Result := ConvertZMessageToRaw(cSDatabaseDialog);
end;

function SUpdateSQLNoResult: String;
begin
  Result := ConvertZMessageToRaw(cSUpdateSQLNoResult);
end;

function SUpdateSQLRefreshStatementcount: String;
begin
  Result := ConvertZMessageToRaw(cSUpdateSQLRefreshStatementcount);
end;

function SNotEditing: String;
begin
  Result := ConvertZMessageToRaw(cSNotEditing);
end;

function SFieldTypeMismatch: String;
begin
  Result := ConvertZMessageToRaw(cSFieldTypeMismatch);
end;

function SFieldSizeMismatch: String;
begin
  Result := ConvertZMessageToRaw(cSFieldSizeMismatch);
end;

function SNeedField: String;
begin
  Result := ConvertZMessageToRaw(cSNeedField);
end;

function SFailedtoInitPrepStmt: String;
begin
  Result := ConvertZMessageToRaw(cSFailedtoInitPrepStmt);
end;

function SFailedtoPrepareStmt: String;
begin
  Result := ConvertZMessageToRaw(cSFailedtoPrepareStmt);
end;

function SFailedToBindAllValues: String;
begin
  Result := ConvertZMessageToRaw(cSFailedToBindAllValues);
end;

function SAttemptExecOnBadPrep: String;
begin
  Result := ConvertZMessageToRaw(cSAttemptExecOnBadPrep);
end;

function SBindingFailure: String;
begin
  Result := ConvertZMessageToRaw(cSBindingFailure);
end;

function SPreparedStmtExecFailure: String;
begin
  Result := ConvertZMessageToRaw(cSPreparedStmtExecFailure);
end;

function SBoundVarStrIndexMissing: String;
begin
  Result := ConvertZMessageToRaw(cSBoundVarStrIndexMissing);
end;

function SBindVarOutOfRange: String;
begin
  Result := ConvertZMessageToRaw(cSBindVarOutOfRange);
end;

function SFailedToBindResults: String;
begin
  Result := ConvertZMessageToRaw(cSFailedToBindResults);
end;

function SPreviousResultStillOpen: String;
begin
  Result := ConvertZMessageToRaw(cSPreviousResultStillOpen);
end;

function SRefreshRowOnlySupportedWithUpdateObject: String;
begin
  Result := ConvertZMessageToRaw(cSRefreshRowOnlySupportedWithUpdateObject);
end;

function SMustBeInBrowseMode: String;
begin
  Result := ConvertZMessageToRaw(cSMustBeInBrowseMode);
end;

function SUnKnownParamDataType: String;
begin
  Result := ConvertZMessageToRaw(cSUnKnownParamDataType);
end;

function SFieldReadOnly: String;
begin
  Result := ConvertZMessageToRaw(cSFieldReadOnly);
end;

function SInvalidUpdateCount: String;
begin
  Result := ConvertZMessageToRaw(cSInvalidUpdateCount);
end;

function SBackgroundOperationStillRunning: String;
begin
  Result := ConvertZMessageToRaw(cSBackgroundOperationStillRunning);
end;
{$ELSE}
procedure loadmessages;
begin
  {$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
  SInvalidGuidArray := cInvalidGuidArray;
  {$ENDIF}
  {$IFNDEF WITH_SBCDOVERFLOW}
  SBcdOverflow := cBcdOverflow;
  {$ENDIF}
  {$IFNDEF WITH_SInvalidBcdValue}
  SInvalidBcdValue := cInvalidBcdValue;
  {$ENDIF}

  SSQLError1 := cSSQLError1;
  SSQLError2 := cSSQLError2;
  SSQLError3 := cSSQLError3;
  SSQLError4 := cSSQLError4;

  SListCapacityError := cSListCapacityError;
  SListCountError := cSListCountError;
  SListIndexError := cSListIndexError;

  SClonningIsNotSupported := cSClonningIsNotSupported;
  SImmutableOpIsNotAllowed := cSImmutableOpIsNotAllowed;
  SStackIsEmpty := cSStackIsEmpty;
  SVariableWasNotFound := cSVariableWasNotFound;
  SFunctionWasNotFound := cSFunctionWasNotFound;
  SInternalError := cSInternalError;
  SSyntaxErrorNear := cSSyntaxErrorNear;
  SSyntaxError := cSSyntaxError;
  SUnknownSymbol := cSUnknownSymbol;
  SUnexpectedExprEnd := cSUnexpectedExprEnd;
  SRightBraceExpected := cSRightBraceExpected;
  SParametersError := cSParametersError;
  SParamValueExceeded := cSParamValueExceeded;

  SExpectedMoreParams := cSExpectedMoreParams;
  SInvalidVarByteArray := cSInvalidVarByteArray;
  SVariableAlreadyExists := cSVariableAlreadyExists;
  STypesMismatch := cSTypesMismatch;
  SUnsupportedVariantType := cSUnsupportedVariantType;
  SUnsupportedOperation := cSUnsupportedOperation;

  STokenizerIsNotDefined := cSTokenizerIsNotDefined;
  SLibraryNotFound := cSLibraryNotFound;
  SLibraryNotCompatible := cSLibraryNotCompatible;

  SCanNotRetrieveResultSetData := cSCanNotRetrieveResultSetData;
  SRowBufferIsNotAssigned := cSRowBufferIsNotAssigned;
  SColumnIsNotAccessable := cSColumnIsNotAccessable;
  SConvertionIsNotPossible := cSConvertionIsNotPossible;
  SCanNotAccessBlobRecord := cSCanNotAccessBlobRecord;
  SRowDataIsNotAvailable := cSRowDataIsNotAvailable;
  SResolverIsNotSpecified := cSResolverIsNotSpecified;
  SResultsetIsAlreadyOpened := cSResultsetIsAlreadyOpened;
  SCanNotUpdateEmptyRow := cSCanNotUpdateEmptyRow;
  SCanNotUpdateDeletedRow := cSCanNotUpdateDeletedRow;
  SCanNotDeleteEmptyRow := cSCanNotDeleteEmptyRow;
  SCannotUseCommit := cSCannotUseCommit;
  SCannotUseRollBack := cSCannotUseRollBack;
  SCanNotUpdateComplexQuery := cSCanNotUpdateComplexQuery;
  SCanNotUpdateThisQueryType := cSCanNotUpdateThisQueryType;
  SDriverWasNotFound := cSDriverWasNotFound;
  SCanNotConnectToServer := cSCanNotConnectToServer;
  STableIsNotSpecified := cSTableIsNotSpecified;
  SLiveResultSetsAreNotSupported := cSLiveResultSetsAreNotSupported;
  SInvalidInputParameterCount := cSInvalidInputParameterCount;
  SIsolationIsNotSupported := cSIsolationIsNotSupported;
  SColumnWasNotFound := cSColumnWasNotFound;
  SWrongTypeForBlobParameter := cSWrongTypeForBlobParameter;
  SIncorrectConnectionURL := cSIncorrectConnectionURL;
  SUnsupportedProtocol := cSUnsupportedProtocol;
  SUnsupportedByDriver := cSUnsupportedByDriver;

  SConnectionIsNotOpened := cSConnectionIsNotOpened;
  SConnectionIsOpened := cSConnectionIsOpened;
  SInvalidOpInAutoCommit := cSInvalidOpInAutoCommit;
  SInvalidOpInNonAutoCommit := cSInvalidOpInNonAutoCommit;
  SInvalidOpPrepare := cSInvalidOpPrepare;

  SConnectionIsNotAssigned := cSConnectionIsNotAssigned;
  SQueryIsEmpty := cSQueryIsEmpty;
  SCanNotExecuteMoreQueries := cSCanNotExecuteMoreQueries;
  SOperationIsNotAllowed1 := cSOperationIsNotAllowed1;
  SOperationIsNotAllowed2 := cSOperationIsNotAllowed2;
  SOperationIsNotAllowed3 := cSOperationIsNotAllowed3;
  SOperationIsNotAllowed4 := cSOperationIsNotAllowed4;
  SNoMoreRecords := cSNoMoreRecords;
  SCanNotOpenResultSet := cSCanNotOpenResultSet;
  SCanNotOpenDataSetWhenDestroying := cSCanNotOpenDataSetWhenDestroying;
  SCircularLink := cSCircularLink;
  SBookmarkWasNotFound := cSBookmarkWasNotFound;
  SIncorrectSearchFieldsNumber := cSIncorrectSearchFieldsNumber;
  SInvalidOperationInTrans := cSInvalidOperationInTrans;
  SIncorrectSymbol := cSIncorrectSymbol;
  SIncorrectToken := cSIncorrectToken;
  SIncorrectParamChar := cSIncorrectParamChar;

  SSelectedTransactionIsolation := cSSelectedTransactionIsolation;
  SDriverNotSupported := cSDriverNotSupported;
  SPattern2Long := cSPattern2Long;
  SDriverNotCapableOutParameters := cSDriverNotCapableOutParameters;
  SStatementIsNotAllowed := cSStatementIsNotAllowed;
  SStoredProcIsNotAllowed := cSStoredProcIsNotAllowed;
  SCannotPerformOperation := cSCannotPerformOperation;
  SInvalidState := cSInvalidState;
  SErrorConvertion := cSErrorConvertion;
  SDataTypeDoesNotSupported := cSDataTypeDoesNotSupported;
  SUnsupportedParameterType := cSUnsupportedParameterType;
  SUnsupportedDataType := cSUnsupportedDataType;
  SErrorConvertionField := cSErrorConvertionField;
  SBadOCI := cSBadOCI;
  SConnect2AsUser := cSConnect2AsUser;
  SConnect2WinAuth := cSConnect2WinAuth;
  SUnknownError := cSUnknownError;
  SFieldNotFound1 := cSFieldNotFound1;
  SFieldNotFound2 := cSFieldNotFound2;

  SLoginPromptFailure := cSLoginPromptFailure;

  SPropertyQuery := cSPropertyQuery;
  SPropertyTables := cSPropertyTables;
  SPropertyColumns := cSPropertyColumns;
  SPropertyProcedures := cSPropertyProcedures;
  SPropertySequences := cSPropertySequences;
  SPropertyExecute := cSPropertyExecute;

  SFormTest := cSFormTest;
  SButtonClose := cSButtonClose;
  SFormEditor := cSFormEditor;
  STabSheetSelect := cSTabSheetSelect;
  SMenuLoad := cSMenuLoad;
  SMenuSave := cSMenuSave;
  SButtonGenerate := cSButtonGenerate;
  SButtonCheck := cSButtonCheck;
  SButtonTest := cSButtonTest;
  SButtonOk := cSButtonOk;
  SButtonCancel := cSButtonCancel;
  STableAlias := cSTableAlias;
  SReplaceSQL := cSReplaceSQL;
  SDialogOpenTitle := cSDialogOpenTitle;
  SDialogSaveTitle := cSDialogSaveTitle;
  SSQLEditor := cSSQLEditor;
  SDatabaseDialog := cSDatabaseDialog;

  SUpdateSQLNoResult := cSUpdateSQLNoResult;
  SUpdateSQLRefreshStatementcount := cSUpdateSQLRefreshStatementcount;
  {$IFDEF FPC}
  SNotEditing := cSNotEditing;
  SFieldTypeMismatch := cSFieldTypeMismatch;
  SFieldSizeMismatch := cSFieldSizeMismatch;
  {$ENDIF}
  SNeedField := cSNeedField;

  SFailedtoInitPrepStmt := cSFailedtoInitPrepStmt;
  SFailedtoPrepareStmt := cSFailedtoPrepareStmt;
  SFailedToBindAllValues := cSFailedToBindAllValues;
  SAttemptExecOnBadPrep := cSAttemptExecOnBadPrep;
  SBindingFailure := cSBindingFailure;
  SPreparedStmtExecFailure := cSPreparedStmtExecFailure;
  SBoundVarStrIndexMissing := cSBoundVarStrIndexMissing;
  SBindVarOutOfRange := cSBindVarOutOfRange;
  SFailedToBindResults := cSFailedToBindResults;
  SPreviousResultStillOpen := cSPreviousResultStillOpen;

  SRefreshRowOnlySupportedWithUpdateObject := cSRefreshRowOnlySupportedWithUpdateObject;
  SMustBeInBrowseMode := cSMustBeInBrowseMode;

  SUnKnownParamDataType := cSUnKnownParamDataType;
  SFieldReadOnly := cSFieldReadOnly;
  SInvalidUpdateCount := cSInvalidUpdateCount;

  SBackgroundOperationStillRunning := cSBackgroundOperationStillRunning;
end;

initialization
  loadmessages;
{$IFEND}
end.




