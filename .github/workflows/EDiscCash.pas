{$I Direct.Inc}
unit EDiscCash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, xcalClass, xcalPersian, xcalPlannerCal, xcalDBPlannerCal, {$I MbUses.Inc};

type
  TfrmEDiscCash = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    Panel1: TPanel;
    qrEDiscCash: TQuery;
    usEDiscCash: TUpdateSQL;
    dsEDiscCash: TDataSource;
    qrEDiscCashD_CODE: TFloatField;
    qrEDiscCashD_PERSENT: TFloatField;
    qrEDiscCashD_STATUS: TFloatField;
    DBGrid1: TDBGrid;
    qrEDiscCashD_DATE: TStringField;
    qrEDiscCashD_CHEQUE: TFloatField;
    qrEDiscCashD_CHEQUE_7: TFloatField;
    XCalDBPlannerCalendar2: TXCalDBPlannerCalendar;
    PersianCalendar1: TPersianCalendar;
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrEDiscCashD_PERSENTValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEDiscCashNewRecord(DataSet: TDataSet);
    procedure qrEDiscCashD_DATEValidate(Sender: TField);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure XCalDBPlannerCalendar2DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalDBPlannerCalendar2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEDiscCash: TfrmEDiscCash;

implementation

uses Utility, Utitlty, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEDiscCash.FormShow(Sender: TObject);
begin
  SelectData(qrEDiscCash, 'DISCOUNTEDCASH_T', 'TRUE', 'GRIDVIEW');
  XCalDBPlannerCalendar2.Visible := False;
  XCalDBPlannerCalendar2.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
end;

procedure TfrmEDiscCash.BtnPostClick(Sender: TObject);
begin
  with qrEDiscCash do
  begin
//    Edit;
//    FieldByName('D_CODE').AsString := '1';
//    FieldByName('D_STATUS').AsString := '0';
    ApplyUpdates;
  end;
end;

procedure TfrmEDiscCash.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDiscCash.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrEDiscCash);
end;

procedure TfrmEDiscCash.qrEDiscCashD_PERSENTValidate(Sender: TField);
begin
  if Sender.AsFloat > 100 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEDiscCash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDiscCash.qrEDiscCashNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('D_CODE').AsFloat := GetMax('DISCOUNTEDCASH_T', 'D_CODE') + 1;
  DataSet.FieldByName('D_STATUS').AsString := '0';
end;

procedure TfrmEDiscCash.qrEDiscCashD_DATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    Abort;
  end
end;

procedure TfrmEDiscCash.DBGrid1EditButtonClick(Sender: TObject);
begin
  if StringReplace(qrEDiscCash.FieldByName('D_DATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
    XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrEDiscCash.FieldByName('D_DATE').AsString, 7, 2)),
                                   StrToInt(Copy(qrEDiscCash.FieldByName('D_DATE').AsString, 5, 2)),
                                   StrToInt(Copy(qrEDiscCash.FieldByName('D_DATE').AsString, 1, 4)));
  XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar2.Visible;

end;

procedure TfrmEDiscCash.XCalDBPlannerCalendar2DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrEDiscCash.Edit;
  qrEDiscCash.FieldByName('D_DATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  DBGrid1.SetFocus;
end;

procedure TfrmEDiscCash.XCalDBPlannerCalendar2Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar2.Visible := False;
end;

end.
