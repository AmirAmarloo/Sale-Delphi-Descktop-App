{$I Direct.Inc}
unit DMUContract;

interface

uses


  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, DB, {$I MbUses.Inc};

type
  TDM_Contract = class(TDataModule)
    qrEContract: TQuery;
    qrETemp: TQuery;
    usEContract: TUpdateSQL;
    dsEContract: TDataSource;
    dsEContractDet: TDataSource;
    qrEContractDet: TQuery;
    usEContractDet: TUpdateSQL;
    qrEContractCNTCODE: TStringField;
    qrEContractPRFNUM: TFloatField;
    qrEContractCNTDTE: TStringField;
    qrEContractCNTSUBJ: TStringField;
    qrEContractCNTSTAT: TFloatField;
    qrEContractCNTTYP: TFloatField;
    qrEContractCUSTNAME: TStringField;
    qrEContractECONOMIC_CODE: TStringField;
    qrEContractCUSTTEL: TStringField;
    qrEContractCUSTADR: TStringField;
    qrEContractPRJDESC: TStringField;
    qrEContractCOUNTRY_NAME: TStringField;
    qrEContractFDATE: TStringField;
    qrEContractDetGDS_DESCF: TStringField;
    qrEContractDetGDS_DESCL: TStringField;
    qrEContractDetCU_NAME: TStringField;
    qrEContractDetTOTCOST: TFloatField;
    qrERider_M: TQuery;
    UpERider_M: TUpdateSQL;
    DsERider_M: TDataSource;
    DsERider_D: TDataSource;
    qrERider_D: TQuery;
    UpERider_D: TUpdateSQL;
    qrERider_MCNTCODE: TStringField;
    qrERider_MRISRL: TFloatField;
    qrERider_MRIDATE: TStringField;
    qrERider_MRIDESC: TStringField;
    qrERider_MRIDSTAT: TFloatField;
    qrERider_DRDQTY: TFloatField;
    qrERider_DCF_GdsName: TStringField;
    qrERider_DCF_LatinName: TStringField;
    qrERider_MCF_CustCode: TStringField;
    qrERider_MCF_CustName: TStringField;
    qrERider_MCF_PrjName: TStringField;
    dsEGHCnt: TDataSource;
    usEGHCnt: TUpdateSQL;
    qrEGHCnt: TQuery;
    qrEGHCntCNTCODE: TStringField;
    qrEGHCntFCNTDTE: TStringField;
    qrEGHCntFCNTOFUNT: TStringField;
    qrEGHCntFCNTOUNT: TStringField;
    qrEGHCntFCNTDESC: TStringField;
    qrEGHCntFCNTSTAT: TFloatField;
    qrEGHCntCUSTNAME: TStringField;
    qrEGHCntPRJDESC: TStringField;
    qrEGHCntCNTDTE: TStringField;
    usEGHCntDet: TUpdateSQL;
    dsEGHCntDet: TDataSource;
    qrEGHCntDet: TQuery;
    qrEAttach: TQuery;
    dsEAttach: TDataSource;
    qrEAttachCNTCODE: TStringField;
    qrEAttachRISRL: TFloatField;
    qrEAttachRIDATE: TStringField;
    qrEAttachRIDESC: TStringField;
    qrEAttachRIDSTAT: TFloatField;
    qrEAttachROWNUM: TFloatField;
    qrERider_MCF_CntDte: TStringField;
    qrETec: TQuery;
    dsETec: TDataSource;
    qrETecUNT_DESC: TStringField;
    qrETecTECID: TStringField;
    qrETecTECDESC: TStringField;
    qrETecUNT_CODE: TFloatField;
    qrERider_DCF_Price: TFloatField;
    qrEComplement_M: TQuery;
    UpEComplement_M: TUpdateSQL;
    DsEComplement_M: TDataSource;
    DsEComplement_D: TDataSource;
    qrEComplement_D: TQuery;
    UpEComplement_D: TUpdateSQL;
    qrEComplement_MCNTCODE: TStringField;
    qrEComplement_MRISRL: TFloatField;
    qrEComplement_MCMPLCODE: TStringField;
    qrEComplement_MCMPLDATE: TStringField;
    qrEComplement_MCMPLFRMUNT: TStringField;
    qrEComplement_MCMPLTOUNT: TStringField;
    qrEComplement_MCMPLDOC: TStringField;
    qrEComplement_MCMPSTATE: TFloatField;
    qrEComplement_DCNTCODE: TStringField;
    qrEComplement_DRISRL: TFloatField;
    qrEComplement_DCMPLSEQ: TFloatField;
    qrEComplement_DGDS_CODE: TStringField;
    qrEComplement_DCMPLNUM: TFloatField;
    qrEComplement_DCF_Gdsname: TStringField;
    qrEComplement_DCF_LatinName: TStringField;
    qrEComplement_MCF_PrjName: TStringField;
    qrEComplement_MCF_CustName: TStringField;
    qrEComplement_MCF_CntDte: TStringField;
    qrEComplement_DCMPLYEAR: TFloatField;
    qrEComplement_DCMPLMON: TFloatField;
    qrEComplement_DCMPLDAY: TFloatField;
    usECntLaw: TUpdateSQL;
    qrECntLaw: TQuery;
    dsECntLaw: TDataSource;
    qrECntLawCNTCODE: TStringField;
    qrECntLawLOWID: TFloatField;
    qrECntLawLOWDESC: TStringField;
    qrEGHCntFCNTNUM: TStringField;
    qrEGHCntDetCNTCODE: TStringField;
    qrEGHCntDetFCNTROW: TFloatField;
    qrEGHCntDetGDS_CODE: TStringField;
    qrEGHCntDetFCNTYEAR: TFloatField;
    qrEGHCntDetFCNTMON: TFloatField;
    qrEGHCntDetFCNTDAY: TFloatField;
    qrEGHCntDetFCNTQTY: TFloatField;
    qrERider_DCNTCODE: TStringField;
    qrERider_DRISRL: TFloatField;
    qrERider_DRDROW: TFloatField;
    qrERider_DCU_CODE: TFloatField;
    qrERider_DGDS_CODE: TStringField;
    qrERider_DRDDESC: TStringField;
    qrERider_DRDPRICE: TFloatField;
    qrEContractDetCNT_ARZ_PRICE: TFloatField;
    qrEContractDetTOTARZCOST: TIntegerField;
    qrEContractCUSTNO: TFloatField;
    qrEContractPRJCODE: TFloatField;
    qrEContractCF_PRJNAME: TStringField;
    qrEContractCF_CUSTNAME: TStringField;
    qrEContractDetCNTCODE: TStringField;
    qrEContractDetCNTROW: TFloatField;
    qrEContractDetCU_CODE: TFloatField;
    qrEContractDetGDS_CODE: TStringField;
    qrEContractDetCNTQTY: TFloatField;
    qrEContractDetCNTPRICE: TFloatField;
    qrEOffValidity: TQuery;
    qrEOffValidityADCODE: TFloatField;
    qrEOffValidityADNUM3: TFloatField;
    qrEOffValidityADNUM4: TFloatField;
    qrEOffValidityADNUM5: TFloatField;
    qrEOffValidityADVAL: TFloatField;
    qrEOffValidityADARZVAL: TFloatField;
    qrEOffValidityADDDESC: TStringField;
    qrEOffValidityADDTYPE: TStringField;
    qrEOffValidityADKIND: TStringField;
    qrEOffValidityCF_SUM: TFloatField;
    qrEOffValidityPART: TFloatField;
    usEOffValidity: TUpdateSQL;
    dsEOffValidity: TDataSource;
    qrEOffValidityADNUM1: TStringField;
    qrEContractORD_DELV_NO: TFloatField;
    qrRPrintCnt: TQuery;
    qrRPrintCntCNTCODE: TStringField;
    qrRPrintCntFCNTNUM: TStringField;
    qrRPrintCntCNTDTE: TStringField;
    qrRPrintCntCUSTNO: TFloatField;
    qrRPrintCntFCNTDTE: TStringField;
    qrRPrintCntFCNTROW: TFloatField;
    qrRPrintCntGDS_CODE: TStringField;
    qrRPrintCntFCNTQTY: TFloatField;
    qrRPrintCntFCNTYEAR: TFloatField;
    qrRPrintCntFCNTMON: TFloatField;
    qrRPrintCntFCNTDAY: TFloatField;
    qrRPrintCntCF_CUSTNAME: TStringField;
    qrRPrintCntCF_PRJNAME: TStringField;
    qrRPrintCntCF_FCNTDTEREC: TStringField;
    qrRPrintCntPRJCODE: TFloatField;
    dsRPrintCnt: TDataSource;
    qrRPrintLGHCnt: TQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    dsRPrintLGHCnt: TDataSource;
    qrRPrintLGHCntCNTCODE: TStringField;
    qrRPrintLGHCntCNTDTE: TStringField;
    qrRPrintLGHCntCUSTNO: TFloatField;
    qrRPrintLGHCntCMPLSEQ: TFloatField;
    qrRPrintLGHCntGDS_CODE: TStringField;
    qrRPrintLGHCntCMPLNUM: TFloatField;
    qrRPrintLGHCntCMPLYEAR: TFloatField;
    qrRPrintLGHCntCMPLMON: TFloatField;
    qrRPrintLGHCntCMPLDAY: TFloatField;
    qrRPrintLGHCntRISRL: TFloatField;
    qrRPrintLGHCntCMPLCODE: TStringField;
    qrRPrintLGHCntCMPLDATE: TStringField;
    qrRPrintLGHCntCF_CUSTNAME: TStringField;
    qrRPrintLGHCntRIDATE: TStringField;
    qrEOffValidityADNUM2: TStringField;
    qrEContractDetPREPAY: TFloatField;
    qrEContractDetPACK_TYPE: TFloatField;
    qrEContractDetGDS_INFO: TFloatField;
    qrGdsInfo: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    dsGdsInfo: TDataSource;
    qrEContractDetGDSINFO: TStringField;
    qrEContractDetCNT_FINALQTY: TFloatField;
    qrEContractDetCF_FINALQTY: TFloatField;
    qrDOrderList: TQuery;
    dsDOrderList: TDataSource;
    qrDOrderListORD_CODE: TFloatField;
    qrDOrderListORD_DATE: TStringField;
    qrDOrderListORD_FINALQTY: TFloatField;
    qrEContractDetPCOST: TFloatField;
    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure qrEGHCntNewRecord(DataSet: TDataSet);
    procedure qrERider_DRDQTYValidate(Sender: TField);
    procedure qrERider_DRDPRICEValidate(Sender: TField);
    procedure qrERider_DCU_CODEValidate(Sender: TField);
    procedure qrEComplement_DCMPLMONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrEComplement_DCMPLMONSetText(Sender: TField;
      const Text: String);
    procedure qrERider_MRIDSTATGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrERider_MRIDSTATSetText(Sender: TField; const Text: String);
    procedure qrEComplement_MCMPSTATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrEComplement_MCMPSTATESetText(Sender: TField;
      const Text: String);
    procedure qrEComplement_DCMPLNUMValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Contract: TDM_Contract;

implementation

uses Utility,UMessage,Functions, Vars;
{$R *.dfm}

{ TDM_Contract }

procedure TDM_Contract.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_Contract.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TDM_Contract.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

procedure TDM_Contract.qrEGHCntNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FCNTSTAT').AsString:= '1';
end;

procedure TDM_Contract.qrERider_DRDQTYValidate(Sender: TField);
begin
  If (Sender.AsFloat > 9999999999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_Contract.qrERider_DRDPRICEValidate(Sender: TField);
begin
  If (Sender.AsFloat > 9999999999999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_Contract.qrERider_DCU_CODEValidate(Sender: TField);
begin
  If Not (Sender.AsString = '') Then
    If Not ExistArz(Sender.AsString) Then
    begin
      MbError(InvalidCode);
      Abort;
    end;
end;

procedure TDM_Contract.qrEComplement_DCMPLMONGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Case Sender.AsInteger Of
    _FarvardinVal   : Text := _FarvardinStr;
    _OrdibeheshtVal : Text := _OrdibeheshtStr;
    _KhordadVal     : Text := _KhordadStr;
    _TirVal       : Text := _TirStr;
    _MordadVal    : Text := _MordadStr;
    _ShahrivarVal : Text := _ShahrivarStr;
    _MehrVal      : Text := _MehrStr;
    _AbanVal      : Text := _AbanStr;
    _AzarVal      : Text := _AzarStr;
    _DeyVal       : Text := _DeyStr;
    _BahmanVal    : Text := _BahmanStr;
    _EsfandVal    : Text := _EsfandStr;
  end;
end;

procedure TDM_Contract.qrEComplement_DCMPLMONSetText(Sender: TField;
  const Text: String);
begin
  If Text = _FarvardinStr Then
    Sender.AsInteger := _FarvardinVal
  else If Text = _OrdibeheshtStr Then
    Sender.AsInteger := _OrdibeheshtVal
  else If Text = _KhordadStr Then
    Sender.AsInteger := _KhordadVal
  else If Text = _TirStr Then
    Sender.AsInteger := _TirVal
  else If Text = _Mordadstr Then
    Sender.AsInteger := _MordadVal
  else If Text = _ShahrivarStr Then
    Sender.AsInteger := _ShahrivarVal
  else If Text = _MehrStr Then
    Sender.AsInteger := _MehrVal
  else If Text = _AbanStr Then
    Sender.AsInteger := _AbanVal
  else If Text = _AzarStr Then
    Sender.AsInteger := _AzarVal
  else If Text = _DeyStr Then
    Sender.AsInteger := _DeyVal
  else If Text = _BahmanStr Then
    Sender.AsInteger := _BahmanVal
  else If Text = _EsfandStr Then
    Sender.AsInteger := _EsfandVal
end;

procedure TDM_Contract.qrERider_MRIDSTATGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Case Sender.AsInteger Of
    _ConfirmVal   : Text := _ConfirmStr;
    _DisConfirmVal : Text := _DisConfirmStr
  else
    Text := _DisConfirmStr;
  end;
end;

procedure TDM_Contract.qrERider_MRIDSTATSetText(Sender: TField;
  const Text: String);
begin
  If Text = _ConfirmStr Then
    Sender.AsInteger := _ConfirmVal
  else If Text = _DisConfirmStr Then
    Sender.AsInteger := _DisConfirmVal
end;

procedure TDM_Contract.qrEComplement_MCMPSTATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Case Sender.AsInteger Of
    _ConfirmVal   : Text := _ConfirmStr;
    _DisConfirmVal : Text := _DisConfirmStr
  else
    Text := _DisConfirmStr;
  end;
end;

procedure TDM_Contract.qrEComplement_MCMPSTATESetText(Sender: TField;
  const Text: String);
begin
  If Text = _ConfirmStr Then
    Sender.AsInteger := _ConfirmVal
  else If Text = _DisConfirmStr Then
    Sender.AsInteger := _DisConfirmVal
end;

procedure TDM_Contract.qrEComplement_DCMPLNUMValidate(Sender: TField);
begin
  If (Sender.AsFloat > 9999999999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

end.
