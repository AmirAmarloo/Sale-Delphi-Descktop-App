{$I Direct.Inc}
unit EExceptGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids,
  DBGrids, DMUDataEntry, DB, {$I MbUses.Inc};
type
  TfrmEExceptGoods = class(TMbForm)
    panButton: TPanel;
    SpdBtnExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDelete: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
  private
    { Private declarations }
    FDM_DataEntry: TDM_DataEntry;
    DelFlag: Boolean;
    procedure qrEExceptGoodsBeforeScroll(DataSet: TDataSet);
    procedure qrEExceptGoodsBeforeDelete(DataSet: TDataSet);
    procedure qrEExceptGoodsAfterDelete(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  frmEExceptGoods: TfrmEExceptGoods;

implementation

{$R *.dfm}

uses Utility, UMessage, Vars, Help, Functions;


procedure TfrmEExceptGoods.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEExceptGoods.FormCreate(Sender: TObject);
begin
  FDM_DataEntry := TDM_DataEntry(MbDM.GetDM(FDM));
  with FDM_DataEntry.qrEExceptGoods do
  begin
    BeforeScroll := qrEExceptGoodsBeforeScroll;
    BeforeDelete := qrEExceptGoodsBeforeDelete;
    AfterDelete := qrEExceptGoodsAfterDelete;
  end;
end;

procedure TfrmEExceptGoods.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    with FDM_DataEntry.qrEExceptGoods do
    begin
      Edit;
      FieldByName('EX_GDSCODE').AsString := Code;
    end;
  end;
end;

procedure TfrmEExceptGoods.BtnPostClick(Sender: TObject);
begin
//  if CheckNullFields(FDM_DataEntry.qrEExceptGoods, Copy(SchemaName, 1, Length(SchemaName) - 1), 'EXCEPTGOODS_T') then Exit;
  FDM_DataEntry.qrEExceptGoods.ApplyUpdates;
end;

procedure TfrmEExceptGoods.FormShow(Sender: TObject);
begin
  with FDM_DataEntry.qrEExceptGoods do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM EXCEPTGOODS_T');
    Open;
  end;
  DelFlag := True;
end;

procedure TfrmEExceptGoods.qrEExceptGoodsBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(DBGrid1, ['EX_GDSCODE']) then
  begin
    MbError(RepeatedError);
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
end;


procedure TfrmEExceptGoods.qrEExceptGoodsBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmEExceptGoods.qrEExceptGoodsAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmEExceptGoods.BtnDeleteClick(Sender: TObject);
begin
  with FDM_DataEntry.qrEExceptGoods do
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

procedure TfrmEExceptGoods.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

end.
