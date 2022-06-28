{$I Direct.Inc}
unit ETaxFreeGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmETaxFreeGoods = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    bbPrint: TBitBtn;
    usECostCenter: TUpdateSQL;
    dsECostCenter: TDataSource;
    qrECostCenter: TQuery;
    DBGrid1: TDBGrid;
    qrECostCenterFT_YEAR: TFloatField;
    qrECostCenterOFNUM: TStringField;
    qrECostCenterCF_GdsFDesc: TStringField;
    qrECostCenterGDS_CODE: TStringField;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrECostCenterCalcFields(DataSet: TDataSet);
    procedure qrECostCenterGD_CODEValidate(Sender: TField);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmETaxFreeGoods: TfrmETaxFreeGoods;

implementation

uses Help, Vars, UMessage, Functions, Utility;

{$R *.dfm}

procedure TfrmETaxFreeGoods.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmETaxFreeGoods.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmETaxFreeGoods.FormShow(Sender: TObject);
begin
  with qrECostCenter do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM FREETAXGOODS_T');
    Open;
  end;
end;

procedure TfrmETaxFreeGoods.BtnPostClick(Sender: TObject);
begin
  CheckNullFields(qrECostCenter, Copy(SchemaName, 1, Length(SchemaName) - 1), 'FREETAXGOODS_T');
  qrECostCenter.ApplyUpdates;
end;

procedure TfrmETaxFreeGoods.BtnDelClick(Sender: TObject);
begin
  with qrECostCenter do
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

procedure TfrmETaxFreeGoods.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TfrmETaxFreeGoods.qrECostCenterCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GdsFDesc').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
end;

procedure TfrmETaxFreeGoods.qrECostCenterGD_CODEValidate(Sender: TField);
begin
  if FindGdsFDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmETaxFreeGoods.DBGrid1EditButtonClick(Sender: TObject);
var
  Code, FTYear: string;
begin
  if HelpGds(Code) then
  begin
    with qrECostCenter do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
  FTYear := qrECostCenter.FieldByName('FT_YEAR').AsString;
  if HelpSalesProp(Code, FTYear) then
  begin
    with qrECostCenter do
    begin
      Edit;
      FieldByName('OFNUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;

end;

end.
