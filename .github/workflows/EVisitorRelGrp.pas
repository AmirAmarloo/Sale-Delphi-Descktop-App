{$I Direct.Inc}
unit EVisitorRelGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, Grids,
  DBGrids, {$I MbUses.Inc};

type
  TfrmEVisitorRelGrp = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    bbPrint: TBitBtn;
    qrEVisitorRelGrp: TQuery;
    usEVisitorRelGrp: TUpdateSQL;
    dsEVisitorRelGrp: TDataSource;
    qrEVisitorRelGrpVR_CODE: TStringField;
    qrEVisitorRelGrpVR_GCODE: TFloatField;
    qrEVisitorRelGrpCF_GRPNAME: TStringField;
    dbgrVisitorRelGrp: TDBGrid;
    Panel1: TPanel;
    edVCode: TEdit;
    edVName: TEdit;
    Label1: TLabel;
    sbVisitor: TSpeedButton;
    procedure sbExitClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure edVCodeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEVisitorRelGrpCalcFields(DataSet: TDataSet);
    procedure qrEVisitorRelGrpNewRecord(DataSet: TDataSet);
    procedure sbVisitorClick(Sender: TObject);
    procedure dbgrVisitorRelGrpEditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEVisitorRelGrpVR_GCODEValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelectVisitGroup(VRCode: String);
  end;

var
  frmEVisitorRelGrp: TfrmEVisitorRelGrp;

implementation

uses Utility, Functions, UMessage, Vars, Help;

{$R *.dfm}

procedure TfrmEVisitorRelGrp.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEVisitorRelGrp.BtnPostClick(Sender: TObject);
begin
  qrEVisitorRelGrp.ApplyUpdates;
  if VisitorCode <> '' then Close
  else
  begin
    edVCode.Clear;
    edVName.Clear;
    SelectEmpty(qrEVisitorRelGrp, 'VISITOR_RELGRP_T');
    edVCode.SetFocus;
  end;
end;

procedure TfrmEVisitorRelGrp.BtnDelClick(Sender: TObject);
begin
  with qrEVisitorRelGrp do
  begin
    First;
    while not Eof do
    begin
      Delete;
      Next;
    end;
    ApplyUpdates;
  end;
end;

procedure TfrmEVisitorRelGrp.edVCodeExit(Sender: TObject);
begin
  edVName.Text := GetVisitorName(edVCode.Text);
  if edVName.Text = '' then
  begin
    MbError(InvalidCode);
    edVCode.SetFocus;
    Exit;
  end;
  SelectVisitGroup(edVCode.Text);
end;

procedure TfrmEVisitorRelGrp.SelectVisitGroup(VRCode: String);
begin
  with qrEVisitorRelGrp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VISITOR_RELGRP_T');
    SQL.Add('WHERE VR_CODE = :VRCODE');
    ParamByName('VRCODE').AsString := VRCode;
    Open;
  end;
end;

procedure TfrmEVisitorRelGrp.FormShow(Sender: TObject);
begin
  if VisitorCode <> '' then
  begin
    edVCode.Text := VisitorCode;
    edVCodeExit(Self);
    edVCode.Enabled := False;
    edVName.Enabled := False;
    sbVisitor.Enabled := False;
  end;
end;

procedure TfrmEVisitorRelGrp.qrEVisitorRelGrpCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GRPNAME').AsString := GetVisitorGroupName(DataSet.FieldByName('VR_GCODE').AsString);
end;

procedure TfrmEVisitorRelGrp.qrEVisitorRelGrpNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('VR_CODE').AsString := edVCode.Text;
end;

procedure TfrmEVisitorRelGrp.sbVisitorClick(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    edVCode.SetFocus;
    edVCode.Text:= Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEVisitorRelGrp.dbgrVisitorRelGrpEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if dbgrVisitorRelGrp.SelectedField = qrEVisitorRelGrp.FieldByName('VR_GCODE') then
    if HelpVisitorGrp(Code) then
    begin
      with qrEVisitorRelGrp do
      begin
        Edit;
        FieldByName('VR_GCODE').AsString:= Code;
      end;
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TfrmEVisitorRelGrp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEVisitorRelGrp.qrEVisitorRelGrpVR_GCODEValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 99999999 then
  begin
   MbError(RangeErr);
   Abort;
  end;
  if GetVisitorGroupName(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmEVisitorRelGrp.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

end.
