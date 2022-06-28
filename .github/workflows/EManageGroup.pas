{$I Direct.Inc}
unit EManageGroup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DMUDataEntry, Mask,
  DBCtrls, Grids, DBGrids, DB, DBTables, {$I MbUses.Inc};

type
  TfrmEManageGroup = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qrTemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDM_DataEntry: TDM_DataEntry;
    IsLock: Boolean;
  public
    { Public declarations }
    _ManageCode, _ManageDesc: String;
  end;

var
  frmEManageGroup: TfrmEManageGroup;

implementation

uses Utility, Functions, Vars, Help, MainUnit, EGrpToManage;

{$R *.dfm}

procedure TfrmEManageGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEManageGroup.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEManageGroup.FormCreate(Sender: TObject);
begin
  FDM_DataEntry:= TDM_DataEntry(MbDM.GetDM(FDM));
end;

procedure TfrmEManageGroup.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(FDM_DataEntry.qrEManageGroup, Copy(SchemaName, 1, Length(SchemaName) - 1), 'MANAGEGROUP_T') then Exit;
  FDM_DataEntry.qrEManageGroup.ApplyUpdates;
end;

procedure TfrmEManageGroup.BtnDelClick(Sender: TObject);
begin
  FDM_DataEntry.qrEManageGroup.Delete;
  FDM_DataEntry.qrEManageGroup.ApplyUpdates;
end;

procedure TfrmEManageGroup.Button1Click(Sender: TObject);
begin
  if GetManageDesc(FDM_DataEntry.qrEManageGroup.FieldByName('M_CODE').AsString) = '' then
  begin
    MbError('«» œ« «ÿ·«⁄«  —« À»  ‰„«ÌÌœ');
    Exit;
  end;
  _ManageCode := FDM_DataEntry.qrEManageGroup.FieldByName('M_CODE').AsString;
  _ManageDesc := FDM_DataEntry.qrEManageGroup.FieldByName('M_DESC').AsString;
  MainForm.acEGrpToManage.Execute;
end;

procedure TfrmEManageGroup.FormShow(Sender: TObject);
begin
  with FDM_DataEntry.qrEManageGroup do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MANAGEGROUP_T');
    Open;
  end;
end;

end.
