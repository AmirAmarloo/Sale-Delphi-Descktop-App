{$I Direct.Inc}

unit DMUProcces;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, DB, {$I MbUses.Inc};

type
  TDM_Procces = class(TDataModule)
    qrPSaleFact: TQuery;
    DsPSaleFact: TDataSource;
    qrPSaleFactDOC_M_CODE: TFloatField;
    qrPSaleFactDOC_M_DATE: TStringField;
    qrPSaleFactDOC_M_YEAR: TFloatField;
    qrTmp: TQuery;
    qrPItmFact: TQuery;
    qrPItmFactDet: TQuery;
    usPItmFactDet: TUpdateSQL;
    dsPItmFactDet: TDataSource;
    dsPItmFact: TDataSource;
    qrPDraft: TQuery;
    dsPDraft: TDataSource;
    qrPDraftDOC_M_CODE: TFloatField;
    qrPDraftDOC_M_YEAR: TFloatField;
    qrPDraftDOC_M_DATE: TStringField;
    qrPItmFactDetGDS_CODE: TStringField;
    qrPItmFactDetITMQTY: TFloatField;
    spPReIndex: TStoredProc;
    spPFinal: TStoredProc;
    spPRejFinal: TStoredProc;
    qrPSaleFactInsert: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    qrPInvPrd: TQuery;
    usPInvPrd: TUpdateSQL;
    dsPInvPrd: TDataSource;
    qrPInvPrdGDS_CODE: TStringField;
    qrPInvPrdINVQTY: TFloatField;
    spPRevoke: TStoredProc;
    spPSrvReIndex: TStoredProc;
    spPSrvFinal: TStoredProc;
    spPSrvRejFinal: TStoredProc;
    spPSrvRevoke: TStoredProc;
    spPSaleVch: TStoredProc;
    dsPVchPro: TDataSource;
    qrPVchPro: TQuery;
    qrPVchProERRSTR: TStringField;
    spPReVoch: TStoredProc;
    spPDelVoch: TStoredProc;
    spPSendVch: TStoredProc;
    spPSendDate: TStoredProc;
    qrError: TQuery;
    dsError: TDataSource;
    qrErrorITMNO: TFloatField;
    qrErrorDESC1: TStringField;
    qrTemp: TQuery;
    qrPItmFactDetABATE: TFloatField;
    qrPItmFactDetPACKVALUE: TFloatField;
    qrPItmFactDetPREPAY: TFloatField;
    qrPDraftCUT_CODE: TFloatField;
    qrPDraftCUSTNAME: TStringField;
    qrPDraftCUST_ADD: TStringField;
    qrPDraftORD_NO: TFloatField;
    qrPDraftGDS_CODE: TStringField;
    qrPDraftDOC_D_REQQTY: TFloatField;
    qrPDraftGDS_DESCF: TStringField;
    qrPEditAdd: TQuery;
    qrPDataTransmit: TQuery;
    Query1: TQuery;
    qrInsert: TQuery;
    qrPReciveData: TQuery;
    dsRError: TDataSource;
    qrRError: TQuery;
    qrRErrorRJ_CODE: TStringField;
    qrRErrorRJ_DESC: TStringField;
    qrRErrorRJ_TNAME: TStringField;
    qrRErrorRJ_RESONE: TStringField;
    qrRErrorRJ_BRCODE: TFloatField;
    qrRErrorRJ_DATE: TStringField;
    qrRErrorBR_NAME: TStringField;
    qrTempRcv: TQuery;
    spOfferV: TStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  DM_Procces: TDM_Procces;

implementation
uses Utility,UMessage,Functions, Vars, DMUDataBase;

{$R *.dfm}

procedure TDM_Procces.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_Procces.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TDM_Procces.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

end.

