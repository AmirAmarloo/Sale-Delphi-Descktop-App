{$I Direct.Inc}
unit ECostDisVal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, ppBands, ppCache, ppClass, ppDB, ppDBPipe, ppDBBDE,
  ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppPrnabl, xcalPlannerCal,
  xcalDBPlannerCal, xcalClass, xcalPersian, {$I MbUses.Inc};

type
  TfrmECostDisVal = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    qrECustOffer: TQuery;
    usECustOffer: TUpdateSQL;
    dsECustOffer: TDataSource;
    qrECustOfferCF_CUSTNAME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qrCustOfferEXP: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    sbCustNo: TSpeedButton;
    qrFindRec: TQuery;
    Button1: TButton;
    Button2: TButton;
    qrECustOfferCUSTNO: TFloatField;
    qrECustOfferD_FROMDATE: TStringField;
    qrECustOfferD_TODATE: TStringField;
    qrECustOfferD_AMOUNT: TFloatField;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    qrDisplay: TQuery;
    DataSource1: TDataSource;
    qrDisplayCUSTNO: TFloatField;
    qrDisplayCUSTNAME: TStringField;
    qrDisplayD_FROMDATE: TStringField;
    qrDisplayOFYEAR: TFloatField;
    qrDisplayOFNUM: TStringField;
    qrDisplayOFDATE: TStringField;
    qrDisplayD_AMOUNT: TFloatField;
    DBGrid1: TDBGrid;
    qrDisplayOFBRANCH: TStringField;
    qrECustOfferD_DESC: TStringField;
    qrECustOfferD_SUBMITDATE: TStringField;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    qrSummery: TQuery;
    qrSummeryCUSTNO: TFloatField;
    qrSummeryCUSTNAME: TStringField;
    qrSummeryD_FROMDATE: TStringField;
    qrSummeryD_AMOUNT: TFloatField;
    qrSummeryADDEDTAX: TFloatField;
    qrSummeryD_TODATE: TStringField;
    qrSummeryD_DESC: TStringField;
    qrSummeryD_SUBMITDATE: TStringField;
    DBGrid2: TDBGrid;
    dsSummery: TDataSource;
    DBComboBox1: TDBComboBox;
    ComboBox1: TComboBox;
    qrDisplayADVAL: TFloatField;
    qrDisplayADDEDTAX: TFloatField;
    Panel2: TPanel;
    Label7: TLabel;
    Edit1: TEdit;
    qrTemp: TQuery;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    ppReport1: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    qrReport: TQuery;
    dsReport: TDataSource;
    qrReportCUSTNO: TFloatField;
    qrReportCUSTNAME: TStringField;
    qrReportD_FROMDATE: TStringField;
    qrReportD_TODATE: TStringField;
    qrReportD_AMOUNT: TFloatField;
    qrReportADDEDTAX: TFloatField;
    qrReportD_DESC: TStringField;
    qrReportD_SUBMITDATE: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    SpeedButton2: TSpeedButton;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    XCalDBPlannerCalendar2: TXCalDBPlannerCalendar;
    PersianCalendar1: TPersianCalendar;
    XCalDBPlannerCalendar1: TXCalDBPlannerCalendar;
    PersianCalendar2: TPersianCalendar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrECustOfferBeforeDelete(DataSet: TDataSet);
    procedure qrECustOfferAfterDelete(DataSet: TDataSet);
    procedure qrECustOfferBeforeScroll(DataSet: TDataSet);
    procedure qrECustOfferCalcFields(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrECustOfferCO_FROMDATEValidate(Sender: TField);
    procedure sbCustNoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure XCalDBPlannerCalendar1Exit(Sender: TObject);
    procedure XCalDBPlannerCalendar2Exit(Sender: TObject);
    procedure XCalDBPlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalDBPlannerCalendar2DaySelect(Sender: TObject;
      SelDate: TDateTime);
  private
    { Private declarations }
    DelFlag: Boolean;
  public
    { Public declarations }
  end;

var
  frmECostDisVal: TfrmECostDisVal;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, ECopyDist;

{$R *.dfm}

procedure TfrmECostDisVal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmECostDisVal.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmECostDisVal.SpeedButton8Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrECustOffer do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECostDisVal.FormShow(Sender: TObject);
begin
  SelectEmpty(qrECustOffer, 'DISFORVAL_T');
  XCalDBPlannerCalendar1.Visible := False;
  XCalDBPlannerCalendar1.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
  XCalDBPlannerCalendar2.Visible := False;
  XCalDBPlannerCalendar2.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
end;

procedure TfrmECostDisVal.DBEdit1Exit(Sender: TObject);
var
  Val1: Double;
begin
  if not ExistCustomer(qrECustOffer.FieldByName('CUSTNO').AsString) then
  begin
    MbError(InvalidCustCode);
    DBEdit1.SetFocus;
    Exit;
  end;
  qrDisplay.Close;
  qrDisplay.ParamByName('YEAR').AsInteger := System_YY;
  qrDisplay.Open;
  qrSummery.Close;
  qrSummery.ParamByName('YEAR').AsInteger := System_YY;
  qrSummery.ParamByName('CUSTNO').AsString := qrECustOffer.FieldByName('CUSTNO').AsString;
  qrSummery.Open;
  qrECustOffer.Edit;
  qrECustOffer.fieldByName('D_FROMDATE').AsString := MsFarsiDate1(GetDataBaseDate);
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Assign(qrDisplay.SQL);
    SQL.Insert(0, 'SELECT SUM(NVL(ADVAL, 0))SUMADVAL FROM(');
    SQL.Add(')');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('CUSTNO').AsString := qrECustOffer.FieldByName('CUSTNO').AsString;
    Open;
    Edit2.Text := SetCammaEdit(FieldByName('SUMADVAL').AsFloat);
    Val1 := FieldByName('SUMADVAL').AsFloat;
    Close;
    SQL.Clear;
    SQL.Assign(qrSummery.SQL);
    SQL.Insert(0, 'SELECT SUM(NVL(D_AMOUNT, 0))SUMDAMOUNT FROM(');
    SQL.Add(')');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('CUSTNO').AsString := qrECustOffer.FieldByName('CUSTNO').AsString;
    Open;
    Edit1.Text := SetCammaEdit(FieldByName('SUMDAMOUNT').AsFloat);
    Edit3.Text := SetCammaEdit(FieldByName('SUMDAMOUNT').AsFloat - Val1);
  end;
end;

procedure TfrmECostDisVal.qrECustOfferBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmECostDisVal.qrECustOfferAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmECostDisVal.qrECustOfferBeforeScroll(DataSet: TDataSet);
begin
{
  if not DelFlag then
    Exit;
  if IsRowDuplicate(DBGrid1, ['CUSTNO', '']) then
  begin
    MbError(RepeatedError);
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
}
end;

procedure TfrmECostDisVal.qrECustOfferCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(Dataset.FieldByName('CUSTNO').AsString);
end;

procedure TfrmECostDisVal.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrECustOffer, 'SALES', 'DISFORVAL_T') then
  begin
    MbError(InCompleteData);
    Exit;
  end;
  qrECustOffer.Edit;
  qrECustOffer.FieldByName('D_SUBMITDATE').AsString := MsFarsiDate1(GetDataBaseDate);
  qrECustOffer.FieldByName('D_DESC').AsString := qrECustOffer.FieldByName('D_DESC').AsString + ' ' +  ComboBox1.Text;
  qrECustOffer.ApplyUpdates;
  
  SelectEmpty(qrECustOffer, 'DISFORVAL_T');
  DBEdit1.SetFocus;
end;

procedure TfrmECostDisVal.BtnDelClick(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ADVAL FROM VALIDITY_T');
    SQL.Add('WHERE ADNUM3 = :YEAR');
    SQL.Add('  AND ADCODE = -1');
    SQL.Add('  AND ADNUM2 IN (SELECT OFNUM FROM OFFERTIT_T');
    SQL.Add('                 WHERE TAFSILY_YEAR = :YEAR');
    SQL.Add('                   AND CUSTNO = :CUSTNO');
    SQL.Add('                   AND OFDATE BETWEEN :FROMDATE AND :TODATE)');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('CUSTNO').AsString := qrSummery.FieldByName('CUSTNO').AsString;
    ParamByName('FROMDATE').AsString := qrSummery.FieldByName('D_FROMDATE').AsString;
    ParamByName('TODATE').AsString := qrSummery.FieldByName('D_TODATE').AsString;
    Open;
    if IsEmpty then
    begin
      with qrTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM DISFORVAL_T');
        SQL.Add('WHERE CUSTNO = :CUSTNO');
        SQL.Add('  AND D_FROMDATE = :FROMDATE');
        SQL.Add('  AND D_DESC = :DESC');
        ParamByName('CUSTNO').AsString := qrSummery.FieldByName('CUSTNO').AsString;
        ParamByName('FROMDATE').AsString := qrSummery.FieldByName('D_FROMDATE').AsString;
        ParamByName('DESC').AsString := qrSummery.FieldByName('D_DESC').AsString;
        ExecSQL;
      end;
      DBEdit1Exit(Sender);
    end;
  end;
end;

procedure TfrmECostDisVal.sbExportToExcelClick(Sender: TObject);
begin
  with qrCustOfferEXP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DISFORVAL_T');
    SQL.Add('ORDER BY CUSTNO');
    Open;
  end;
  ExportToExcel(qrCustOfferEXP);
end;

procedure TfrmECostDisVal.qrECustOfferCO_FROMDATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    Abort;
  end;
end;

procedure TfrmECostDisVal.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrECustOffer do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECostDisVal.Button1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCostOfferRec(Code, qrECustOffer.FieldByName('CUSTNO').AsString) then
    SelectNext(ActiveControl, True, True);
end;

procedure TfrmECostDisVal.Button2Click(Sender: TObject);
begin
  frmECopyDist := TfrmECopyDist.Create(Self);
  frmECopyDist.Edit1.Text := qrECustOffer.FieldByName('CUSTNO').AsString;
  frmECopyDist.Edit2.Text := qrECustOffer.FieldByName('CF_CUSTNAME').AsString;
  frmECopyDist.ShowModal;
end;

procedure TfrmECostDisVal.DBEdit4Exit(Sender: TObject);
begin
  if not MsDateIsValid1(qrECustOffer.FieldByName('D_TODATE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit4.SetFocus;
  end;
  if qrECustOffer.FieldByName('D_TODATE').AsInteger < qrECustOffer.FieldByName('D_FROMDATE').AsInteger then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit4.SetFocus;
  end;

end;

procedure TfrmECostDisVal.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCostDisVal(Code, qrECustOffer.FieldByName('CUSTNO').AsString, qrECustOffer.FieldByName('CF_CUSTNAME').AsString) then
  begin
    DBEdit3.SetFocus;
    with qrECustOffer do
    begin
      Edit;
      FieldByName('D_FROMDATE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECostDisVal.ComboBox1Exit(Sender: TObject);
var
  CoCustNo, FromDate, DDesc: String;
  MaxToDate: Integer;
begin
  if not MsDateIsValid1(qrECustOffer.FieldByName('D_FROMDATE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit3.SetFocus;
    Exit;
  end;
  MaxToDate := GetMaxDisValToDate(qrECustOffer.FieldByName('CUSTNO').AsString, qrECustOffer.FieldByName('D_FROMDATE').AsString);
  if (MaxToDate <> 0) and (qrECustOffer.FieldByName('D_FROMDATE').AsInteger < MaxToDate) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit3.SetFocus;
    Exit;
  end;
  with qrECustOffer do
  begin
    CoCustNo := FieldByName('CUSTNO').AsString;
    FromDate := FieldByName('D_FROMDATE').AsString;
    DDesc := FieldByName('D_DESC').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DISFORVAL_T');
    SQL.Add('WHERE CUSTNO = :CUSTNO');
    SQL.Add('  AND D_FROMDATE = :FROMDATE');
    SQL.Add('  AND D_DESC = :DDESC');
    ParamByName('CUSTNO').AsString := CoCustNo;
    ParamByName('FROMDATE').AsString := FromDate;
    ParamByName('DDESC').AsString := DDesc + ' ' + ComboBox1.Text;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('CUSTNO').AsString := CoCustNo;
      FieldByName('D_FROMDATE').AsString := FromDate;
      FieldByName('D_DESC').AsString := DDesc;
    end
    else
      DBComboBox1.Text := DDesc;
  end;
  DelFlag := True;
end;

procedure TfrmECostDisVal.ppDBText6GetText(Sender: TObject;
  var Text: String);
begin
  if Text <> ' ' then
    Text := MbFormatDate1(Text);
end;

procedure TfrmECostDisVal.SpeedButton2Click(Sender: TObject);
begin
  with qrReport do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.CUSTNO, A.CUSTNAME, CHR(32)D_FROMDATE,');
    SQL.Add('       CHR(32)D_TODATE, CHR(32)D_DESC, CHR(32)D_SUBMITDATE,');
    SQL.Add('       NVL(D_AMOUNT, 0) - NVL(ADVAL, 0)D_AMOUNT,');
    SQL.Add('       NVL(A.ADDEDTAX, 0) - NVL(B.ADDEDTAX, 0)ADDEDTAX FROM');
    SQL.Add('(');
    SQL.Add('SELECT I.CUSTNO, CUSTNAME,');
    SQL.Add('       SUM(NVL(D_AMOUNT, 0))D_AMOUNT,');
    SQL.Add('       SUM(ROUND((NVL(D_AMOUNT, 0) * AD_TOTAL)/100)) ADDEDTAX');
    SQL.Add('FROM ADDEDTAX_T, DISFORVAL_T V,');
    SQL.Add('     IDCUSTOMER_T I');
    SQL.Add('WHERE AD_YEAR = :YEAR');
    SQL.Add('  AND SUBSTR(D_FROMDATE, 1, 4) = :YEAR');
    SQL.Add('  AND V.CUSTNO = I.CUSTNO');
    SQL.Add('GROUP BY I.CUSTNO, CUSTNAME');
    SQL.Add(')A,');
    SQL.Add('(');
    SQL.Add('SELECT I.CUSTNO, CUSTNAME, SUM(ROUND(NVL(ADVAL, 0)))ADVAL,');
    SQL.Add('       SUM(TRUNC(ROUND((ADVAL * AD_TOTAL)/100))) ADDEDTAX');
    SQL.Add('FROM ADDEDTAX_T, --DISFORVAL_T V,');
    SQL.Add('     IDCUSTOMER_T I,');
    SQL.Add('     VALIDITY_T, OFFERTIT_T O');
    SQL.Add('WHERE AD_YEAR = TAFSILY_YEAR');
    SQL.Add('  AND TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND O.CUSTNO = I.CUSTNO');
    SQL.Add('  AND ADNUM2 = O.OFNUM');
    SQL.Add('  AND ADNUM3 = TAFSILY_YEAR');
    SQL.Add('  AND ADCODE = -1');
    SQL.Add('GROUP BY I.CUSTNO, CUSTNAME');
    SQL.Add(')B');
    SQL.Add('WHERE A.CUSTNO = B.CUSTNO(+)');
{    SQL.Add('  AND NVL(D_AMOUNT, 0) - NVL(ADVAL, 0) <> 0');
    SQL.Add('  AND NVL(A.ADDEDTAX, 0) - NVL(B.ADDEDTAX, 0) <> 0');}

{    SQL.Add('SELECT I.CUSTNO, CUSTNAME, D_FROMDATE,');
    SQL.Add('       D_AMOUNT, ROUND((D_AMOUNT * AD_TOTAL)/100) ADDEDTAX, D_TODATE, D_DESC, D_SUBMITDATE');
    SQL.Add('FROM ADDEDTAX_T, DISFORVAL_T V,');
    SQL.Add('     IDCUSTOMER_T I');
    SQL.Add('WHERE AD_YEAR = :YEAR');
    SQL.Add('  AND SUBSTR(D_FROMDATE, 1, 4) = :YEAR');
    SQL.Add('  AND V.CUSTNO = I.CUSTNO');
    SQL.Add('  AND D_FROMDATE = (SELECT MAX(D_FROMDATE) FROM DISFORVAL_T');
    SQL.Add('                    WHERE CUSTNO = I.CUSTNO');
    SQL.Add('                      AND SUBSTR(D_FROMDATE, 1, 4) = :YEAR');
    SQL.Add('                    )');
}
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
    if IsEmpty then
    begin
      MbPrompt(NoReport);
      Exit;
    end;
    ppReport1.Print;
  end;

end;

procedure TfrmECostDisVal.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

procedure TfrmECostDisVal.SpeedButton3Click(Sender: TObject);
begin
  if StringReplace(qrECustOffer.FieldByName('D_FROMDATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
    XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrECustOffer.FieldByName('D_FROMDATE').AsString, 7, 2)),
                                   StrToInt(Copy(qrECustOffer.FieldByName('D_FROMDATE').AsString, 5, 2)),
                                   StrToInt(Copy(qrECustOffer.FieldByName('D_FROMDATE').AsString, 1, 4)));
  XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar2.Visible;

end;

procedure TfrmECostDisVal.SpeedButton4Click(Sender: TObject);
begin
  if StringReplace(qrECustOffer.FieldByName('D_TODATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
    XCalDBPlannerCalendar1.SetDate(StrToInt(Copy(qrECustOffer.FieldByName('D_TODATE').AsString, 7, 2)),
                                   StrToInt(Copy(qrECustOffer.FieldByName('D_TODATE').AsString, 5, 2)),
                                   StrToInt(Copy(qrECustOffer.FieldByName('D_TODATE').AsString, 1, 4)));
  XCalDBPlannerCalendar1.Visible := not XCalDBPlannerCalendar1.Visible;
end;

procedure TfrmECostDisVal.XCalDBPlannerCalendar1Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar1.Visible := False;
end;

procedure TfrmECostDisVal.XCalDBPlannerCalendar2Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar2.Visible := False;
end;

procedure TfrmECostDisVal.XCalDBPlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrECustOffer.Edit;
  qrECustOffer.FieldByName('D_TODATE').AsString := StringReplace(XCalDBPlannerCalendar1.DatesAsText,'/','',[rfReplaceAll]);
  DBEdit4.SetFocus;
end;

procedure TfrmECostDisVal.XCalDBPlannerCalendar2DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrECustOffer.Edit;
  qrECustOffer.FieldByName('D_FROMDATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  DBEdit3.SetFocus;

end;

end.
