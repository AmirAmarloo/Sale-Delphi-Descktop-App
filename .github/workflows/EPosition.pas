{$I Direct.Inc}
unit EPosition;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DMUDataEntry, Mask,
  DBCtrls, {$I MbUses.Inc};

type
  TfrmEPosition = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    sbVisitor: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbVisitorClick(Sender: TObject);
  private
    { Private declarations }
    FDM_DataEntry: TDM_DataEntry;
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmEPosition: TfrmEPosition;

implementation

uses Utility, Functions, Vars, Help;

{$R *.dfm}

procedure TfrmEPosition.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEPosition.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEPosition.FormCreate(Sender: TObject);
begin
  FDM_DataEntry:= TDM_DataEntry(MbDM.GetDM(FDM));
end;

procedure TfrmEPosition.FormShow(Sender: TObject);
begin
  SelectEmpty(FDM_DataEntry.qrEPosition, 'POSITION_T');
end;

procedure TfrmEPosition.DBEdit1Exit(Sender: TObject);
var
  PCode: String;
begin
  with FDM_DataEntry.qrEPosition do
  begin
    PCode := FieldByName('P_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM POSITION_T');
    SQL.Add('WHERE P_CODE = :PCODE');
    ParamByName('PCODE').AsString := PCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('P_CODE').AsString := PCode;
    end;
  end;
end;

procedure TfrmEPosition.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(FDM_DataEntry.qrEPosition, Copy(SchemaName, 1, Length(SchemaName) - 1), 'POSITION_T') then Exit;
  FDM_DataEntry.qrEPosition.ApplyUpdates;
  SelectEmpty(FDM_DataEntry.qrEPosition, 'POSITION_T');
  DBEdit1.SetFocus;
end;

procedure TfrmEPosition.BtnDelClick(Sender: TObject);
begin
  FDM_DataEntry.qrEPosition.Delete;
  FDM_DataEntry.qrEPosition.ApplyUpdates;
  DBEdit1.SetFocus;
end;

procedure TfrmEPosition.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPosition.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPosition, qrEPosition, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPosition, 'POSITION_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_DataEntry.qrEPosition.EnableControls;
  end;
end;

procedure TfrmEPosition.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPosition.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPosition, qrEPosition, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPosition, 'POSITION_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_DataEntry.qrEPosition.EnableControls;
  end;
end;

procedure TfrmEPosition.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPosition.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPosition, qrEPosition, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPosition, 'POSITION_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_DataEntry.qrEPosition.EnableControls;
  end;
end;

procedure TfrmEPosition.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPosition.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPosition, qrEPosition, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPosition, 'POSITION_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_DataEntry.qrEPosition.EnableControls;
  end;
end;

procedure TfrmEPosition.sbVisitorClick(Sender: TObject);
var
  Code: string;
begin
  if HelpPosition(Code) then
  begin
    DBEdit1.SetFocus;
    with FDM_DataEntry.qrEPosition do
    begin
      Edit;
      FieldByName('P_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
