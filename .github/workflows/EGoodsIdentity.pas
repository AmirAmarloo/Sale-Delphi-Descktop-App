{$I Direct.Inc}
unit EGoodsIdentity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEGoodsIdentity = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    qrEGoodsIdentity: TQuery;
    dsEGoodsIdentity: TDataSource;
    usEGoodsIdentity: TUpdateSQL;
    Label1: TLabel;
    dbedVCode: TDBEdit;
    dbedVName: TDBEdit;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbVisitor: TSpeedButton;
    Label3: TLabel;
    qrEGoodsIdentityG_ID: TStringField;
    qrEGoodsIdentityUNT_CODE: TFloatField;
    qrEGoodsIdentityG_DESC: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    qrEGoodsIdentityCF_UNITDESC: TStringField;
    DBEdit2: TDBEdit;
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
    procedure qrEGoodsIdentityCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmEGoodsIdentity: TfrmEGoodsIdentity;

implementation

uses Utility, MainUnit, Vars, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEGoodsIdentity.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGoodsIdentity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  VisitorCode := '';
  Action := caFree;
end;

procedure TfrmEGoodsIdentity.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEGoodsIdentity, 'GOODSIDENTITY_T');
end;

procedure TfrmEGoodsIdentity.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEGoodsIdentity, Copy(SchemaName, 1, Length(SchemaName) - 1), 'GOODSIDENTITY_T') then Exit;
  qrEGoodsIdentity.ApplyUpdates;
  SelectEmpty(qrEGoodsIdentity, 'GOODSIDENTITY_T');
  dbedVCode.SetFocus;
end;

procedure TfrmEGoodsIdentity.BtnDelClick(Sender: TObject);
begin
  qrEGoodsIdentity.Delete;
  qrEGoodsIdentity.ApplyUpdates;
end;

procedure TfrmEGoodsIdentity.dbedVCodeExit(Sender: TObject);
var
  VCode: String;
begin
  with qrEGoodsIdentity do
  begin
    VCode := FieldByName('G_ID').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSIDENTITY_T');
    SQL.Add('WHERE G_ID = :VCODE');
    ParamByName('VCODE').AsString := VCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('G_ID').AsString := VCode;
    end;
  end;
  VisitorCode := VCode;
  DBEdit1.SetFocus;
end;

procedure TfrmEGoodsIdentity.sbVisitorClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGoodsIdentity(Code) then
  begin
    dbedVCode.SetFocus;
    with qrEGoodsIdentity do
    begin
      Edit;
      FieldByName('G_ID').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGoodsIdentity.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TfrmEGoodsIdentity.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsIdentity.DisableControls;
  try
    if not CheckChanges(qrEGoodsIdentity, qrEGoodsIdentity, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsIdentity, 'GOODSIDENTITY_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsIdentity.EnableControls;
  end;
end;

procedure TfrmEGoodsIdentity.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsIdentity.DisableControls;
  try
    if not CheckChanges(qrEGoodsIdentity, qrEGoodsIdentity, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsIdentity, 'GOODSIDENTITY_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsIdentity.EnableControls;
  end;
end;

procedure TfrmEGoodsIdentity.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsIdentity.DisableControls;
  try
    if not CheckChanges(qrEGoodsIdentity, qrEGoodsIdentity, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsIdentity, 'GOODSIDENTITY_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsIdentity.EnableControls;
  end;
end;

procedure TfrmEGoodsIdentity.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsIdentity.DisableControls;
  try
    if not CheckChanges(qrEGoodsIdentity, qrEGoodsIdentity, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsIdentity, 'GOODSIDENTITY_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsIdentity.EnableControls;
  end;
end;

procedure TfrmEGoodsIdentity.DBEdit1Exit(Sender: TObject);
begin
//  if GetPositionDesc(qrEGoodsIdentity.FieldByName('G_ID').AsString, PRate) = '' then
  if FindUntDesc(qrEGoodsIdentity.FieldByName('UNT_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmEGoodsIdentity.qrEGoodsIdentityCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_UNITDESC').AsString := FindUntDesc(DataSet.FieldByName('UNT_CODE').AsString);
end;

procedure TfrmEGoodsIdentity.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpUnit(Code) then
  begin
    DBEdit1.SetFocus;
    with qrEGoodsIdentity do
    begin
      Edit;
      FieldByName('UNT_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
