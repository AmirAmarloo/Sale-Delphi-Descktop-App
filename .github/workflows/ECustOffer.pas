{$I Direct.Inc}
unit ECustOffer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, xcalClass, xcalPersian, xcalPlannerCal, xcalDBPlannerCal, {$I MbUses.Inc};

type
  TfrmECustOffer = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qrECustOffer: TQuery;
    usECustOffer: TUpdateSQL;
    dsECustOffer: TDataSource;
    qrECustOfferCO_CUSTNO: TFloatField;
    qrECustOfferCO_GDSCODE: TStringField;
    qrECustOfferCO_QTY: TFloatField;
    qrECustOfferCO_OFFER: TFloatField;
    qrECustOfferCF_CUSTNAME: TStringField;
    qrECustOfferCF_GDSNAME: TStringField;
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
    qrECustOfferCO_FROMDATE: TStringField;
    qrECustOfferCO_TODATE: TStringField;
    sbCustNo: TSpeedButton;
    qrFindRec: TQuery;
    Button1: TButton;
    Button2: TButton;
    XCalDBPlannerCalendar2: TXCalDBPlannerCalendar;
    PersianCalendar1: TPersianCalendar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrECustOfferBeforeDelete(DataSet: TDataSet);
    procedure qrECustOfferAfterDelete(DataSet: TDataSet);
    procedure qrECustOfferBeforeScroll(DataSet: TDataSet);
    procedure qrECustOfferCO_GDSCODEValidate(Sender: TField);
    procedure qrECustOfferCalcFields(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrECustOfferNewRecord(DataSet: TDataSet);
    procedure DBEdit1Enter(Sender: TObject);
    procedure qrECustOfferCO_FROMDATEValidate(Sender: TField);
    procedure sbCustNoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure XCalDBPlannerCalendar2Exit(Sender: TObject);
    procedure XCalDBPlannerCalendar2DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    DelFlag: Boolean;
    CoCustNo: String;
  public
    { Public declarations }
  end;

var
  frmECustOffer: TfrmECustOffer;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, ECopyDist;

{$R *.dfm}

procedure TfrmECustOffer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmECustOffer.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmECustOffer.SpeedButton8Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrECustOffer do
    begin
      Edit;
      FieldByName('CO_CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECustOffer.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: String;
begin
  if DBGrid1.SelectedField.FieldName = 'CO_GDSCODE' then
  begin
    if HelpGds(Code) then
    begin
      with qrECustOffer do
      begin
        Edit;
        FieldByName('CO_GDSCODE').AsString:= Code;
      end;
    end;
  end;
  if DBGrid1.SelectedField.FieldName = 'CO_FROMDATE' then
  begin
    if StringReplace(qrECustOffer.FieldByName('CO_FROMDATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
      XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrECustOffer.FieldByName('CO_FROMDATE').AsString, 7, 2)),
                                     StrToInt(Copy(qrECustOffer.FieldByName('CO_FROMDATE').AsString, 5, 2)),
                                     StrToInt(Copy(qrECustOffer.FieldByName('CO_FROMDATE').AsString, 1, 4)));
    XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar2.Visible;
  end;
  if DBGrid1.SelectedField.FieldName = 'CO_TODATE' then
  begin
    if StringReplace(qrECustOffer.FieldByName('CO_TODATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
      XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrECustOffer.FieldByName('CO_TODATE').AsString, 7, 2)),
                                     StrToInt(Copy(qrECustOffer.FieldByName('CO_TODATE').AsString, 5, 2)),
                                     StrToInt(Copy(qrECustOffer.FieldByName('CO_TODATE').AsString, 1, 4)));
    XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar2.Visible;
  end;
end;

procedure TfrmECustOffer.FormShow(Sender: TObject);
begin
  SelectEmpty(qrECustOffer, 'CUSTOFFER_T');
  XCalDBPlannerCalendar2.Visible := False;
  XCalDBPlannerCalendar2.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
end;

procedure TfrmECustOffer.DBEdit1Exit(Sender: TObject);
begin
  if not ExistCustomer(qrECustOffer.FieldByName('CO_CUSTNO').AsString) then
  begin
    MbError(InvalidCustCode);
    DBEdit1.SetFocus;
    Exit;
  end;
  with qrECustOffer do
  begin
    CoCustNo := FieldByName('CO_CUSTNO').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTOFFER_T');
    SQL.Add('WHERE CO_CUSTNO = :CUSTNO');
    ParamByName('CUSTNO').AsString := CoCustNo;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('CO_CUSTNO').AsString := CoCustNo;
    end;
  end;
  DelFlag := True;
end;

procedure TfrmECustOffer.qrECustOfferBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmECustOffer.qrECustOfferAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmECustOffer.qrECustOfferBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(DBGrid1, ['CO_GDSCODE']) then
  begin
    MbError(RepeatedError);
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TfrmECustOffer.qrECustOfferCO_GDSCODEValidate(Sender: TField);
var
  GdsDesc: String;
begin
  GdsDesc := FindGdsFDesc(Sender.AsString);
  if GdsDesc = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmECustOffer.qrECustOfferCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(Dataset.FieldByName('CO_CUSTNO').AsString);
  DataSet.FieldByName('CF_GDSNAME').AsString := FindGdsFDesc(Dataset.FieldByName('CO_GDSCODE').AsString);
end;

procedure TfrmECustOffer.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrECustOffer, 'SALES', 'CUSTOFFER_T') then
  begin
    MbError(InCompleteData);
    Exit;
  end;
  qrECustOffer.ApplyUpdates;
  
  SelectEmpty(qrECustOffer, 'CUSTOFFER_T');
  DBEdit1.SetFocus;
end;

procedure TfrmECustOffer.BtnDelClick(Sender: TObject);
begin
  qrECustOffer.Delete;
  qrECustOffer.ApplyUpdates;
end;

procedure TfrmECustOffer.sbExportToExcelClick(Sender: TObject);
begin
  with qrCustOfferEXP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTOFFER_T');
    SQL.Add('ORDER BY CO_CUSTNO');
    Open;
  end;
  ExportToExcel(qrCustOfferEXP);
end;

procedure TfrmECustOffer.qrECustOfferNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CO_CUSTNO').AsString := CoCustNo;
end;

procedure TfrmECustOffer.DBEdit1Enter(Sender: TObject);
begin
  CoCustNo := '';
end;

procedure TfrmECustOffer.qrECustOfferCO_FROMDATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    Abort;
  end;
end;

procedure TfrmECustOffer.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrECustOffer do
    begin
      Edit;
      FieldByName('CO_CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECustOffer.Button1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCostOfferRec(Code, qrECustOffer.FieldByName('CO_CUSTNO').AsString) then
    SelectNext(ActiveControl, True, True);
end;

procedure TfrmECustOffer.Button2Click(Sender: TObject);
begin
  frmECopyDist := TfrmECopyDist.Create(Self);
  frmECopyDist.Edit1.Text := qrECustOffer.FieldByName('CO_CUSTNO').AsString;
  frmECopyDist.Edit2.Text := qrECustOffer.FieldByName('CF_CUSTNAME').AsString;
  frmECopyDist.ShowModal;
end;

procedure TfrmECustOffer.XCalDBPlannerCalendar2Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar2.Visible := False;
end;

procedure TfrmECustOffer.XCalDBPlannerCalendar2DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrECustOffer.Edit;
  if DBGrid1.SelectedField.FieldName = 'CO_FROMDATE' then
    qrECustOffer.FieldByName('CO_FROMDATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  if DBGrid1.SelectedField.FieldName = 'CO_TODATE' then
    qrECustOffer.FieldByName('CO_TODATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  DBGrid1.SetFocus;

end;

procedure TfrmECustOffer.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
