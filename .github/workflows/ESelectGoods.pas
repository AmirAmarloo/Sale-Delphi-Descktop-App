{$I Direct.Inc}
unit ESelectGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids, Menus, {$I MbUses.Inc};

type
  TfrmESelectGoods = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edOfNum: TEdit;
    qrESelectGoods: TQuery;
    dsESelectGoods: TDataSource;
    qrESelectGoodsOFSEQ: TFloatField;
    qrESelectGoodsGDS_CODE: TStringField;
    qrESelectGoodsOFQTY: TFloatField;
    qrESelectGoodsPACK_TYPE: TFloatField;
    qrESelectGoodsCF_GDSDESC: TStringField;
    dbgrESelectGoods: TDBGrid;
    panButton: TPanel;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label2: TLabel;
    edOfYear: TEdit;
    procedure qrESelectGoodsPACK_TYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrESelectGoodsCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmESelectGoods: TfrmESelectGoods;

implementation

uses Functions, Utility;

{$R *.dfm}

procedure TfrmESelectGoods.qrESelectGoodsPACK_TYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 9 then
    Text := 'ÂœÌÂ  Œ›Ì›'
  else
    Text := '';
end;

procedure TfrmESelectGoods.qrESelectGoodsCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
end;

procedure TfrmESelectGoods.FormShow(Sender: TObject);
begin
  with qrESelectGoods do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFSEQ, GDS_CODE, OFQTY, PACK_TYPE FROM OFFERDTL_T');
    SQL.Add('WHERE OFNUM = :OFNUM');
    Sql.Add('  AND CU_CODE = :YEAR');
    SQL.Add('  AND PACK_TYPE <> 9');
    ParamByName('OFNUM').AsString := edOfNum.Text;
    ParamByName('YEAR').AsString := edOfYear.Text;
    Open;
  end;
end;

procedure TfrmESelectGoods.BtnPostClick(Sender: TObject);
var
 I: Integer;
begin
  GdsStrReturn := '(';
  if dbgrESelectGoods.SelectedRows.Count = 0 then Exit;
  with qrESelectGoods do
  begin
    for I := 0 to dbgrESelectGoods.SelectedRows.Count - 1 do
    begin
      GotoBookmark(Pointer(dbgrESelectGoods.SelectedRows.Items[I]));
      GdsStrReturn := GdsStrReturn + FieldByName('GDS_CODE').AsString + ', ';
    end;
    GdsStrReturn := Copy(GdsStrReturn, 1, Length(GdsStrReturn) - 2) + ')';
  end;
  Close;
end;

procedure TfrmESelectGoods.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmESelectGoods.N1Click(Sender: TObject);
begin
  SelectAllGrid(dbgrESelectGoods);
end;

end.
