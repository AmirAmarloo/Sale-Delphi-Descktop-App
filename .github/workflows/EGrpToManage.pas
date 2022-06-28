{$I Direct.Inc}
unit EGrpToManage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB,
  DBTables, {$I MbUses.Inc};

type
  TfrmEGrpToManage = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    DBGrid1: TDBGrid;
    qrEGrpToManage: TQuery;
    usEGrpToManage: TUpdateSQL;
    dsEGrpToManage: TDataSource;
    qrEGrpToManageM_CODE: TStringField;
    qrEGrpToManageCUSTTYPE_CODE: TFloatField;
    qrEGrpToManageCF_CUSTTYPEDESC: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrEGrpToManageNewRecord(DataSet: TDataSet);
    procedure sbExitClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrEGrpToManageCalcFields(DataSet: TDataSet);
    procedure qrEGrpToManageCUSTTYPE_CODEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEGrpToManage: TfrmEGrpToManage;

implementation

uses Utility, Functions, Vars, Help, UMessage, EManageGroup;

{$R *.dfm}

procedure TfrmEGrpToManage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEGrpToManage.FormShow(Sender: TObject);
begin
  Edit1.Text := (MBFM.GetFM(ParentFrm) as TfrmEManageGroup)._ManageCode;
  Edit2.Text := (MBFM.GetFM(ParentFrm) as TfrmEManageGroup)._ManageDesc;
  with qrEGrpToManage do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GRPTOMANAGE_T');
    SQL.Add('WHERE M_CODE = :MCODE');
    ParamByName('MCODE').AsString := Edit1.Text;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('M_CODE').AsString := Edit1.Text;
    end;
  end;
end;

procedure TfrmEGrpToManage.qrEGrpToManageNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('M_CODE').AsString := Edit1.Text;
end;

procedure TfrmEGrpToManage.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGrpToManage.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEGrpToManage, Copy(SchemaName, 1, Length(SchemaName) - 1), 'GRPTOMANAGE_T') then Exit;
  qrEGrpToManage.ApplyUpdates;
end;

procedure TfrmEGrpToManage.BtnDelClick(Sender: TObject);
begin
  qrEGrpToManage.Delete;
  qrEGrpToManage.ApplyUpdates;
end;

procedure TfrmEGrpToManage.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    with qrEGrpToManage do
    begin
      Edit;
      FieldByName('CUSTTYPE_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGrpToManage.qrEGrpToManageCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTTYPEDESC').AsString := FindCustTypeDesc(DataSet.FieldByName('CUSTTYPE_CODE').AsString);
end;

procedure TfrmEGrpToManage.qrEGrpToManageCUSTTYPE_CODEValidate(
  Sender: TField);
begin
  if FindCustTypeDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

end.
