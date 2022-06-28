{$I Direct.Inc}
unit ESelectGoodsAmani;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids, Menus, {$I MbUses.Inc};

type
  TfrmESelectGoodsAmani = class(TForm)
    Panel1: TPanel;
    qrESelectGoods: TQuery;
    dsESelectGoods: TDataSource;
    qrESelectGoodsOFSEQ: TFloatField;
    qrESelectGoodsGDS_CODE: TStringField;
    qrESelectGoodsOFQTY: TFloatField;
    dbgrESelectGoods: TDBGrid;
    panButton: TPanel;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    qrESelectGoodsOFNUM: TStringField;
    qrESelectGoodsTAFSILY_YEAR: TFloatField;
    Label1: TLabel;
    edGdsCode: TEdit;
    edGdsFDesc: TEdit;
    qrESelectGoodsCUSTNO: TFloatField;
    Label2: TLabel;
    edCustNo: TEdit;
    edCustName: TEdit;
    qrESelectGoodsR_QTY: TFloatField;
    qrESelectGoodsREMAINQTY: TFloatField;
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
  frmESelectGoodsAmani: TfrmESelectGoodsAmani;

implementation

uses Functions, Utility;

{$R *.dfm}

procedure TfrmESelectGoodsAmani.qrESelectGoodsPACK_TYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 9 then
    Text := 'ÂœÌÂ  Œ›Ì›'
  else
    Text := '';
end;

procedure TfrmESelectGoodsAmani.qrESelectGoodsCalcFields(DataSet: TDataSet);
begin
//  DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
//  DataSet.FieldByName('CF_REALQTY').AsFloat := GetRealQtyReturn(DataSet.FieldByName('OFNUM').AsString, DataSet.FieldByName('TAFSILY_YEAR').AsString, edGdsCode.Text, DataSet.FieldByName('OFQTY').AsFloat);
end;

procedure TfrmESelectGoodsAmani.FormShow(Sender: TObject);
begin
  with qrESelectGoods do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFSEQ, GDS_CODE, OFQTY, FT.OFNUM,');
    SQL.Add('       TAFSILY_YEAR, CUSTNO, R_QTY,');
    SQL.Add('       NVL(OFQTY, 0) - NVL(R_QTY, 0) REMAINQTY');
    SQL.Add('FROM OFFERTIT_T FT, OFFERDTL_T FR,');
    SQL.Add('  (');
    SQL.Add('   SELECT SUM(NVL(R_QTY, 0))R_QTY,');
    SQL.Add('          R.R_OFYEAR R_OFYEAR,');
    SQL.Add('          R.R_OFNUM R_OFNUM');
    SQL.Add('   FROM RETURN_TIT_T T, RETURN_ROW_T R');
    SQL.Add('   WHERE T.R_YEAR = R.R_YEAR');
    SQL.Add('     AND T.R_CODE = R.R_CODE');
    SQL.Add('     AND T.BR_CODE = R.BR_CODE');
    SQL.Add('     AND R_GDSCODE = :GDSCODE');
    SQL.Add('     AND EXISTS (SELECT T1.OFNUM, TAFSILY_YEAR FROM OFFERTIT_T T1, OFFERDTL_T R1');
    SQL.Add('                 WHERE TAFSILY_YEAR = CU_CODE');
    SQL.Add('                   AND CUSTNO = :CUSTNO');
    SQL.Add('                   AND T1.OFNUM = R1.OFNUM');
    SQL.Add('                   AND USERID = GDS_INFO');
    SQL.Add('                   AND R.R_OFYEAR = CU_CODE');
    SQL.Add('                   AND R.R_OFNUM = T1.OFNUM');
    SQL.Add('                   AND R.BR_CODE = GDS_INFO');
    SQL.Add('                   AND R_GDSCODE = R1.GDS_CODE)');
    SQL.Add('');
    SQL.Add('   GROUP BY R.R_OFYEAR, R.R_OFNUM');
    SQL.Add('  )R');
    SQL.Add('WHERE GDS_CODE = :GDSCODE');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND CUSTNO = :CUSTNO');
    SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  AND NVL(OFQTY, 0) - NVL(R_QTY, 0) > 0');
    SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
    SQL.Add('  AND FT.OFNUM = FR.OFNUM');
    SQL.Add('  AND USERID = GDS_INFO');
    SQL.Add('  AND R_OFYEAR(+) = TAFSILY_YEAR');
    SQL.Add('  AND R_OFNUM(+) = FT.OFNUM');
    SQL.Add('ORDER BY TAFSILY_YEAR, TO_NUMBER(FT.OFNUM)');
{
    SQL.Add('SELECT OFSEQ, GDS_CODE, OFQTY, FT.OFNUM,');
    SQL.Add('       TAFSILY_YEAR, CUSTNO, R_QTY,');
    SQL.Add('       NVL(OFQTY, 0) - NVL(R_QTY, 0) REMAINQTY');
    SQL.Add('FROM OFFERTIT_T FT, OFFERDTL_T FR,');
    SQL.Add('  (');
    SQL.Add('   SELECT SUM(NVL(R_QTY, 0)) R_QTY, R_GDSCODE,');
    SQL.Add('          DECODE(R.R_OFNUM, NULL, T.R_OFYEAR, R.R_OFYEAR)R_OFYEAR,');
    SQL.Add('          DECODE(R.R_OFNUM, NULL, T.R_OFNUM, R.R_OFNUM)R_OFNUM,');
    SQL.Add('          T.BR_CODE');
    SQL.Add('   FROM RETURN_TIT_T T, RETURN_ROW_T R');
    SQL.Add('   WHERE T.R_YEAR = R.R_YEAR');
    SQL.Add('     AND T.R_CODE = R.R_CODE');
    SQL.Add('     AND T.BR_CODE = R.BR_CODE');
    SQL.Add('   GROUP BY R.R_OFYEAR, T.R_OFYEAR,');
    SQL.Add('            R.R_OFNUM, T.R_OFNUM, R_GDSCODE,');
    SQL.Add('            T.BR_CODE, R.BR_CODE');
    SQL.Add('   )R');
    SQL.Add('WHERE GDS_CODE = :GDSCODE');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND CUSTNO = :CUSTNO');
    SQL.Add('  AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  AND NVL(OFQTY, 0) - NVL(R_QTY, 0) > 0');
    SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
    SQL.Add('  AND FT.OFNUM = FR.OFNUM');
    SQL.Add('  AND USERID = GDS_INFO');
    SQL.Add('  AND R_OFYEAR(+) = CU_CODE');
    SQL.Add('  AND R_OFNUM(+) = FR.OFNUM');
    SQL.Add('  AND BR_CODE(+) = GDS_INFO');
    SQL.Add('  AND R_GDSCODE(+) = FR.GDS_CODE');
}
    ParamByName('GDSCODE').AsString := edGdsCode.Text;
    ParamByName('CUSTNO').AsString := edCustNo.Text;
    Open;
  end;
end;

procedure TfrmESelectGoodsAmani.BtnPostClick(Sender: TObject);
var
 I: Integer;
begin
  GdsStrReturn := '(';
  ROFYearStr := '(';
  if dbgrESelectGoods.SelectedRows.Count = 0 then Exit;
  with qrESelectGoods do
  begin
    for I := 0 to dbgrESelectGoods.SelectedRows.Count - 1 do
    begin
      GotoBookmark(Pointer(dbgrESelectGoods.SelectedRows.Items[I]));
      GdsStrReturn := GdsStrReturn + FieldByName('OFNUM').AsString + ', ';
      ROFYearStr := ROFYearStr + FieldByName('TAFSILY_YEAR').AsString + ', ';
    end;
    GdsStrReturn := Copy(GdsStrReturn, 1, Length(GdsStrReturn) - 2) + ')';
    ROFYearStr := Copy(ROFYearStr, 1, Length(ROFYearStr) - 2) + ')';
//    ROFYearStr := Copy(ROFYearStr, 1, Length(ROFYearStr) - 4) + ')';
  end;
  Close;
end;

procedure TfrmESelectGoodsAmani.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmESelectGoodsAmani.N1Click(Sender: TObject);
begin
  SelectAllGrid(dbgrESelectGoods);
end;

end.
