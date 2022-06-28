{$I Direct.Inc}
unit DMUDataEntry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,{$I MbUses.Inc};

type
  TDM_DataEntry = class(TDataModule)
    qrEEnTPrj: TQuery;
    dsEEntPrj: TDataSource;
    qrEEnTPrjPRJCODE: TFloatField;
    qrEEnTPrjCOUNTERY_CODE: TFloatField;
    qrEEnTPrjCUSTNO: TFloatField;
    qrEEnTPrjTAFSILY_CODE: TFloatField;
    qrEEnTPrjMOIN_YEAR: TFloatField;
    qrEEnTPrjMOIN_CODE: TFloatField;
    qrEEnTPrjCUSTNAME: TStringField;
    qrEEnTPrjCUSECO: TStringField;
    qrEEnTPrjCUSTADD: TStringField;
    qrEEnTPrjCUSTPOST: TStringField;
    qrEEnTPrjCUSTTEL: TStringField;
    qrEEnTPrjCUSTGRP: TFloatField;
    qrEEnTPrjCUSTMAIL: TStringField;
    qrEEnTPrjCF_PRJNAME: TStringField;
    qrTmp: TQuery;
    dsEVochCus_M: TDataSource;
    qrEVochCus_M: TQuery;
    qrEVochCus_MBINUM: TStringField;
    qrEVochCus_MCUSTNO: TFloatField;
    qrEVochCus_MBIDATE: TStringField;
    qrEVochCus_MBIPRICE: TFloatField;
    qrEVochCus_MBIDESC: TStringField;
    qrEVochCus_MBISTATUS: TFloatField;
    qrEVochCus_MBIREF: TStringField;
    qrEVochCus_MPRJCODE: TFloatField;
    usVochCus_M: TUpdateSQL;
    qrEVochCus_D: TQuery;
    dsEVochCus_D: TDataSource;
    usEVochCus_D: TUpdateSQL;
    qrEVochCus_DBINUM: TStringField;
    qrEVochCus_DBIROW: TFloatField;
    qrEVochCus_DGDS_CODE: TStringField;
    qrEVochCus_DBIQTY: TFloatField;
    qrEVochCus_DBIDLVDTE: TStringField;
    qrEVochCus_MCF_CUSNAME: TStringField;
    qrEVochCus_DCF_FDESC: TStringField;
    qrEVochCus_DCF_LDESC: TStringField;
    qrEVochCus_DCF_PRTNO: TStringField;
    qrEVochCus_MCF_PRJDESC: TStringField;
    qrEVochCus_MCF_TEL: TStringField;
    qrEVochCus_MCF_POST: TStringField;
    qrEVochCus_MCF_CODE: TStringField;
    qrEVochCus_MCF_COUNTRY: TStringField;
    qrEVochCus_MCF_ADD: TStringField;
    qrEVochComp_M: TQuery;
    dsEVochComp_M: TDataSource;
    usEVochComp_M: TUpdateSQL;
    qrEVochComp_MBINUM: TStringField;
    qrEVochComp_MCUSTNO: TFloatField;
    qrEVochComp_MBIDATE: TStringField;
    qrEVochComp_MBIPRICE: TFloatField;
    qrEVochComp_MBIDESC: TStringField;
    qrEVochComp_MBISTATUS: TFloatField;
    qrEVochComp_MBIREF: TStringField;
    qrEVochComp_MPRJCODE: TFloatField;
    qrEVochComp_D: TQuery;
    dsEVochComp_D: TDataSource;
    usEVochComp_D: TUpdateSQL;
    qrEVochComp_DBINUM: TStringField;
    qrEVochComp_DBIROW: TFloatField;
    qrEVochComp_DGDS_CODE: TStringField;
    qrEVochComp_DBIQTY: TFloatField;
    qrEVochComp_DBIDLVDTE: TStringField;
    qrEVochComp_MCF_CUSNAME: TStringField;
    qrEVochComp_MCF_PRJDESC: TStringField;
    qrEVochComp_MCF_TEL: TStringField;
    qrEVochComp_MCF_POST: TStringField;
    qrEVochComp_MCF_CODE: TStringField;
    qrEVochComp_MCF_COUNTRY: TStringField;
    qrEVochComp_MCF_ADD: TStringField;
    qrEVochComp_DCF_FDESC: TStringField;
    qrEVochComp_DCF_LDESC: TStringField;
    qrEVochComp_DCF_PRTNO: TStringField;
    qrEVochCus_MBIDTYPE: TFloatField;
    qrEVochCus_DBIDTYPE: TFloatField;
    qrEVochComp_MBIDTYPE: TFloatField;
    qrEVochComp_DBIDTYPE: TFloatField;
    qrEBalance: TQuery;
    usEBalance: TUpdateSQL;
    dsEBalance: TDataSource;
    qrEBalanceDECNUM: TFloatField;
    qrEBalanceDECDOC: TStringField;
    qrEBalanceDECDTE: TStringField;
    qrEBalanceCUSTNO: TFloatField;
    qrEBalanceDECDEBIT: TFloatField;
    qrEBalanceDECCREDIT: TFloatField;
    qrEBalanceMOIN_CODE: TFloatField;
    qrEBalanceMOIN_YEAR: TFloatField;
    qrEBalanceTAFSILY_CODE: TFloatField;
    qrEBalanceCNTCODE: TStringField;
    qrEBalanceMOINDESC: TStringField;
    qrEBalanceTAFSILYDESC: TStringField;
    qrEBalanceCNTDESC: TStringField;
    qrEBalanceCUSTNAME: TStringField;
    qrEAccSale: TQuery;
    dsEAccSale: TDataSource;
    qrEAccSaleGDS_CODE: TStringField;
    qrEAccSaleMOIN_CODE: TFloatField;
    qrEAccSaleMOIN_YEAR: TFloatField;
    usEAccSale: TUpdateSQL;
    qrEAccSaleGDS_DESC: TStringField;
    qrEAccSaleMOIN_DESC: TStringField;
    qrEAccCust: TQuery;
    dsEAccCust: TDataSource;
    usEAccCust: TUpdateSQL;
    qrEAccCustCUSTNO: TFloatField;
    qrEAccCustMOIN_YEAR: TFloatField;
    qrEAccCustMOIN_CODE: TFloatField;
    qrEAccCustMOIN_DESC: TStringField;
    qrEAccCustGDS_DESC: TStringField;
    qrEAccAddSub: TQuery;
    dsEAccAddSub: TDataSource;
    usEAccAddSub: TUpdateSQL;
    qrEAccAddSubADCODE: TFloatField;
    qrEAccAddSubMOIN_YEAR: TFloatField;
    qrEAccAddSubMOIN_CODE: TFloatField;
    qrEAccAddSubADDESC: TStringField;
    qrEAccAddSubMOIN_DESC: TStringField;
    qrEAccSaleTAF_CODE: TFloatField;
    qrEAccCustTAF_CODE: TFloatField;
    qrEAccAddSubTAF_CODE: TFloatField;
    qrEAccSaleTAF_DESC: TStringField;
    qrEAccCustTAF_DESC: TStringField;
    qrEAccAddSubTAF_DESC: TStringField;
    qrEAccCustSEC_TAF_CODE: TFloatField;
    qrEAccCustSEC_TAF_DESC: TStringField;
    qrEAccSaleMOIN_CODE_EX: TFloatField;
    qrEAccSaleTAF_CODE_EX: TFloatField;
    qrEAccSaleMOIN_DESC_EX: TStringField;
    qrEAccSaleTAF_DESC_EX: TStringField;
    qrEPosition: TQuery;
    usEPosition: TUpdateSQL;
    dsEPosition: TDataSource;
    qrEPositionP_CODE: TFloatField;
    qrEPositionP_DESC: TStringField;
    qrEPenalty: TQuery;
    dsEPenalty: TDataSource;
    usEPenalty: TUpdateSQL;
    qrEPenaltyPN_VCODE: TStringField;
    qrEPenaltyPN_DATE: TStringField;
    qrEPenaltyPN_AMOUNT: TFloatField;
    qrEPenaltyCF_VISITORNAME: TStringField;
    qrEExceptGoods: TQuery;
    usEExceptGoods: TUpdateSQL;
    dsEExceptGoods: TDataSource;
    qrEExceptGoodsEX_GDSCODE: TStringField;
    qrEExceptGoodsEX_TYPE: TFloatField;
    qrEExceptGoodsCF_GOODSNAME: TStringField;
    qrEPositionP_RATE: TFloatField;
    qrEManageGroup: TQuery;
    dsEManageGroup: TDataSource;
    usEManageGroup: TUpdateSQL;
    qrEManageGroupM_CODE: TStringField;
    qrEManageGroupM_DESC: TStringField;
    qrEAccSaleONLINEMONE_CODE: TFloatField;
    qrEAccSaleONLINEMOIN_CODE_EX: TFloatField;
    qrEAccSaleONLINEMONE_DESC: TStringField;
    qrEAccSaleONLINEMONEEX_DESC: TStringField;
  procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure qrEAccSaleCalcFields(DataSet: TDataSet);
    procedure qrEAccSaleAfterEdit(DataSet: TDataSet);
    procedure qrEPositionP_RATEValidate(Sender: TField);
    procedure qrEPenaltyCalcFields(DataSet: TDataSet);
    procedure qrEPenaltyPN_AMOUNTValidate(Sender: TField);
    procedure qrEPenaltyPN_DATEValidate(Sender: TField);
    procedure qrEExceptGoodsEX_TYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrEExceptGoodsEX_TYPESetText(Sender: TField;
      const Text: String);
    procedure qrEExceptGoodsEX_GDSCODEValidate(Sender: TField);
    procedure qrEExceptGoodsCalcFields(DataSet: TDataSet);
    procedure qrEExceptGoodsNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_DataEntry: TDM_DataEntry;

implementation

uses Utility, Help, Functions, UMessage;

{$R *.DFM}
//==============================================================================
procedure TDM_DataEntry.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

//==============================================================================
procedure TDM_DataEntry.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

//==============================================================================

procedure TDM_DataEntry.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_DataEntry.qrEAccSaleCalcFields(DataSet: TDataSet);
begin
IF  qrEAccsale.FieldByName('GDS_CODE').AsString <> '' THEN
    qrEAccsale.FieldByName('CF_GDS_DESCF').AsString :=  FindGdsFDesc(qrEAccsale.FieldByName('GDS_CODE').AsString);
IF  qrEAccsale.FieldByName('MOIN_CODE').AsString <> '' THEN
    qrEAccsale.FieldByName('CF_MOIN_NAME').AsString :=  FindMoinName(qrEAccsale.FieldByName('MOIN_CODE').AsString);

    {
  with qrTmp, SQL do
  begin
    Sql.Clear;
    Sql.Add('SELECT  GDS_DESCF               ');
    Sql.Add('FROM    GOODS                    ');
    Sql.Add('where    GDS_CODE = :GDS           ');
    ParamByName('GDS').AsInteger:= DM_DATAENTRY.qrEAccsale.FieldByName('GDS_CODE').AsInteger;
    Sql := MbSqlConvert(Sql);
    Open;
    First;
  END;

TDM_DataEntry.qrEAccsale.FieldByName('Cf_Gds_Descf').AsString  := TDM_DataEntry.qrRprintsrvfact.FieldByName('PRCNO').AsString;
FindGdsFDesc(DBGdsCode.Text)}
end;

procedure TDM_DataEntry.qrEAccSaleAfterEdit(DataSet: TDataSet);
begin
      qrEAccsale.FieldByName('MOIN_YEAR').AsInteger:= SYSTEM_YY;
end;

procedure TDM_DataEntry.qrEPositionP_RATEValidate(Sender: TField);
begin
  if Sender.AsFloat > 999999999 then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_DataEntry.qrEPenaltyCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_VISITORNAME').AsString := GetVisitorName(DataSet.FieldByName('PN_VCODE').AsString);
end;

procedure TDM_DataEntry.qrEPenaltyPN_AMOUNTValidate(Sender: TField);
begin
  if Sender.AsFloat > 999999999 then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_DataEntry.qrEPenaltyPN_DATEValidate(Sender: TField);
begin
  If Not MsDateIsValid1(Sender.AsString, False) Then
  begin
    MbError(InvalidDate);
    Abort;
  end;
end;

procedure TDM_DataEntry.qrEExceptGoodsEX_TYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Â— œÊ';
    1: Text := ' Œ›Ì›Ì ”—Ã„⁄';
    2: Text := ' Œ›Ì› ‰ﬁœÌ';
  end;
end;

procedure TDM_DataEntry.qrEExceptGoodsEX_TYPESetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Â— œÊ' then Sender.AsInteger := 0;
  if Text = ' Œ›Ì› ”—Ã„⁄'then Sender.AsInteger := 1;
  if Text = ' Œ›Ì› ‰ﬁœÌ'then Sender.AsInteger := 2;
end;

procedure TDM_DataEntry.qrEExceptGoodsEX_GDSCODEValidate(Sender: TField);
begin
  if FindGdsFDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TDM_DataEntry.qrEExceptGoodsCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GOODSNAME').AsString := FindGdsFDesc(DataSet.FieldByName('EX_GDSCODE').AsString);
end;

procedure TDM_DataEntry.qrEExceptGoodsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('EX_TYPE').AsString := '0';
end;

end.
