{$I Direct.Inc}
unit EVisitor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEVisitor = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    qrEVisitor: TQuery;
    dsEVisitor: TDataSource;
    usEVisitor: TUpdateSQL;
    qrEVisitorV_CODE: TStringField;
    qrEVisitorV_NAME: TStringField;
    Label1: TLabel;
    dbedVCode: TDBEdit;
    Label2: TLabel;
    dbedVName: TDBEdit;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbVisitor: TSpeedButton;
    qrEVisitorV_PCODE: TFloatField;
    qrEVisitorCF_PDESC: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    qrEVisitorSEND_STAT: TFloatField;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure dbedVCodeExit(Sender: TObject);
    procedure sbVisitorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrEVisitorCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmEVisitor: TfrmEVisitor;

implementation

uses Utility, MainUnit, Vars, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEVisitor.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEVisitor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  VisitorCode := '';
  Action := caFree;
end;

procedure TfrmEVisitor.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEVisitor, 'VISITOR_T');
end;

procedure TfrmEVisitor.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEVisitor, Copy(SchemaName, 1, Length(SchemaName) - 1), 'VISITOR_T') then Exit;
  qrEVisitor.Edit;
  qrEVisitor.FieldByName('SEND_STAT').AsInteger := 2;
  qrEVisitor.ApplyUpdates;
  SelectEmpty(qrEVisitor, 'VISITOR_T');
  dbedVCode.SetFocus;
end;

procedure TfrmEVisitor.BtnDelClick(Sender: TObject);
begin
  qrEVisitor.Delete;
  qrEVisitor.ApplyUpdates;
end;

procedure TfrmEVisitor.dbedVCodeExit(Sender: TObject);
var
  VCode: String;
begin
  with qrEVisitor do
  begin
    VCode := FieldByName('V_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VISITOR_T');
    SQL.Add('WHERE V_CODE = :VCODE');
    ParamByName('VCODE').AsString := VCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('V_CODE').AsString := VCode;
    end;
  end;
  VisitorCode := VCode;
end;

procedure TfrmEVisitor.sbVisitorClick(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    dbedVCode.SetFocus;
    with qrEVisitor do
    begin
      Edit;
      FieldByName('V_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEVisitor.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TfrmEVisitor.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitor.DisableControls;
  try
    if not CheckChanges(qrEVisitor, qrEVisitor, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitor, 'VISITOR_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitor.EnableControls;
  end;
end;

procedure TfrmEVisitor.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitor.DisableControls;
  try
    if not CheckChanges(qrEVisitor, qrEVisitor, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitor, 'VISITOR_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitor.EnableControls;
  end;
end;

procedure TfrmEVisitor.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitor.DisableControls;
  try
    if not CheckChanges(qrEVisitor, qrEVisitor, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitor, 'VISITOR_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitor.EnableControls;
  end;
end;

procedure TfrmEVisitor.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitor.DisableControls;
  try
    if not CheckChanges(qrEVisitor, qrEVisitor, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitor, 'VISITOR_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitor.EnableControls;
  end;
end;

procedure TfrmEVisitor.DBEdit1Exit(Sender: TObject);
var
  PRate: Integer;
begin
  if GetPositionDesc(qrEVisitor.FieldByName('V_PCODE').AsString, PRate) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmEVisitor.qrEVisitorCalcFields(DataSet: TDataSet);
var
  PRate: Integer;
begin
  DataSet.FieldByName('CF_PDESC').AsString := GetPositionDesc(DataSet.FieldByName('V_PCODE').AsString, PRate)
end;

procedure TfrmEVisitor.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpPosition(Code) then
  begin
    DBEdit1.SetFocus;
    with qrEVisitor do
    begin
      Edit;
      FieldByName('V_PCODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
