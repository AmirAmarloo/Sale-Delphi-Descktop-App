{$I Direct.Inc}
unit ETranslation;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmETranslation = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    Panel1: TPanel;
    qrETransport: TQuery;
    usETransport: TUpdateSQL;
    dsETransport: TDataSource;
    qrETransportT_CODE: TStringField;
    qrETransportT_DESC: TStringField;
    qrETransportT_COLOR: TStringField;
    qrETransportT_PLAK: TStringField;
    Label1: TLabel;
    dbedTCode: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    sbSearch: TSpeedButton;
    qrETransportT_DRIVER: TStringField;
    SpeedButton1: TSpeedButton;
    dbedDriver: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    qrETransportCF_DRIVERNAME: TStringField;
    qrETransportT_CAPACITY: TFloatField;
    qrETransportT_HEIGHT2: TFloatField;
    qrETransportT_WIDTH: TFloatField;
    qrETransportT_LENGHT: TFloatField;
    qrETransportT_MODEL: TStringField;
    qrETransportT_CONSPER100: TFloatField;
    qrETransportT_FUELTYPE: TStringField;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    qrETransportSEND_STAT: TFloatField;
    qrETransportBR_CODE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure dbedTCodeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure dbedDriverExit(Sender: TObject);
    procedure qrETransportCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmETranslation: TfrmETranslation;

implementation

uses Utility, Functions, UMessage, Vars, Help;

{$R *.dfm}

procedure TfrmETranslation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmETranslation.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmETranslation.dbedTCodeExit(Sender: TObject);
var
  TCode: String;
begin
  with qrETransport do
  begin
    TCode := FieldByName('T_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TRANSPORT_T');
    SQL.Add('WHERE T_CODE = :TCODE');
    ParamByName('TCODE').AsString := TCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('T_CODE').AsString := TCode;
    end;
  end;
end;

procedure TfrmETranslation.FormShow(Sender: TObject);
begin
  SelectEmpty(qrETransport, 'TRANSPORT_T');
end;

procedure TfrmETranslation.btnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrETransport, Copy(SchemaName, 1, Length(SchemaName) - 1), 'TRANSPORT_T') then Exit;
  qrETransport.Edit;
  qrETransport.FieldByName('SEND_STAT').AsInteger := 2;
  qrETransport.ApplyUpdates;
  SelectEmpty(qrETransport, 'TRANSPORT_T');
  dbedTCode.SetFocus;
end;

procedure TfrmETranslation.btnDeleteClick(Sender: TObject);
begin
  qrETransport.Delete;
  qrETransport.ApplyUpdates;
end;

procedure TfrmETranslation.sbSearchClick(Sender: TObject);
var
  Code: string;
begin
  if HelpTransport(Code) then
  begin
    dbedTCode.SetFocus;
    with qrETransport do
    begin
      Edit;
      FieldByName('T_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETranslation.dbedDriverExit(Sender: TObject);
begin
  if GetDriverName(qrETransport.FieldByName('T_DRIVER').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedDriver.SetFocus;
    Exit;
  end;
end;

procedure TfrmETranslation.qrETransportCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_DRIVERNAME').AsString := GetDriverName(DataSet.FieldByName('T_DRIVER').AsString);
end;

procedure TfrmETranslation.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpDriver(Code) then
  begin
    dbedDriver.SetFocus;
    with qrETransport do
    begin
      Edit;
      FieldByName('T_DRIVER').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETranslation.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrETransport.DisableControls;
  try
    if not CheckChanges(qrETransport, qrETransport, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrETransport, 'TRANSPORT_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrETransport.EnableControls;
  end;
end;

procedure TfrmETranslation.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrETransport.DisableControls;
  try
    if not CheckChanges(qrETransport, qrETransport, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrETransport, 'TRANSPORT_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrETransport.EnableControls;
  end;
end;

procedure TfrmETranslation.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrETransport.DisableControls;
  try
    if not CheckChanges(qrETransport, qrETransport, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrETransport, 'TRANSPORT_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrETransport.EnableControls;
  end;
end;

procedure TfrmETranslation.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrETransport.DisableControls;
  try
    if not CheckChanges(qrETransport, qrETransport, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrETransport, 'TRANSPORT_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrETransport.EnableControls;
  end;
end;

procedure TfrmETranslation.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

end.
