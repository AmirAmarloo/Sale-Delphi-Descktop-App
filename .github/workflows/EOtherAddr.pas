{$I Direct.Inc}
unit EOtherAddr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, {$I MbUses.Inc};

type
  TfrmEOtherAddr = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    btnDelete: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton8: TSpeedButton;
    sbCustNo: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    qrEOtherAddr: TQuery;
    dsEOtherAddr: TDataSource;
    usEOtherAddr: TUpdateSQL;
    qrEOtherAddrCA_CUSTNO: TFloatField;
    qrEOtherAddrCA_ADDR: TStringField;
    qrEOtherAddrCF_CUSTNAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbCustNoClick(Sender: TObject);
    procedure qrEOtherAddrCalcFields(DataSet: TDataSet);
    procedure qrEOtherAddrAfterDelete(DataSet: TDataSet);
    procedure qrEOtherAddrBeforeDelete(DataSet: TDataSet);
    procedure qrEOtherAddrBeforeScroll(DataSet: TDataSet);
    procedure qrEOtherAddrNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
  private
    { Private declarations }
    DelFlag: Boolean;
    CoCustNo: String;
  public
    { Public declarations }
  end;

var
  frmEOtherAddr: TfrmEOtherAddr;

implementation

uses Utility, Utitlty, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEOtherAddr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEOtherAddr.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrEOtherAddr do
    begin
      Edit;
      FieldByName('CA_CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEOtherAddr.qrEOtherAddrCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(Dataset.FieldByName('CA_CUSTNO').AsString);
end;

procedure TfrmEOtherAddr.qrEOtherAddrAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmEOtherAddr.qrEOtherAddrBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmEOtherAddr.qrEOtherAddrBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(DBGrid1, ['CA_ADDR']) then
  begin
    MbError(RepeatedError);
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TfrmEOtherAddr.qrEOtherAddrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CA_CUSTNO').AsString := CoCustNo;
end;

procedure TfrmEOtherAddr.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEOtherAddr, 'CUSTOTHERADDR_T');
end;

procedure TfrmEOtherAddr.Panel1Exit(Sender: TObject);
begin
  if not ExistCustomer(qrEOtherAddr.FieldByName('CA_CUSTNO').AsString) then
  begin
    MbError(InvalidCustCode);
    DBEdit1.SetFocus;
    Exit;
  end;
  with qrEOtherAddr do
  begin
    CoCustNo := FieldByName('CA_CUSTNO').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTOTHERADDR_T');
    SQL.Add('WHERE CA_CUSTNO = :CUSTNO');
    ParamByName('CUSTNO').AsString := CoCustNo;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('CA_CUSTNO').AsString := CoCustNo;
    end;
  end;
  DelFlag := True;
end;

procedure TfrmEOtherAddr.BtnPostClick(Sender: TObject);
begin
  qrEOtherAddr.ApplyUpdates;
end;

procedure TfrmEOtherAddr.btnDeleteClick(Sender: TObject);
begin
  qrEOtherAddr.ApplyUpdates;
  qrEOtherAddr.Delete;
end;

procedure TfrmEOtherAddr.sbExitClick(Sender: TObject);
begin
  Close;
end;

end.
