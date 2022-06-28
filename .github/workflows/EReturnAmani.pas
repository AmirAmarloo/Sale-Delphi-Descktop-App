{$I Direct.Inc}
unit EReturnAmani;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons,
  ComCtrls, Grids, DBGrids, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl, {$I MbUses.Inc};

type
  TfrmEReturnAmani = class(TMbForm)
    Panel1: TPanel;
    qrEReturnTit: TQuery;
    usEReturnTit: TUpdateSQL;
    dsEReturnTit: TDataSource;
    dsEReturnRow: TDataSource;
    usEReturnRow: TUpdateSQL;
    qrEReturnRow: TQuery;
    qrEReturnTitR_CODE: TFloatField;
    qrEReturnTitR_YEAR: TFloatField;
    qrEReturnTitR_DATE: TStringField;
    qrEReturnTitR_OFNUM: TStringField;
    Label2: TLabel;
    dbedDate: TDBEdit;
    Label3: TLabel;
    dbedROFNum: TDBEdit;
    qrEReturnTitCF_VISITOR: TStringField;
    qrEReturnTitCF_CUSTCODE: TStringField;
    qrEReturnTitCF_CUSTNAME: TStringField;
    qrEReturnTitCF_VISITORNAME: TStringField;
    qrEReturnTitCF_DRIVERNAME: TStringField;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    sbList: TSpeedButton;
    qrEReturnRowR_CODE: TFloatField;
    qrEReturnRowR_YEAR: TFloatField;
    qrEReturnRowR_SEQ: TFloatField;
    qrEReturnRowR_TYPE: TFloatField;
    qrEReturnRowR_GDSCODE: TStringField;
    qrEReturnRowCF_GDSDESC: TStringField;
    DBGrid1: TDBGrid;
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    qrEReturnRowCF_TAX: TStringField;
    qrEReturnRowR_RESONE: TFloatField;
    Button1: TButton;
    qrEReturnTitR_REPOFNUM: TStringField;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    qrTemp: TQuery;
    btnDelete: TBitBtn;
    qrEReturnTitR_DISAMOUNT: TFloatField;
    qrEReturnRowR_OFFER: TFloatField;
    qrEReturnRowR_AMOUNT: TFloatField;
    qrEReturnTitCF_OFDATE: TStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    qrEReturnRowCF_OFQTY: TIntegerField;
    qrEReturnRowCF_OFQTYGIFT: TIntegerField;
    qrEReturnRowCF_ABAT: TFloatField;
    qrEReturnRowR_QTY: TFloatField;
    qrEReturnRowCF_DISTAMOUNT: TIntegerField;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    qrEReturnTitR_DOCNO: TStringField;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    ppReport1: TppReport;
    ppBDEPipelineR: TppBDEPipeline;
    ppBDEPipelineT: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel22: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel23: TppLabel;
    pplbRepTime: TppLabel;
    bbPreview: TBitBtn;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    qrTmp: TQuery;
    qrEReturnRowCF_TAX_2_1: TFloatField;
    qrEReturnRowCF_TAX_2_9: TFloatField;
    ppLine13: TppLine;
    ppDBText5: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText23: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine14: TppLine;
    ppLine15: TppLine;
    qrEReturnTitSEND_STAT: TFloatField;
    qrEReturnTitR_OFYEAR: TFloatField;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    dbedRCode: TDBEdit;
    DBEdit3: TDBEdit;
    qrEReturnRowCF_DISTAMOUNTOF: TIntegerField;
    ppLabel36: TppLabel;
    ppDBText24: TppDBText;
    ppDBCalc9: TppDBCalc;
    qrEReturnRowCF_R_AMOUNT: TIntegerField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    qrEReturnTitR_WASTE_DOC: TStringField;
    ppLabel37: TppLabel;
    ppDBText25: TppDBText;
    ppLabel38: TppLabel;
    qrEReturnRowCF_REALQTY: TIntegerField;
    qrPost: TQuery;
    qrEReturnRowBR_CODE: TFloatField;
    qrEReturnRowR_OFNUM: TStringField;
    qrEReturnRowR_OFYEAR: TFloatField;
    qrTmp1: TQuery;
    qrEReturnRowCF_STORECODE: TStringField;
    qrEReturnRowCF_STOREDESC: TStringField;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine16: TppLine;
    ppLabel42: TppLabel;
    ppLabel4: TppLabel;
    ppLabel43: TppLabel;
    ppLine17: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText26: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine18: TppLine;
    ppDBText27: TppDBText;
    qrEReturnRowRR_DOCNO: TStringField;
    qrEReturnRowCF_STKCODE: TIntegerField;
    procedure qrEReturnTitCalcFields(DataSet: TDataSet);
    procedure qrEReturnRowCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrEReturnRowR_RESONEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrEReturnRowR_RESONESetText(Sender: TField;
      const Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedDateExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qrEReturnRowR_QTYValidate(Sender: TField);
    procedure dbedROFNumExit(Sender: TObject);
    procedure qrEReturnTitR_DOCNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure pplbRepTimePrint(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure dbedRCodeExit(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppLabel35GetText(Sender: TObject; var Text: String);
    procedure DBEdit3Exit(Sender: TObject);
    procedure qrEReturnRowR_RESONEValidate(Sender: TField);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure ppDBText25GetText(Sender: TObject; var Text: String);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrEReturnRowR_OFNUMValidate(Sender: TField);
    procedure qrEReturnRowNewRecord(DataSet: TDataSet);
    procedure ppDBText18GetText(Sender: TObject; var Text: String);
    procedure qrEReturnRowRR_DOCNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    DistRial, DisQty, DistRow: Integer;
    IsSpecCust: Double;
    IsLock, RowIsEmpty: Boolean;
    procedure SelectRowData;
    procedure SelectRowDataNvg;
    procedure CalcDistOfTotal;
  public
    { Public declarations }
  end;

var
  frmEReturnAmani: TfrmEReturnAmani;

implementation

uses Utility, UMessage, Vars, Help, Functions, ESelectGoods,
  ESelectGoodsAmani;

{$R *.dfm}

procedure TfrmEReturnAmani.qrEReturnTitCalcFields(DataSet: TDataSet);
begin
//  DataSet.FieldByName('CF_CUSTCODE').AsString := GetCustCodeFromOfNum(DataSet.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('R_OFYEAR').AsString, VCode, DCode);
//  DataSet.FieldByName('CF_VISITOR').AsString := VCode;
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(DataSet.FieldByName('R_OFNUM').AsString);
//  DataSet.FieldByName('CF_VISITORNAME').AsString := GetVisitorName(VCode);
//  DataSet.FieldByName('CF_DRIVERNAME').AsString := GetDriverName(DCode);
//  DataSet.FieldByName('CF_OFDATE').AsString := GetOfDate(DataSet.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('R_OFYEAR').AsString);
end;

procedure TfrmEReturnAmani.qrEReturnRowCalcFields(DataSet: TDataSet);
var
  CfPers, CfPersOf: Double;
  CFRate: Integer;
  Rate: Integer;
begin
//  if (qrEReturnRow.FieldByName('R_OFNUM').AsString = '') or
//     (qrEReturnRow.FieldByName('R_OFYEAR').AsString = '') then Exit;
  DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('R_GDSCODE').AsString);
  DataSet.FieldByName('CF_OFQTY').AsInteger := GetOfQty(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_GDSCODE').AsString);
  DataSet.FieldByName('CF_OFQTYGIFT').AsInteger := GetOfQtyGift(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_GDSCODE').AsString);
  DataSet.FieldByName('CF_ABAT').AsFloat := GetOfAbat(qrEReturnRow.FieldByName('R_OFYEAR').AsString, qrEReturnRow.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('R_GDSCODE').AsString);
  DataSet.FieldByName('CF_STORECODE').AsString := FindStoreCodeOfFact(DataSet.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_OFNUM').AsString);
  DataSet.FieldByName('CF_STOREDESC').AsString := FindStoreCode(qrEReturnTit.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('CF_STORECODE').AsString);
//  DataSet.FieldByName('CF_STOREDESC').AsString := FindStoreCodeOfFact(DataSet.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_OFNUM').AsString);
  CFRate := GetPriceOfFactByGdsCode(qrEReturnRow.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsInteger);
  GetRialDiscount(DataSet.FieldByName('R_GDSCODE').AsString, (DataSet.FieldByName('R_QTY').AsInteger * CFRate),
                  qrEReturnTit.FieldByName('CF_OFDATE').AsString, CfPers);

  GetRialDiscount(DataSet.FieldByName('R_GDSCODE').AsString, (GetOfQty(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_GDSCODE').AsString) * CFRate),
                  qrEReturnTit.FieldByName('CF_OFDATE').AsString, CfPersOf);
  CfPersOf := DataSet.FieldByName('CF_ABAT').AsFloat;
  CfPersOf := CfPersOf - CfPers;
  DataSet.FieldByName('CF_DISTAMOUNT').AsInteger := Round(((DataSet.FieldByName('R_QTY').AsInteger * CFRate) * CfPers)/100);
  DataSet.FieldByName('CF_DISTAMOUNTOF').AsInteger := Round(((DataSet.FieldByName('R_QTY').AsInteger * CFRate) * CfPersOf)/100);
  DataSet.FieldByName('CF_TAX').AsFloat := (((DataSet.FieldByName('R_QTY').AsInteger * CFRate) - DataSet.FieldByName('CF_DISTAMOUNT').AsInteger) * GetGdsTax(DataSet.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, qrEReturnTit.FieldByName('R_OFNUM').AsString)) / 100;
  DataSet.FieldByName('CF_STKCODE').AsInteger := StrToIntDef(GetStkCodeOffertit(qrEReturnRow.FieldByName('R_OFYEAR').AsString, qrEReturnRow.FieldByName('R_OFNUM').AsString), 0);
  Rate := GetPriceOfFactByGdsCode(qrEReturnRow.FieldByName('R_OFNUM').AsString, DataSet.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsInteger);
  DataSet.FieldByName('CF_R_AMOUNT').AsInteger := (Rate * DataSet.FieldByName('R_QTY').AsInteger);
  with qrTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT ');
    SQL.Add(' ROUND(DECODE(GDS_TAX, 0, 0, (((TAX_AMOUNT/OFQTY)*R_QTY)*AD_TOLL)/GDS_TAX))R_TAX_2_9,');
    SQL.Add(' ROUND(');
    SQL.Add('       ((((NVL(TAX_AMOUNT,0)/NVL(OFQTY,0))*NVL(R_QTY,0)))) -');
    SQL.Add('       (DECODE(GDS_TAX, 0, 0, (((NVL(TAX_AMOUNT,0)/NVL(OFQTY,0))*NVL(R_QTY,0))*AD_TOLL)/GDS_TAX))');
    SQL.Add('       )R_TAX_2_1');
    SQL.Add(' FROM OFFER_V1');
    SQL.Add('WHERE R_YEAR = :YEAR');
    SQL.Add('  AND R_CODE = :RCODE');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND GDS_CODE = :RGDSCODE');
    SQL.Add('  AND OFNUM = :OFNUM');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('RCODE').AsString := DataSet.FieldByName('R_CODE').AsString;
    ParamByName('OFNUM').AsString := qrEReturnRow.FieldByName('R_OFNUM').AsString;
    ParamByName('RGDSCODE').AsString := DataSet.FieldByName('R_GDSCODE').AsString;
    Open;
    DataSet.FieldByName('CF_TAX_2_1').AsString := FieldByName('R_TAX_2_1').AsString;
    DataSet.FieldByName('CF_TAX_2_9').AsString := FieldByName('R_TAX_2_9').AsString;
  end;
  DataSet.FieldByName('CF_REALQTY').AsFloat := GetRealQtyReturn(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DataSet.FieldByName('R_GDSCODE').AsString, DataSet.FieldByName('R_QTY').AsFloat);
{
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(NVL(OFQTY, 0))SUMOFQTY, SUM(NVL(OFQTY, 0) - NVL(R_QTY, 0))REALQTY');
    SQL.Add('FROM RETURN_TIT_T T, RETURN_ROW_T R,');
    SQL.Add('     OFFERTIT_T H, OFFERDTL_T B');
    SQL.Add('WHERE TAFSILY_YEAR = :OFYEAR');
    SQL.Add('  AND H.OFNUM = :OFNUM');
    SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND GDS_CODE = :GDSCODE');
    SQL.Add('  AND H.OFNUM = B.OFNUM');
    SQL.Add('  AND H.TAFSILY_YEAR = B.CU_CODE');
    SQL.Add('  AND H.USERID = B.GDS_INFO');
    SQL.Add('----------------------');
//    SQL.Add('  AND R_DOCNO IS NOT NULL'); //94/02/14
    SQL.Add('  AND R_GDSCODE = :GDSCODE');
    SQL.Add('  AND T.R_YEAR = R.R_YEAR');
    SQL.Add('  AND T.R_CODE = R.R_CODE');
    SQL.Add('  AND T.BR_CODE = R.BR_CODE');
    SQL.Add('----------------------');
    SQL.Add('  AND R.R_OFYEAR = TAFSILY_YEAR');
    SQL.Add('  AND R.R_OFNUM = H.OFNUM');
    SQL.Add('  AND R.BR_CODE = H.USERID');
    SQL.Add('----------------------');
    SQL.Add('  AND R.BR_CODE = B.GDS_INFO');
    ParamByName('OFYEAR').AsInteger := qrEReturnRow.FieldByName('R_OFYEAR').AsInteger;
    ParamByName('OFNUM').AsString := qrEReturnRow.FieldByName('R_OFNUM').AsString;
    ParamByName('GDSCODE').AsString := DataSet.FieldByName('R_GDSCODE').AsString;
    Open;
    if FieldByName('SUMOFQTY').AsInteger = 0 then
      DataSet.FieldByName('CF_REALQTY').AsString := DataSet.FieldByName('R_QTY').AsString
    else
      DataSet.FieldByName('CF_REALQTY').AsInteger := FieldByName('REALQTY').AsInteger;
  end;
  }
end;

procedure TfrmEReturnAmani.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEReturnTit, 'RETURN_TIT_T');
  SelectEmpty(qrEReturnRow, 'RETURN_ROW_T');
  qrEReturnTit.Edit;
  qrEReturnTit.FieldByName('R_CODE').AsInteger := SelectMaxNo('RETURN_TIT_T', 'TO_NUMBER(R_CODE)');
{$IFNDEF AMANI}
  DBGrid1.Columns[8].PickList.Clear;
  DBGrid1.Columns[8].PickList.Add('⁄œ„ ›—Ê‘');
  DBGrid1.Columns[8].PickList.Add('⁄œ„ ”›«—‘');
  DBGrid1.Columns[8].PickList.Add('÷«Ì⁄« ');
  DBGrid1.Columns[8].PickList.Add(' «—ÌŒ ê–‘ Â');
{$ENDIF}

{$IFDEF AMANI}
  Caption := '»—ê‘  «“ ò«·«Ì «„«‰Ì';
  ppLabel1.Caption := Caption;
  DBGrid1.Columns[8].PickList.Clear;
  DBGrid1.Columns[8].PickList.Add('⁄œ„ ›—Ê‘');
  DBGrid1.Columns[8].PickList.Add('⁄œ„ ”›«—‘');
  DBGrid1.Columns[8].PickList.Add('÷«Ì⁄« ');
  DBGrid1.Columns[8].PickList.Add(' «—ÌŒ ê–‘ Â');
  DBGrid1.Columns[8].PickList.Add(' »œÌ· ÌÂ ›«ò Ê—');
  DBGrid1.Columns[8].PickList.Add('«’·«Õ ›«ò Ê—');
{$ENDIF}
end;

procedure TfrmEReturnAmani.BtnPostClick(Sender: TObject);
begin
  qrEReturnRow.First;
  while not qrEReturnRow.Eof do
  begin
    if GetQtyOrReturn(qrEReturnRow.FieldByName('R_GDSCODE').AsString,
                      qrEReturnRow.FieldByName('R_OFNUM').AsString,
                      qrEReturnRow.FieldByName('R_OFYEAR').AsString,
                      qrEReturnTit.FieldByName('R_CODE').AsString) + qrEReturnRow.FieldByName('R_QTY').AsInteger >
       GetOfQty(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, qrEReturnRow.FieldByName('R_GDSCODE').AsString) then
    begin
      MbError(OutOfRange);
      Exit;
    end;
    if qrEReturnRow.FieldByName('R_AMOUNT').AsInteger = 0 then
    begin
      MbError(InCompleteData);
      Exit;
    end;
    qrEReturnRow.Next;
  end;
  CalcDistOfTotal;
  with qrPost do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM RETURN_ROW_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM RETURN_TIT_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO RETURN_TIT_T');
    SQL.Add('(R_CODE, R_YEAR, R_DATE, R_OFNUM, R_REPOFNUM, R_DISAMOUNT, R_DOCNO, SEND_STAT, R_OFYEAR)');
    SQL.Add('VALUES');
    SQL.Add('(:R_CODE, :R_YEAR, :R_DATE, :R_OFNUM, :R_REPOFNUM, :R_DISAMOUNT, :R_DOCNO, :SEND_STAT, :R_OFYEAR)');
    ParamByName('R_CODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('R_YEAR').AsInteger := System_YY;
    ParamByName('R_DATE').AsString := qrEReturnTit.FieldByName('R_DATE').AsString;
    ParamByName('R_OFNUM').AsString := qrEReturnTit.FieldByName('R_OFNUM').AsString;
    ParamByName('R_REPOFNUM').AsString := qrEReturnTit.FieldByName('R_REPOFNUM').AsString;
    ParamByName('R_DISAMOUNT').AsString := qrEReturnTit.FieldByName('R_DISAMOUNT').AsString;
    ParamByName('R_DOCNO').AsString := qrEReturnTit.FieldByName('R_DOCNO').AsString;
    ParamByName('R_OFYEAR').AsString := qrEReturnTit.FieldByName('R_OFYEAR').AsString;
    ParamByName('SEND_STAT').AsInteger := 2;
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO RETURN_ROW_T');
    SQL.Add('(R_CODE, R_YEAR, R_SEQ, R_TYPE, R_QTY, R_GDSCODE, R_RESONE, R_OFFER, R_AMOUNT, R_OFYEAR, R_OFNUM)');
    SQL.Add('VALUES');
    SQL.Add('(:R_CODE, :R_YEAR, :R_SEQ, :R_TYPE, :R_QTY, :R_GDSCODE, :R_RESONE, :R_OFFER, :R_AMOUNT, :R_OFYEAR, :R_OFNUM)');
    qrEReturnRow.First;
    while not qrEReturnRow.Eof do
    begin
      ParamByName('R_CODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
      ParamByName('R_YEAR').AsInteger := System_YY;
      ParamByName('R_SEQ').AsString := qrEReturnRow.FieldByName('R_SEQ').AsString;
      ParamByName('R_TYPE').AsString := '0'; // qrEReturnRow.FieldByName('R_TYPE').AsString;
      ParamByName('R_QTY').AsString := qrEReturnRow.FieldByName('R_QTY').AsString;
      ParamByName('R_GDSCODE').AsString := qrEReturnRow.FieldByName('R_GDSCODE').AsString;
      ParamByName('R_RESONE').AsString := qrEReturnRow.FieldByName('R_RESONE').AsString;
      ParamByName('R_OFFER').AsString := qrEReturnRow.FieldByName('R_OFFER').AsString;
      ParamByName('R_AMOUNT').AsString := qrEReturnRow.FieldByName('R_AMOUNT').AsString;
      ParamByName('R_OFYEAR').AsString := qrEReturnRow.FieldByName('R_OFYEAR').AsString;
      ParamByName('R_OFNUM').AsString := qrEReturnRow.FieldByName('R_OFNUM').AsString;
      ExecSQL;
      qrEReturnRow.Next;
    end;
  end;
  SelectEmpty(qrEReturnTit, 'RETURN_TIT_T');
  SelectEmpty(qrEReturnRow, 'RETURN_ROW_T');
  qrEReturnTit.Edit;
  qrEReturnTit.FieldByName('R_CODE').AsInteger := SelectMaxNo('RETURN_TIT_T', 'TO_NUMBER(R_CODE)');
  dbedRCode.SetFocus;
end;

procedure TfrmEReturnAmani.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEReturnAmani.Button1Click(Sender: TObject);
begin
  GdsStrReturn := '';
  ROFYearStr := '';
  frmESelectGoodsAmani := TfrmESelectGoodsAmani.Create(Self);
  frmESelectGoodsAmani.edGdsCode.Text := qrEReturnRow.FieldByName('R_GDSCODE').AsString;
  frmESelectGoodsAmani.edGdsFDesc.Text := qrEReturnRow.FieldByName('CF_GDSDESC').AsString;
  frmESelectGoodsAmani.edCustNo.Text := qrEReturnTit.FieldByName('R_OFNUM').AsString;
  frmESelectGoodsAmani.edCustName.Text := qrEReturnTit.FieldByName('CF_CUSTNAME').AsString;
  frmESelectGoodsAmani.ShowModal;
  SelectRowData;
end;

procedure TfrmEReturnAmani.SelectRowData;
var
  ROfNum, ROfYear: String;
begin
  if GdsStrReturn = '' then Exit;
  if ROFYearStr = '' then Exit;
  ROfNum := qrEReturnRow.FieldByName('R_OFNUM').AsString;
  ROfYear := qrEReturnRow.FieldByName('R_OFYEAR').AsString;
{
  with qrEReturnRow do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RETURN_ROW_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
//    SQL.Add('  AND R_GDSCODE IN ' + GdsStrReturn);
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
}
//    if RowIsEmpty then
      with qrTmp1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ' + qrEReturnTit.FieldByName('R_CODE').AsString + ' R_CODE, ');
        SQL.Add(IntToStr(System_YY) + ' R_YEAR, ' + IntToStr(StrToIntDef(qrEReturnRow.FieldByName('R_SEQ').AsString, 2) - 1) + ' + TO_NUMBER(ROWNUM) R_SEQ,');
        SQL.Add('GDS_CODE R_GDSCODE, NVL(OFQTY, 0) - NVL(R_QTY, 0) R_QTY, 0 R_TYPE, 0 R_RESONE, 0 R_OFFER, 0 R_AMOUNT, USERID BR_CODE, FT.OFNUM R_OFNUM, TAFSILY_YEAR R_OFYEAR');
        SQL.Add('FROM OFFERTIT_T FT, OFFERDTL_T FR,');
        SQL.Add('  (');
        SQL.Add('   SELECT SUM(NVL(R_QTY, 0))R_QTY,');
        SQL.Add('          R.R_OFYEAR R_OFYEAR,');
        SQL.Add('          R.R_OFNUM R_OFNUM');
        SQL.Add('   FROM RETURN_TIT_T T, RETURN_ROW_T R');
        SQL.Add('   WHERE T.R_YEAR = R.R_YEAR');
        SQL.Add('     AND T.R_CODE = R.R_CODE');
        SQL.Add('     AND T.BR_CODE = R.BR_CODE');
        SQL.Add('     AND R_GDSCODE = :GDSCODE');
        SQL.Add('     AND EXISTS (SELECT T1.OFNUM, TAFSILY_YEAR FROM OFFERTIT_T T1, OFFERDTL_T R1');
        SQL.Add('                 WHERE TAFSILY_YEAR = CU_CODE');
        SQL.Add('                   AND CUSTNO = :CUSTNO');
        SQL.Add('                   AND T1.OFNUM = R1.OFNUM');
        SQL.Add('                   AND USERID = GDS_INFO');
        SQL.Add('                   AND R.R_OFYEAR = CU_CODE');
        SQL.Add('                   AND R.R_OFNUM = T1.OFNUM');
        SQL.Add('                   AND R.BR_CODE = GDS_INFO');
        SQL.Add('                   AND R_GDSCODE = R1.GDS_CODE)');
        SQL.Add('');
        SQL.Add('   GROUP BY R.R_OFYEAR, R.R_OFNUM');
        SQL.Add('  )R');
        SQL.Add('WHERE GDS_CODE = :GDSCODE');
        SQL.Add('  AND PACK_TYPE <> 9');
        SQL.Add('  AND TAFSILY_YEAR IN ' + ROFYearStr);
        SQL.Add('  AND FT.OFNUM IN ' + GdsStrReturn);
        SQL.Add('  AND CUSTNO = :CUSTNO');
        SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
        SQL.Add('  AND NVL(OFQTY, 0) - NVL(R_QTY, 0) > 0');
        SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
        SQL.Add('  AND FT.OFNUM = FR.OFNUM');
        SQL.Add('  AND USERID = GDS_INFO');
        SQL.Add('  AND R_OFYEAR(+) = TAFSILY_YEAR');
        SQL.Add('  AND R_OFNUM(+) = FT.OFNUM');
        SQL.Add('ORDER BY FT.TAFSILY_YEAR, TO_NUMBER(FT.OFNUM)');
        SQL.SaveToFile('D:\RetunAmani.txt');

{
        SQL.Add('FROM OFFERTIT_T FT, OFFERDTL_T FR,');
        SQL.Add('  (');
        SQL.Add('   SELECT SUM(NVL(R_QTY, 0)) R_QTY, R_GDSCODE,');
        SQL.Add('          DECODE(R.R_OFNUM, NULL, T.R_OFYEAR, R.R_OFYEAR)R_OFYEAR,');
        SQL.Add('          DECODE(R.R_OFNUM, NULL, T.R_OFNUM, R.R_OFNUM)R_OFNUM,');
        SQL.Add('          T.BR_CODE');
        SQL.Add('   FROM RETURN_TIT_T T, RETURN_ROW_T R');
        SQL.Add('   WHERE T.R_YEAR = R.R_YEAR');
        SQL.Add('     AND T.R_CODE = R.R_CODE');
        SQL.Add('     AND T.BR_CODE = R.BR_CODE');
        SQL.Add('   GROUP BY R.R_OFYEAR, T.R_OFYEAR,');
        SQL.Add('            R.R_OFNUM, T.R_OFNUM, R_GDSCODE,');
        SQL.Add('            T.BR_CODE, R.BR_CODE');
        SQL.Add('   )R');
        SQL.Add('WHERE GDS_CODE = :GDSCODE');
        SQL.Add('  AND PACK_TYPE <> 9');
        SQL.Add('  AND TAFSILY_YEAR IN ' + ROFYearStr);
        SQL.Add('  AND FT.OFNUM IN ' + GdsStrReturn);
        SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
        SQL.Add('  AND NVL(OFQTY, 0) - NVL(R_QTY, 0) > 0');
        SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
        SQL.Add('  AND FT.OFNUM = FR.OFNUM');
        SQL.Add('  AND USERID = GDS_INFO');
        SQL.Add('  AND R_OFYEAR(+) = CU_CODE');
        SQL.Add('  AND R_OFNUM(+) = FR.OFNUM');
        SQL.Add('  AND BR_CODE(+) = GDS_INFO');
        SQL.Add('  AND R_GDSCODE(+) = FR.GDS_CODE');
}
        ParamByName('CUSTNO').AsString := qrEReturnTit.FieldByName('R_OFNUM').AsString;
        ParamByName('GDSCODE').AsString := qrEReturnRow.FieldByName('R_GDSCODE').AsString;
        Open;
        qrEReturnRow.Delete;
        while not Eof do
        begin
          qrEReturnRow.Insert;
          qrEReturnRow.FieldByName('R_CODE').AsString := FieldByName('R_CODE').AsString;
          qrEReturnRow.FieldByName('R_YEAR').AsString := FieldByName('R_YEAR').AsString;
          qrEReturnRow.FieldByName('R_GDSCODE').AsString := FieldByName('R_GDSCODE').AsString;
          qrEReturnRow.FieldByName('R_SEQ').AsString := FieldByName('R_SEQ').AsString;
          qrEReturnRow.FieldByName('R_OFYEAR').AsString := FieldByName('R_OFYEAR').AsString;
          qrEReturnRow.FieldByName('R_OFNUM').AsString := FieldByName('R_OFNUM').AsString;
          qrEReturnRow.FieldByName('R_TYPE').AsString := FieldByName('R_TYPE').AsString;
          qrEReturnRow.FieldByName('R_QTY').AsString := FieldByName('R_QTY').AsString;
          qrEReturnRow.FieldByName('R_RESONE').AsString := FieldByName('R_RESONE').AsString;
          qrEReturnRow.FieldByName('R_OFFER').AsString := FieldByName('R_OFFER').AsString;
          qrEReturnRow.FieldByName('R_AMOUNT').AsString := FieldByName('R_AMOUNT').AsString;
          qrEReturnRow.FieldByName('BR_CODE').AsString := FieldByName('BR_CODE').AsString;
          Next;
        end;
      end;
end;

procedure TfrmEReturnAmani.qrEReturnRowR_RESONEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
{$IFDEF AMANI}
  if Sender.AsInteger = 1 then
    Text := '⁄œ„ ›—Ê‘';
  if Sender.AsInteger = 2 then
    Text := '⁄œ„ ”›«—‘';
  if Sender.AsInteger = 3 then
    Text := '÷«Ì⁄« ';
  if Sender.AsInteger = 4 then
    Text := ' «—ÌŒ ê–‘ Â';
  if Sender.AsInteger = 5 then
    Text := ' »œÌ· ÌÂ ›«ò Ê—';
  if Sender.AsInteger = 7 then
    Text := '«’·«Õ ›«ò Ê—';
{$EndIf}

{$IFNDEF AMANI}
  if Sender.AsInteger = 1 then
    Text := '⁄œ„ ›—Ê‘';
  if Sender.AsInteger = 2 then
    Text := '⁄œ„ ”›«—‘';
  if Sender.AsInteger = 3 then
    Text := '÷«Ì⁄« ';
  if Sender.AsInteger = 4 then
    Text := ' «—ÌŒ ê–‘ Â';
{$ENDIF}
end;

procedure TfrmEReturnAmani.qrEReturnRowR_RESONESetText(Sender: TField;
  const Text: String);
begin
{$IFNDEF AMANI}
  if Text = '⁄œ„ ›—Ê‘' then
    Sender.AsInteger := 1;
  if Text = '⁄œ„ ”›«—‘' then
    Sender.AsInteger := 2;
  if Text = '÷«Ì⁄« ' then
    Sender.AsInteger := 3;
  if Text = ' «—ÌŒ ê–‘ Â' then
    Sender.AsInteger := 4;
{$ENDIF}

{$IFDEF AMANI}
  if Text = '⁄œ„ ›—Ê‘' then
    Sender.AsInteger := 1;
  if Text = '⁄œ„ ”›«—‘' then
    Sender.AsInteger := 2;
  if Text = '÷«Ì⁄« ' then
    Sender.AsInteger := 3;
  if Text = ' «—ÌŒ ê–‘ Â' then
    Sender.AsInteger := 4;
  if Text = ' »œÌ· ÌÂ ›«ò Ê—' then
    Sender.AsInteger := 5;
  if Text = '«’·«Õ ›«ò Ê—' then
    Sender.AsInteger := 7;
{$ENDIF}
end;

procedure TfrmEReturnAmani.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEReturnAmani.dbedDateExit(Sender: TObject);
begin
  if not MsDateIsValid1(qrEReturnTit.FieldByName('R_DATE').AsString, False) then
  begin
    MbError(InvalidDate);
    dbedDate.SetFocus;
    qrEReturnTit.Edit;
    qrEReturnTit.FieldByName('R_DATE').AsString := MsFarsiDate1(GetDataBaseDate);
    Exit;
  end;
  if qrEReturnTit.FieldByName('R_DATE').AsString > MsFarsiDate1(GetDataBaseDate) then
  begin
    MbError(InvalidDate);
    dbedDate.SetFocus;
    qrEReturnTit.Edit;
    qrEReturnTit.FieldByName('R_DATE').AsString := MsFarsiDate1(GetDataBaseDate);
    Exit;
  end;
  if qrEReturnTit.FieldByName('R_DATE').AsString < GetMaxVochDate then
  begin
    MbError(InvalidDate);
    dbedDate.SetFocus;
    qrEReturnTit.Edit;
    qrEReturnTit.FieldByName('R_DATE').AsString := MsFarsiDate1(GetDataBaseDate);
    Exit;
  end;
  if Copy(qrEReturnTit.FieldByName('R_DATE').AsString, 1, 4) <> IntToStr(System_YY) then
  begin
    MbError(InvalidDate);
    dbedDate.SetFocus;
    Exit;
  end;
  qrEReturnTit.Edit;
  qrEReturnTit.FieldByName('R_YEAR').AsInteger := System_YY;
end;

procedure TfrmEReturnAmani.btnDeleteClick(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM RETURN_ROW_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM RETURN_TIT_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    ExecSQL;
  end;
  FormShow(Sender);
end;

procedure TfrmEReturnAmani.qrEReturnRowR_QTYValidate(Sender: TField);
var
  Rate, FinalQty, CustOfferQty: Integer;
  DistPersent, DistPersentFact, DistPersentDiff, RAmount: Double;
begin
  with qrTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT /*OFSEQ, GDS_CODE, OFQTY, FT.OFNUM,');
    SQL.Add('       TAFSILY_YEAR, CUSTNO, R_QTY,*/');
    SQL.Add('       SUM(NVL(OFQTY, 0) - NVL(R_QTY, 0)) REMAINQTY');
    SQL.Add('FROM OFFERTIT_T FT, OFFERDTL_T FR,');
    SQL.Add('  (');
    SQL.Add('   SELECT SUM(NVL(R_QTY, 0))R_QTY,');
    SQL.Add('          R.R_OFYEAR R_OFYEAR,');
    SQL.Add('          R.R_OFNUM R_OFNUM');
    SQL.Add('   FROM RETURN_TIT_T T, RETURN_ROW_T R');
    SQL.Add('   WHERE T.R_YEAR = R.R_YEAR');
    SQL.Add('     AND T.R_CODE = R.R_CODE');
    SQL.Add('     AND T.BR_CODE = R.BR_CODE');
    SQL.Add('     AND R_GDSCODE = :GDSCODE');
    SQL.Add('     AND EXISTS (SELECT T1.OFNUM, TAFSILY_YEAR FROM OFFERTIT_T T1, OFFERDTL_T R1');
    SQL.Add('                 WHERE TAFSILY_YEAR = CU_CODE');
    SQL.Add('                   AND CUSTNO = :CUSTNO');
    SQL.Add('                   AND T1.OFNUM = R1.OFNUM');
    SQL.Add('                   AND USERID = GDS_INFO');
    SQL.Add('                   AND R.R_OFYEAR = CU_CODE');
    SQL.Add('                   AND R.R_OFNUM = T1.OFNUM');
    SQL.Add('                   AND R.BR_CODE = GDS_INFO');
    SQL.Add('                   AND R_GDSCODE = R1.GDS_CODE)');
    SQL.Add('');
    SQL.Add('   GROUP BY R.R_OFYEAR, R.R_OFNUM');
    SQL.Add('  )R');
    SQL.Add('WHERE GDS_CODE = :GDSCODE');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND CUSTNO = :CUSTNO');
    SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  AND NVL(OFQTY, 0) - NVL(R_QTY, 0) > 0');
    SQL.Add('  AND TAFSILY_YEAR = :ROFYEAR');
    SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
    SQL.Add('  AND FT.OFNUM = :OFNUM');
    SQL.Add('  AND FT.OFNUM = FR.OFNUM');
    SQL.Add('  AND USERID = GDS_INFO');
    SQL.Add('  AND R_OFYEAR(+) = TAFSILY_YEAR');
    SQL.Add('  AND R_OFNUM(+) = FT.OFNUM');
    ParamByName('GDSCODE').AsString := qrEReturnRow.FieldByName('R_GDSCODE').AsString;
    ParamByName('CUSTNO').AsString := qrEReturnTit.FieldByName('R_OFNUM').AsString;
    ParamByName('OFNUM').AsString := qrEReturnRow.FieldByName('R_OFNUM').AsString;
    ParamByName('ROFYEAR').AsString := qrEReturnRow.FieldByName('R_OFYEAR').AsString;
    try
      SQL.SaveToFile('D:\RetAmaniQty.txt');
    except
      SQL.SaveToFile('D:\RetAmaniQty.txt');
    end;
    Open;
  end;
//  if Sender.AsInteger > qrEReturnRow.FieldByName('CF_OFQTY').AsInteger then
  if Sender.AsInteger > qrTmp.FieldByName('REMAINQTY').AsInteger then
  begin
    MbError(OutOfRange);
    Abort;
  end;
  if qrEReturnRow.FieldByName('CF_OFQTYGIFT').AsInteger > 0 then
  begin
    GetQtyDiscount(qrEReturnRow.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('CF_OFQTY').AsInteger -  Sender.AsInteger, qrEReturnTit.FieldByName('CF_OFDATE').AsString, 2, DisQty);
    qrEReturnRow.FieldByName('R_OFFER').AsInteger := DisQty;
//    qrEReturnRow.FieldByName('R_OFFER').AsInteger := qrEReturnRow.FieldByName('CF_OFQTYGIFT').AsInteger - DisQty;
  end
  else
    qrEReturnRow.FieldByName('R_OFFER').AsInteger := 0;
  Rate := GetPriceOfFactByGdsCode(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsInteger);
  if not ((IsSpecCust > 0) and  (DistRial = 0)) then
  begin
    FinalQty := qrEReturnRow.FieldByName('CF_OFQTY').AsInteger - Sender.AsInteger;
    GetRialDiscount(qrEReturnRow.FieldByName('R_GDSCODE').AsString, (qrEReturnRow.FieldByName('CF_OFQTY').AsInteger * Rate),
                    qrEReturnTit.FieldByName('CF_OFDATE').AsString, DistPersentFact);
    GetRialDiscount(qrEReturnRow.FieldByName('R_GDSCODE').AsString, (FinalQty * Rate),
                    qrEReturnTit.FieldByName('CF_OFDATE').AsString, DistPersentDiff);
    GetRialDiscount(qrEReturnRow.FieldByName('R_GDSCODE').AsString, (Sender.AsInteger * Rate),
                    qrEReturnTit.FieldByName('CF_OFDATE').AsString, DistPersent);
//    RAmount := (Sender.AsInteger * Rate) - ((Sender.AsInteger * (DistPersent + IsSpecCust))/100);
    RAmount := ((Sender.AsInteger * Rate) - (((Sender.AsInteger * Rate)* (DistPersent + IsSpecCust))/100)) - qrEReturnRow.FieldByName('CF_DISTAMOUNT').AsInteger;
    if DistPersentFact > DistPersentDiff then
//      RAmount := RAmount - ((Sender.AsInteger * (DistPersentFact - DistPersentDiff))/100);
      RAmount := RAmount - (((Sender.AsInteger * Rate) * (DistPersentFact - DistPersentDiff))/100);
  end
  else
  begin
//    RAmount := (Sender.AsInteger * Rate) - ((Sender.AsInteger * IsSpecCust)/100);
    if DistRow > 0 then
      RAmount := ((Sender.AsInteger * Rate) - (((Sender.AsInteger * Rate) * IsSpecCust)/100)) - qrEReturnRow.FieldByName('CF_DISTAMOUNT').AsInteger
    else
      RAmount := (Sender.AsInteger * Rate) - (((Sender.AsInteger * Rate) * IsSpecCust)/100)
  end;

//  qrEReturnRow.FieldByName('R_AMOUNT').AsInteger := Round(RAmount);
  qrEReturnRow.FieldByName('R_AMOUNT').AsInteger := (Rate * qrEReturnRow.FieldByName('R_QTY').AsInteger);
  if (qrEReturnRow.FieldByName('R_RESONE').AsInteger = 3) or (qrEReturnRow.FieldByName('R_RESONE').AsInteger = 4) then
  begin
    qrEReturnRow.Edit;
    qrEReturnRow.FieldByName('R_OFFER').AsInteger := 0;
  end;
//  CustOffer := GetOfferCustomerQty(qrEReturnTit.FieldByName('CF_CUSTCODE').AsString, qrEReturnRow.FieldByName('R_GDSCODE').AsString);
  if qrEReturnRow.FieldByName('R_RESONE').AsInteger <> 3 then
  begin
    GetQtyDiscountOfferCust(qrEReturnRow.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('CF_OFQTY').AsInteger -  Sender.AsInteger,
                            qrEReturnTit.FieldByName('CF_CUSTCODE').AsString, qrEReturnTit.FieldByName('CF_OFDATE').AsString, CustOfferQty);
    qrEReturnRow.FieldByName('R_OFFER').AsInteger := qrEReturnRow.FieldByName('CF_OFQTYGIFT').AsInteger - (qrEReturnRow.FieldByName('R_OFFER').AsInteger + CustOfferQty);
  end
  else
    qrEReturnRow.FieldByName('R_OFFER').AsInteger := 0;
end;

procedure TfrmEReturnAmani.dbedROFNumExit(Sender: TObject);
begin
  if qrEReturnRow.FieldByName('R_OFNUM').AsString = '' then Exit;
  if not HasInvetoryDoc(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString) then
  begin
    MbError('»—«Ì «Ì‰ ›«ò Ê— ÕÊ«·Â ’«œ— ‰‘œÂ «” ');
    dbedROFNum.SetFocus;
    Exit;
  end;
  IsSpecCust := IsSpecialCustomerByFact(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DistRial, DisQty, DistRow);
end;

procedure TfrmEReturnAmani.CalcDistOfTotal;
var
  DistOfReturn, PersentDis, MainDistAmount, TotTax, TotAmnt: Double;
begin
  TotAmnt := 0;
  TotTax := 0;
  with qrEReturnRow do
  begin
    First;
    while not Eof do
    begin
      if not IsInExceptedGoods(FieldByName('R_GDSCODE').AsString, '(0, 1)') then
        TotAmnt := TotAmnt + GetNetReturnAmountOfCach(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, qrEReturnRow.FieldByName('R_CODE').AsString, qrEReturnRow.FieldByName('R_GDSCODE').AsString, qrEReturnRow.FieldByName('R_QTY').AsInteger);
      TotTax := TotTax + FieldByName('CF_TAX').AsFloat;
      Next;
    end;
  end;
  if TotAmnt > 0 then
    if FactorNetAmountExcept(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString) > TotAmnt then
      TotAmnt := FactorNetAmountExcept(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString) - TotAmnt;
  MainDistAmount := GetDisOFZeroValidy(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString);
  GetRlsDiscount(TotAmnt, GetOfDate(qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString), PersentDis);
  DistOfReturn := 0;
{  if (DistRial = 1) and (IsSpecCust > 0) then
    DistOfReturn := ((TotAmnt * PersentDis)/100);
//  if (DistRial = 0) and (IsSpecCust > 0) then
  if IsSpecCust = 0 then
    if PersentDis > 0 then
      DistOfReturn := ((TotAmnt * PersentDis)/100);}
  DistOfReturn := (TotAmnt * PersentDis) / 100;
  qrEReturnTit.Edit;
  if TotAmnt > 0 then
  begin
    if Round(MainDistAmount - DistOfReturn) > 0 then
      qrEReturnTit.FieldByName('R_DISAMOUNT').AsInteger := Round(MainDistAmount - DistOfReturn)
    else
      qrEReturnTit.FieldByName('R_DISAMOUNT').AsInteger := Round(MainDistAmount);
  end
  else
    qrEReturnTit.FieldByName('R_DISAMOUNT').AsInteger := 0;
end;

procedure TfrmEReturnAmani.qrEReturnTitR_DOCNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
//  Text := GetDocMCodeFromSerial(Sender.AsString);
end;

procedure TfrmEReturnAmani.ppDBText13GetText(Sender: TObject; var Text: String);
begin
  Text := MbFormatDate1(Text);
end;

procedure TfrmEReturnAmani.pplbRepTimePrint(Sender: TObject);
begin
  pplbRepTime.Text := ReportTime;
end;

procedure TfrmEReturnAmani.bbPreviewClick(Sender: TObject);
begin
  ppLabel13.Caption := ComPanyName;
  ppReport1.Print;
end;

procedure TfrmEReturnAmani.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEReturnTit.DisableControls;
  try
    if not CheckChanges(qrEReturnTit, qrEReturnTit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(0, qrEReturnTit, 'RETURN_TIT_T', 1, Ord(_First), IsLock, 'R_YEAR = ' + IntToStr(System_YY));
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEReturnTit.EnableControls;
  end;
  SelectRowDataNvg;
end;

procedure TfrmEReturnAmani.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEReturnTit.DisableControls;
  try
    if not CheckChanges(qrEReturnTit, qrEReturnTit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(0, qrEReturnTit, 'RETURN_TIT_T', 1, Ord(_Prev), IsLock, 'R_YEAR = ' + IntToStr(System_YY));
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEReturnTit.EnableControls;
  end;
  SelectRowDataNvg;
end;

procedure TfrmEReturnAmani.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEReturnTit.DisableControls;
  try
    if not CheckChanges(qrEReturnTit, qrEReturnTit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(0, qrEReturnTit, 'RETURN_TIT_T', 1, Ord(_Next), IsLock, 'R_YEAR = ' + IntToStr(System_YY));
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEReturnTit.EnableControls;
  end;
  SelectRowDataNvg;
end;

procedure TfrmEReturnAmani.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEReturnTit.DisableControls;
  try
    if not CheckChanges(qrEReturnTit, qrEReturnTit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(0, qrEReturnTit, 'RETURN_TIT_T', 1, Ord(_Last), IsLock, 'R_YEAR = ' + IntToStr(System_YY));
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEReturnTit.EnableControls;
  end;
  SelectRowDataNvg;
end;

procedure TfrmEReturnAmani.SelectRowDataNvg;
begin
  with qrEReturnRow do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RETURN_ROW_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
end;

procedure TfrmEReturnAmani.SpeedButton1Click(Sender: TObject);
var
  Code: String;
begin
  if HelpReturn(Code) then
  begin
    dbedRCode.SetFocus;
    qrEReturnTit.Edit;
    qrEReturnTit.FieldByName('R_CODE').AsString := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEReturnAmani.sbListClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedROFNum.SetFocus;
    qrEReturnTit.Edit;
    qrEReturnTit.FieldByName('R_OFNUM').AsString := Code;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmEReturnAmani.dbedRCodeExit(Sender: TObject);
var
  RCode: String;
begin
  with qrEReturnTit do
  begin
    RCode := FieldByName('R_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RETURN_TIT_T');
    SQL.Add('WHERE R_YEAR = :YEAR');
    SQL.Add('  AND R_CODE = :RCODE');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('RCODE').AsString := RCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('R_CODE').AsString := IntToStr(SelectMaxNo('RETURN_TIT_T', 'TO_NUMBER(R_CODE)'));
      FieldByName('R_DATE').AsString := MsFarsiDate1(GetDataBaseDate);
      FieldByName('R_OFYEAR').AsInteger := System_YY;
    end
    else
      if dbedROFNum.Enabled then
        dbedROFNum.SetFocus;
  end;
  with qrEReturnRow do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RETURN_ROW_T');
    SQL.Add('WHERE R_CODE = :RCODE');
    SQL.Add('  AND R_YEAR = :YEAR');
    ParamByName('RCODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
    if FieldByName('RR_DOCNO').AsString <> '' then
    begin
      MbPrompt('«Ì‰ »—êÂ ‰Â«∆Ì Ê —”Ìœ ¬‰ ’«œ— ‘œÂ «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
      dbedROFNum.Enabled := False;
      dbedDate.Enabled := False;
      DBEdit9.Enabled := False;
      Button1.Enabled := False;
//      DBGrid1.Enabled := False;
      SetResdOnlyDbGrid(DBGrid1, True);
      BtnPost.Enabled := False;
      btnDelete.Enabled := False;
    end
    else
    begin
      dbedROFNum.Enabled := True;
      dbedDate.Enabled := True;
      DBEdit9.Enabled := True;
      Button1.Enabled := True;
      DBGrid1.Enabled := True;
      BtnPost.Enabled := True;
      btnDelete.Enabled := True;
    end;
    if IsEmpty then
    begin
      Edit;
      FieldByName('R_SEQ').AsInteger := 1;
    end;
    RowIsEmpty := IsEmpty;
  end;

end;

procedure TfrmEReturnAmani.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 91 then
    Text := '»—ê‘  «“ „«·Ì«  2/1'
  else if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 92 then
    Text := '»—ê‘  «“ „«·Ì«  2/4'
  else if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 93 then
    Text := '»—ê‘  «“ „«·Ì«  2/7'
end;

procedure TfrmEReturnAmani.ppLabel35GetText(Sender: TObject; var Text: String);
begin
  if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 91 then
    Text := '»—ê‘  «“ „«·Ì«  2/9'
  else if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 92 then
    Text := '»—ê‘  «“ „«·Ì«  3/6'
  else if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 93 then
    Text := '»—ê‘  «“ „«·Ì«  5/3'
end;

procedure TfrmEReturnAmani.DBEdit3Exit(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[I].FieldName = 'CF_TAX_2_1' then
      if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 91 then
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  2/1'
      else
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  2/4';
  for I := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[I].FieldName = 'CF_TAX_2_9' then
      if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 92 then
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  2/9'
      else
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  3/6';
  for I := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[I].FieldName = 'CF_TAX_2_9' then
      if qrEReturnTit.FieldByName('R_YEAR').AsInteger = 93 then
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  2/7'
      else
        DBGrid1.Columns[I].Title.Caption := '»—ê‘  «“ „«·Ì«  5/3';
end;

procedure TfrmEReturnAmani.qrEReturnRowR_RESONEValidate(Sender: TField);
begin
  qrEReturnRowR_QTYValidate(qrEReturnRow.FieldByName('R_QTY'));
end;

procedure TfrmEReturnAmani.ppDBText10GetText(Sender: TObject; var Text: String);
begin
  Text := GetDocMCodeFromSerial(Text);
end;

procedure TfrmEReturnAmani.ppDBText25GetText(Sender: TObject; var Text: String);
begin
  Text := GetDocMCodeFromSerial(Text);
end;

procedure TfrmEReturnAmani.DBGrid1EditButtonClick(Sender: TObject);
var
  Code, Year: string;
begin
  if qrEReturnRow.FieldByName('RR_DOCNO').AsString <> '' then Exit;
  if DBGrid1.SelectedField = qrEReturnRow.FieldByName('R_GDSCODE') then
    if HelpGds(Code) then
    begin
      with qrEReturnRow do
      begin
        Edit;
        FieldByName('R_GDSCODE').AsString := Code;
      end;
      SelectNext(ActiveControl, True, True);
    end;
  if DBGrid1.SelectedField = qrEReturnRow.FieldByName('R_OFNUM') then
    Button1.Click;
end;

procedure TfrmEReturnAmani.qrEReturnRowR_OFNUMValidate(Sender: TField);
begin
  if Sender.AsString = '' then Exit;
  if HasInvetoryDoc(Sender.AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString) = False then
  begin
    MbError('»—«Ì «Ì‰ ›«ò Ê— ÕÊ«·Â ’«œ— ‰‘œÂ «” ');
    Abort
  end;
  if GetFactorCustomer(qrEReturnTit.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFNUM').AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsInteger) <> Sender.AsString then
  begin
    MbError('«Ì‰ ‘„«—Â ›«ò Ê— „—»Êÿ »Â «Ì‰ „‘ —Ì ‰„Ì»«‘œ');
    Abort;
  end;
  IsSpecCust := IsSpecialCustomerByFact(Sender.AsString, qrEReturnRow.FieldByName('R_OFYEAR').AsString, DistRial, DisQty, DistRow);
end;

procedure TfrmEReturnAmani.qrEReturnRowNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('R_YEAR').AsString := qrEReturnTit.FieldByName('R_YEAR').AsString;
  DataSet.FieldByName('R_CODE').AsString := qrEReturnTit.FieldByName('R_CODE').AsString;
  DataSet.FieldByName('R_TYPE').AsString := '0';
end;

procedure TfrmEReturnAmani.ppDBText18GetText(Sender: TObject;
  var Text: String);
begin
  if Text = '1' then
    Text := '⁄œ„ ›—Ê‘';
  if Text = '2' then
    Text := '⁄œ„ ”›«—‘';
  if Text = '3' then
    Text := '÷«Ì⁄« ';
  if Text = '4' then
    Text := ' «—ÌŒ ê–‘ Â';
  if Text = '5' then
    Text := ' »œÌ· ÌÂ ›«ò Ê—';
  if Text = '6' then
    Text := '⁄œ„ ›—Ê‘ »œÊ‰ »—ê‘  ¬›—';
end;

procedure TfrmEReturnAmani.qrEReturnRowRR_DOCNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := GetDocMCodeFromSerial(Sender.AsString);
end;

end.
