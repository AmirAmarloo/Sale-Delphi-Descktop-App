{$I Direct.Inc}
unit EDistPersent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, {$I MbUses.Inc};

type
  TfrmEDistPersent = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    qrEDistPersent: TQuery;
    usEDistPersent: TUpdateSQL;
    dsEDistPersent: TDataSource;
    qrEDistPersentCUSTNO: TFloatField;
    qrEDistPersentCUSTNAME: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    edCustCode: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    sbList: TSpeedButton;
    DBGrid1: TDBGrid;
    dsDisplay: TDataSource;
    qrDisplay: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    qrDisplayPERCENT_REDUCTION: TFloatField;
    qrEDistPersentPERCENT_REDUCTION: TFloatField;
    qrEDistPersentCUST_DISTRIAL: TFloatField;
    qrEDistPersentCUST_DISTQTY: TFloatField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    qrEDistPersentCUST_DISTROW: TFloatField;
    DBCheckBox3: TDBCheckBox;
    qrTemp: TQuery;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure edCustCodeExit(Sender: TObject);
    procedure qrDisplayAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEDistPersentPERCENT_REDUCTIONValidate(Sender: TField);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SelectEmptyData;
  public
    { Public declarations }
    DistCustno, DistCustName: String;
  end;

var
  frmEDistPersent: TfrmEDistPersent;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, MainUnit;

{$R *.dfm}

procedure TfrmEDistPersent.FormShow(Sender: TObject);
begin
  SelectEmptyData;
end;

procedure TfrmEDistPersent.BtnPostClick(Sender: TObject);
begin
  qrEDistPersent.ApplyUpdates;
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DR_CUSTNO FROM DISTRECORD_T');
    SQL.Add('WHERE DR_CUSTNO = :DR_CUSTNO');
    SQL.Add('  AND DR_DATE = :DR_DATE');
    ParamByName('DR_CUSTNO').AsString := qrEDistPersent.FieldByName('CUSTNO').AsString;
    ParamByName('DR_DATE').AsString := MbUserDate;
    Open;
    if IsEmpty then
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO DISTRECORD_T');
      SQL.Add('(DR_CUSTNO, DR_DATE, DR_DISTPERSENT, DR_DISTRIAL, DR_DISTQTY, DR_DISTROW)');
      SQL.Add('VALUES');
      SQL.Add('(:DR_CUSTNO, :DR_DATE, :DR_DISTPERSENT, :DR_DISTRIAL, :DR_DISTQTY, :DR_DISTROW)');
      ParamByName('DR_CUSTNO').AsString := qrEDistPersent.FieldByName('CUSTNO').AsString;
      ParamByName('DR_DATE').AsString := MbUserDate;
      ParamByName('DR_DISTPERSENT').AsString := qrEDistPersent.FieldByName('PERCENT_REDUCTION').AsString;
      ParamByName('DR_DISTRIAL').AsString := qrEDistPersent.FieldByName('CUST_DISTRIAL').AsString;
      ParamByName('DR_DISTQTY').AsString := qrEDistPersent.FieldByName('CUST_DISTQTY').AsString;
      ParamByName('DR_DISTROW').AsString := qrEDistPersent.FieldByName('CUST_DISTROW').AsString;
      ExecSQL;
    end;
  end;
  SelectEmptyData;
end;

procedure TfrmEDistPersent.sbListClick(Sender: TObject);
var
  Code: string;
begin
  edCustCode.SetFocus;
  if HelpCustomer(Code) then
  begin
    qrEDistPersent.Edit;
    qrEDistPersent.FieldByName('CUSTNO').AsString := Code;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmEDistPersent.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDistPersent.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrDisplay);
end;

procedure TfrmEDistPersent.edCustCodeExit(Sender: TObject);
begin
  if FindCusName(qrEDistPersent.FieldByName('CUSTNO').AsString) = '' then
  begin
    MbError(InvalidCode);
    edCustCode.SetFocus;
  end;
  SelectData(qrEDistPersent, 'IDCUSTOMER_T', 'TRUE', '');
end;

procedure TfrmEDistPersent.qrDisplayAfterScroll(DataSet: TDataSet);
begin
  qrEDistPersent.Edit;
  qrEDistPersent.FieldByName('CUSTNO').AsString := DataSet.FieldByName('CUSTNO').AsString;
  edCustCodeExit(TObject(edCustCode)); 
end;

procedure TfrmEDistPersent.SelectEmptyData;
begin
  SelectEmpty(qrEDistPersent, 'IDCUSTOMER_T');
  with qrDisplay do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CUSTNO, CUSTNAME, PERCENT_REDUCTION FROM IDCUSTOMER_T');
    SQL.Add('WHERE PERCENT_REDUCTION IS NOT NULL');
    Open;
  end;
end;

procedure TfrmEDistPersent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDistPersent.qrEDistPersentPERCENT_REDUCTIONValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 100 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEDistPersent.sbFirstClick(Sender: TObject);
begin
  qrDisplay.First;
end;

procedure TfrmEDistPersent.sbPrevClick(Sender: TObject);
begin
  qrDisplay.Prior;
end;

procedure TfrmEDistPersent.sbNextClick(Sender: TObject);
begin
  qrDisplay.Next;
end;

procedure TfrmEDistPersent.sbLastClick(Sender: TObject);
begin
  qrDisplay.Last;
end;

procedure TfrmEDistPersent.Button1Click(Sender: TObject);
begin
  DistCustno := qrEDistPersent.FieldByName('CUSTNO').AsString;
  DistCustName := qrEDistPersent.FieldByName('CUSTNAME').AsString;
  MainForm.acDDistPersen.Execute;
end;

end.
