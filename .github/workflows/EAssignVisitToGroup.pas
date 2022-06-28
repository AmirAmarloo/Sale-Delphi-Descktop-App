{$I Direct.Inc}
unit EAssignVisitToGroup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEAssignVisitToGroup = class(TMbForm)
    Panel1: TPanel;
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    qrEVisitorToCust: TQuery;
    usEVisitorToCust: TUpdateSQL;
    dsEVisitorToCust: TDataSource;
    qrEVisitorToCustVC_VISITOR: TStringField;
    qrEVisitorToCustVC_CUSTTYPE: TFloatField;
    qrEVisitorToCustCF_VISITORNAME: TStringField;
    qrEVisitorToCustCF_CUSTTYPENAME: TStringField;
    Label1: TLabel;
    edVCode: TDBEdit;
    Label2: TLabel;
    dbedCustType: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qrEVisitorToCustVC_ISCOTROL: TFloatField;
    DBCheckBox1: TDBCheckBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edVCodeExit(Sender: TObject);
    procedure qrEVisitorToCustCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbedCustTypeExit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
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
  frmEAssignVisitToGroup: TfrmEAssignVisitToGroup;

implementation

uses Utility, Functions, UMessage, Vars, Help;

{$R *.dfm}


procedure TfrmEAssignVisitToGroup.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    edVCode.SetFocus;
    qrEVisitorToCust.Edit;
    qrEVisitorToCust.FieldByName('VC_VISITOR').AsString := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAssignVisitToGroup.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    dbedCustType.SetFocus;
    with qrEVisitorToCust do
    begin
      Edit;
      FieldByName('VC_CUSTTYPE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAssignVisitToGroup.edVCodeExit(Sender: TObject);
var
  VCode: String;
begin
  if qrEVisitorToCust.FieldByName('VC_VISITOR').AsString = '' then Exit;
  if GetVisitorName(qrEVisitorToCust.FieldByName('VC_VISITOR').AsString) = '' then
  begin
    MbError(InvalidCode);
    edVCode.SetFocus;
    Exit;
  end;
{  with qrEVisitorToCust do
  begin
    VCode := FieldByName('VC_VISITOR').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VISITORTOCUST_T');
    SQL.Add('WHERE VC_VISITOR = :VCODE');
    ParamByName('VCODE').AsString := VCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('VC_VISITOR').AsString := VCode;
    end;
  end;}
//  SelectData(qrEVisitorToCust, 'VISITORTOCUST_T', 'TRUE', '');
end;

procedure TfrmEAssignVisitToGroup.qrEVisitorToCustCalcFields(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_VISITORNAME').AsString := GetVisitorName(qrEVisitorToCust.FieldByName('VC_VISITOR').AsString);
  DataSet.FieldByName('CF_CUSTTYPENAME').AsString := FindCustTypeDesc(qrEVisitorToCust.FieldByName('VC_CUSTTYPE').AsString);
end;

procedure TfrmEAssignVisitToGroup.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEVisitorToCust, 'VISITORTOCUST_T');
end;

procedure TfrmEAssignVisitToGroup.dbedCustTypeExit(Sender: TObject);
begin
  if qrEVisitorToCust.FieldByName('VC_CUSTTYPE').AsString = '' then Exit;
  if FindCustTypeDesc(qrEVisitorToCust.FieldByName('VC_CUSTTYPE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedCustType.SetFocus;
    Exit;
  end;
end;

procedure TfrmEAssignVisitToGroup.BtnPostClick(Sender: TObject);
begin
  qrEVisitorToCust.ApplyUpdates;
  SelectEmpty(qrEVisitorToCust, 'VISITORTOCUST_T');
  edVCode.SetFocus;
end;

procedure TfrmEAssignVisitToGroup.BtnDelClick(Sender: TObject);
begin
  qrEVisitorToCust.Delete;
  qrEVisitorToCust.ApplyUpdates;
end;

procedure TfrmEAssignVisitToGroup.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEAssignVisitToGroup.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitorToCust.DisableControls;
  try
    if not CheckChanges(qrEVisitorToCust, qrEVisitorToCust, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitorToCust, 'VISITORTOCUST_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitorToCust.EnableControls;
  end;
end;

procedure TfrmEAssignVisitToGroup.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitorToCust.DisableControls;
  try
    if not CheckChanges(qrEVisitorToCust, qrEVisitorToCust, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitorToCust, 'VISITORTOCUST_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitorToCust.EnableControls;
  end;
end;

procedure TfrmEAssignVisitToGroup.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitorToCust.DisableControls;
  try
    if not CheckChanges(qrEVisitorToCust, qrEVisitorToCust, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitorToCust, 'VISITORTOCUST_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitorToCust.EnableControls;
  end;
end;

procedure TfrmEAssignVisitToGroup.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEVisitorToCust.DisableControls;
  try
    if not CheckChanges(qrEVisitorToCust, qrEVisitorToCust, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEVisitorToCust, 'VISITORTOCUST_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEVisitorToCust.EnableControls;
  end;
end;


//24080011
//24080012

end.
