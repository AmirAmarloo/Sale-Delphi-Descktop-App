{$I Direct.Inc}
unit EDriver;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEDriver = class(TMbForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sbVisitor: TSpeedButton;
    dbedDCode: TDBEdit;
    dbedDName: TDBEdit;
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    bbPrint: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    usEDriver: TUpdateSQL;
    dsEDriver: TDataSource;
    qrEDriver: TQuery;
    qrEDriverDRIVER_CODE: TStringField;
    qrEDriverDRIVER_ADD: TStringField;
    qrEDriverDRIVER_PHONE: TStringField;
    qrEDriverDRIVER_MOB: TStringField;
    qrEDriverDRIVER_EMAIL: TStringField;
    dbedDAdd: TDBEdit;
    dbedDPhone: TDBEdit;
    dbedDMob: TDBEdit;
    dbedDEmail: TDBEdit;
    Label7: TLabel;
    dbedDLicense: TDBEdit;
    qrEDriverDRIVER_LICENSE: TStringField;
    qrTmp: TQuery;
    qrTmpD: TQuery;
    qrEDriverDRIVER_FAMILY: TStringField;
    qrEDriverDRIVER_NATIONCODE: TStringField;
    qrEDriverDRIVER_NAME: TStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    qrEDriverSEND_STAT: TFloatField;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbedDCodeExit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbVisitorClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
  private
    { Private declarations }
   IsLock : Boolean;
  public
    { Public declarations }
  end;

var
  frmEDriver: TfrmEDriver;

implementation

uses Utility, MainUnit, Vars, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEDriver.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDriver.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDriver.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEDriver, 'DRIVER_T');
end;

procedure TfrmEDriver.dbedDCodeExit(Sender: TObject);
var
  DCode: String;
begin
  with qrEDriver do
  begin
    DCode := FieldByName('DRIVER_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DRIVER_T');
    SQL.Add('WHERE DRIVER_CODE = :DCODE');
    ParamByName('DCODE').AsString := DCode;
    Open;
    if IsEmpty then
    begin
      qrEDriver.Edit;
      qrEDriver.FieldByName('DRIVER_CODE').AsString := DCode;
{     with qrTmpD do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT MS_IDNO,MS_NAME , MS_LASTNAME');
        Sql.Add('FROM PAYROLL.P110_T');
        Sql.Add('WHERE MS_IDNO = :IDNO');
        ParamByName('IdNo').AsString := DCode;
        Open;
        if qrTmpD.IsEmpty then
        begin
          MbError('«Ì‰ Å—”‰· œ— ”Ì” „ ÕﬁÊﬁ „⁄—›Ì ‰‘œÂ «” .');
          dbedDCode.SetFocus;
          Exit;
        end
        else
        begin
          qrEDriver.Edit;
          qrEDriver.FieldByName('DRIVER_CODE').AsString := DCode;
        end;
      end;}
    end;
  end;
end;

procedure TfrmEDriver.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEDriver, Copy(SchemaName, 1, Length(SchemaName) - 1), 'DRIVER_T')then
    Exit;
  qrEDriver.Edit;
  qrEDriver.FieldByName('SEND_STAT').AsInteger := 2;
  qrEDriver.ApplyUpdates;
  SelectEmpty(qrEDriver, 'DRIVER_T');
  dbedDCode.SetFocus;
end;

procedure TfrmEDriver.BtnDelClick(Sender: TObject);
begin
  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    qrEDriver.Delete;
    qrEDriver.ApplyUpdates;
  end;
  SelectEmpty(qrEDriver, 'DRIVER_T');
  dbedDCode.SetFocus;
end;

procedure TfrmEDriver.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TfrmEDriver.sbVisitorClick(Sender: TObject);
var
  Code: string;
begin
  if HelpDriver(Code) then
  begin
    dbedDCode.SetFocus;
    with qrEDriver do
    begin
      Edit;
      FieldByName('DRIVER_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEDriver.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDriver.DisableControls;
  try
    if not CheckChanges(qrEDriver, qrEDriver, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEDriver, 'DRIVER_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDriver.EnableControls;
  end;
end;

procedure TfrmEDriver.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDriver.DisableControls;
  try
    if not CheckChanges(qrEDriver, qrEDriver, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEDriver, 'DRIVER_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDriver.EnableControls;
  end;
end;

procedure TfrmEDriver.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDriver.DisableControls;
  try
    if not CheckChanges(qrEDriver, qrEDriver, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEDriver, 'DRIVER_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDriver.EnableControls;
  end;
end;

procedure TfrmEDriver.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDriver.DisableControls;
  try
    if not CheckChanges(qrEDriver, qrEDriver, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEDriver, 'DRIVER_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDriver.EnableControls;
  end;
end;

end.
