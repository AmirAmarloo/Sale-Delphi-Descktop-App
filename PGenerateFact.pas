{$I Direct.Inc}
unit PGenerateFact;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, DMUIntSales, {$I MbUses.Inc};

type
  TfrmPGenerateFact = class(TMbForm)
    pnFilter: TPanel;
    panButton: TPanel;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    SpdBtnExit: TBitBtn;
    edOfNum: TEdit;
    rbOfnum: TRadioButton;
    rbOfDate: TRadioButton;
    edOfDate: TMaskEdit;
    Label1: TLabel;
    cbField: TComboBox;
    edValue: TEdit;
    Button1: TButton;
    pnOrder: TPanel;
    dbgrSummery: TDBGrid;
    dbgrTrans: TDBGrid;
    Splitter2: TSplitter;
    Label2: TLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Button2: TButton;
    dbgrPGenerateFact: TDBGrid;
    chbDir: TCheckBox;
    cbOtherSTK: TCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    sbCustNo: TSpeedButton;
    procedure SpdBtnExitClick(Sender: TObject);
    procedure pnFilterExit(Sender: TObject);
    procedure dbgrPGenerateFactDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rbOfnumClick(Sender: TObject);
    procedure rbOfDateClick(Sender: TObject);
    procedure dbgrPGenerateFactDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edValueChange(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrPGenerateFactTitleClick(Column: TColumn);
    procedure qrPGenerateFactORDER_CODEValidate(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure btnSaveOrderClick(Sender: TObject);
    procedure qrPGenerateFactBeforeInsert(DataSet: TDataSet);
    procedure qrPGenerateFactBeforeDelete(DataSet: TDataSet);
    procedure qrPGenerateFactAfterOpen(DataSet: TDataSet);
    procedure dbgrSummeryDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qrSummeryAfterOpen(DataSet: TDataSet);
    procedure dbgrTransCellClick(Column: TColumn);
    procedure dbgrSummeryCellClick(Column: TColumn);
    procedure qrTrnasT_CODEValidate(Sender: TField);
    procedure qrTrnasCalcFields(DataSet: TDataSet);
    procedure dbgrTransEditButtonClick(Sender: TObject);
    procedure edOfDateExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgrTransDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    FDM_IntSales: TDM_IntSales;
    ColorList: array [0..100] of TColor;
    LastSerialNo, SerialNo, SerialNo1, LastSerialNoReq, SerialNoReq, StkCodeAmani: String;
    LastDocMCodeReq, LastDocMCode, DocMCode206, DocMCode304,
    DocMCode100, DocMCode200, DocMCode301: Integer;
    procedure AssignOrderCodeFromDirect;
    procedure AddSQLSummery;
    procedure InventoryTranfser(OfDocField: String);
    procedure InsertDocM(FrmCode, OfferDoc: String);
    procedure InsertDocD(SerialNoDocD: String; DocType: Integer);
    procedure ApproveDocs(DocMSerial: String);
//    procedure ApproveDocs;
    procedure UpdateOfferForDocInventory(DocMCode, OfferDoc, AmaniStat: String);
    procedure UpdateFactStatus;
    procedure PostTCode;
    procedure InsertToDocTrans(AmaniStat: String);
    procedure SelectForInventory(OfferCondition: Boolean; AmaniStat: String);
    procedure SelectForInventoryOffer;
    procedure SelectForDisplay;
    function GetTCodeFromDefOrde(OrderCode: Integer):String;
    procedure qrSummeryCalcFields(DataSet: TDataSet);
    function SelectValidQty(GdsCode, StkCode, DocDate: String):Double;
    procedure DeleteDefOrder;
    procedure UpdateStat;
    procedure InsertGdsReq;
    procedure InsertGdsReqD;
  public
    { Public declarations }
    DOffGdsCode, DataTypeVal, DOffGdsName, GdsCodeF: String;
    SelectDataType: Boolean;
    OrderCode: Integer;
    EndQty: Double;
  end;

var
  frmPGenerateFact: TfrmPGenerateFact;

implementation

uses MainUnit, DGdsOffers, Functions, UMessage, Utility, EDefOrder, Vars,
  Help;

{$R *.dfm}

procedure TfrmPGenerateFact.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPGenerateFact.pnFilterExit(Sender: TObject);
begin
  DiffWithInventor := CheckQtyWithInventor(edOfDate.Text);
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ORDER_CODE, DEF_DATE FROM DEFORDERFACT_T');
    Open;
    if not IsEmpty then
      chbDir.Checked := (FieldByName('DEF_DATE').AsInteger = 1);
  end;
  if DiffWithInventor then
    SelectForInventory(True, '2')
  else
  begin
    AddSQLSummery;
    SelectForDisplay;
    AssignOrderCodeFromDirect;
  end;
  dbgrSummery.Visible := not DiffWithInventor;
  Splitter1.Visible := not DiffWithInventor;
  pnOrder.Visible := not DiffWithInventor;
end;

procedure TfrmPGenerateFact.dbgrPGenerateFactDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ClrCode: Integer;
begin
  if FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsInteger > FDM_IntSales.qrPGenerateFact.FieldByName('ON_QTY').AsInteger then
    dbgrPGenerateFact.Canvas.Brush.Color := $00BAD7FE;
   if not DiffWithInventor then
   begin
     if FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsInteger > 30 then
       ClrCode := 50
     else
       ClrCode := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsInteger;
    dbgrPGenerateFact.Canvas.Brush.Color := ColorList[ClrCode];
   end;
  dbgrPGenerateFact.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmPGenerateFact.rbOfnumClick(Sender: TObject);
begin
  edOfNum.Enabled := rbOfnum.Checked;
  edOfDate.Enabled := not rbOfnum.Checked;
end;

procedure TfrmPGenerateFact.rbOfDateClick(Sender: TObject);
begin
  edOfNum.Enabled := not rbOfDate.Checked;
  edOfDate.Enabled := rbOfDate.Checked;
end;

procedure TfrmPGenerateFact.dbgrPGenerateFactDblClick(Sender: TObject);
begin
  if TDBGrid(Sender).Name = 'dbgrSummery' then
  begin
    FDM_IntSales.qrPGenerateFact.Locate('ORDER_CODE', FDM_IntSales.qrSummery.FieldByName('ORDER_CODE').AsString, [loPartialKey]);
    SelectDataType := True;
  end
  else
    SelectDataType := False;
  DOffGdsCode := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
  GdsCodeF := FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString;
  DataTypeVal := edOfDate.Text;
  MainForm.acDGdsOffers.Execute;
  pnFilterExit(Sender);
  FDM_IntSales.qrPGenerateFact.Locate('GDS_CODE', DOffGdsCode, [loPartialKey]);
end;

procedure TfrmPGenerateFact.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPGenerateFact.FormShow(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to FDM_IntSales.qrPGenerateFact.FieldCount - 1 do
    cbField.Items.Add(FDM_IntSales.qrPGenerateFact.Fields[I].DisplayLabel);
  ColorList[0] := clWindow;
  ColorList[1] := clMoneyGreen;
  ColorList[2] := clSkyBlue;
  ColorList[3] := clCream;
  ColorList[4] := clMedGray;
  ColorList[5] := clActiveBorder;
  ColorList[6] := clAppWorkSpace;
  ColorList[7] := clBackground;
  ColorList[8] := clTeal;
  ColorList[9] := clPurple;
  ColorList[10] := clOlive;
  ColorList[11] := clFuchsia;
  ColorList[12] := clLime;
  ColorList[13] := clSilver;
  ColorList[14] := $008080FF;
  ColorList[15] := $0080FFFF;
  ColorList[16] := $00BAD7FE;
  ColorList[17] := clRed;
  ColorList[18] := $00D8FF95;
  ColorList[19] := $002BE3A7;
  ColorList[20] := $00F1ACF7;
  ColorList[21] := $00CFE3FE;
  ColorList[22] := $00A7F5D5;
  ColorList[23] := $00AE94FE;
  ColorList[24] := $00B1DBE0;
  ColorList[25] := $00FEE1DE;
  ColorList[26] := $00767DAD;
  ColorList[27] := $002BC6C1;
  ColorList[28] := $0095AA98;
  ColorList[29] := $00BF8086;
  ColorList[30] := $00ECF3D1;
  for I := 31 to 50 do
    ColorList[30] := ColorList[30] + (I * 200);
  ColorList[50] := clWindow;
  AddSQLSummery;
  edOfDate.Text := GetFactStat;
  AcctiveFatGenFrm := False;
{ $IFDEF ABIDI}
//  cbOtherSTK.Visible := True;
{ $ENDIF}
end;

procedure TfrmPGenerateFact.edValueChange(Sender: TObject);
begin
  FDM_IntSales.qrPGenerateFact.Locate(FDM_IntSales.qrPGenerateFact.Fields[cbField.ItemIndex].FieldName, edValue.Text, [loPartialKey])
end;

procedure TfrmPGenerateFact.BtnPostClick(Sender: TObject);
begin
  if StrToIntDef(Copy(edOfDate.Text, 1, 4), 0) <> System_yy then
  begin
    MbError('«„ò«‰ ’œÊ— ›«ò Ê— »—«Ì «Ì‰ ”«· ÊÃÊœ ‰œ«—œ');
    Exit;
  end;
  if DiffWithInventor then
  begin
    MbError(MismatchWithInventoryQTY);
    Exit;
  end;
{ $IFDEF ABIDI}
  FDM_IntSales.qrPGenerateFact.First;
  while not FDM_IntSales.qrPGenerateFact.Eof do
  begin
//    if cbOtherSTK.Checked then
      SelectValidQty(FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString,
                     FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString, edOfDate.Text);
//                     Edit1.Text, edOfDate.Text);
//    else
//      SelectValidQty(FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString,
//                     Edit1.Text, edOfDate.Text);
    if (EndQty  < FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsFloat ) then
    begin
      MbError('»Â œ·Ì· „ÊÃÊœÌ „‰›Ì «„ò«‰ À»  ÕÊ«·Â ÊÃÊœ ‰œ«—œ.');
      Exit;
    end;
    FDM_IntSales.qrPGenerateFact.Next;
  end;
{ $EndIf}

  with FDM_IntSales.qrTemp2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE DEFORDERFACT_T');
    SQL.Add('SET T_CODE = :TCODE');
    SQL.Add('WHERE ORDER_CODE = :ORDCODE');
    FDM_IntSales.qrTrnas.First;
    while not FDM_IntSales.qrTrnas.Eof do
    begin
      ParamByName('TCODE').AsString := FDM_IntSales.qrTrnas.FieldByName('T_CODE').AsString;
      ParamByName('ORDCODE').AsString := FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsString;
      ExecSQL;
      FDM_IntSales.qrTrnas.Next;
    end;
  end;
{$IFDEF AMANI}
  SelectForInventory(False, '1');
{$ENDIF}
{$IFNDEF AMANI}
  SelectForInventory(False, '0');
{$ENDIF}
  InventoryTranfser('SECTAFSILY_CODE');
//  SelectForInventory(True, '1');
//  InventoryTranfser('SECTAFSILY_CODE');
{$IFDEF ABIDI}
  SelectForInventoryOffer;
  InventoryTranfser('OFDLVDTE');
{$ENDIF}
  DeleteDefOrder;
  UpdateStat;
  Close;
end;

procedure TfrmPGenerateFact.FormCreate(Sender: TObject);
begin
  FDM_IntSales:= TDM_IntSales(MbDM.GetDM(FDM));
{$IFDEF MABNAPRG}
  FormStyle:= fsNormal;
{$ELSE}
  FormStyle:= fsStayOnTop;
{$ENDIF}
  with FDM_IntSales.qrPGenerateFact do
  begin
    BeforeInsert := qrPGenerateFactBeforeInsert;
    BeforeDelete := qrPGenerateFactBeforeDelete;
    AfterOpen := qrPGenerateFactAfterOpen;
  end;
  with FDM_IntSales.qrSummery do
  begin
    AfterOpen := qrSummeryAfterOpen;
    OnCalcFields := qrSummeryCalcFields;
  end;
  with FDM_IntSales.qrTrnas do
  begin
    FieldByName('T_CODE').OnValidate := qrTrnasT_CODEValidate;
    OnCalcFields := qrTrnasCalcFields;
  end;

end;

procedure TfrmPGenerateFact.dbgrPGenerateFactTitleClick(Column: TColumn);
{var
  I: Integer;}
begin
{  if not DiffWithInventor then Exit;
  if Column. FieldName = 'CF_ORDER' then Exit;
  for I := 0 to dbgrPGenerateFact.Columns.Count - 1 do
    if dbgrPGenerateFact.Columns[I].FieldName = 'ORDER_CODE' then
      dbgrPGenerateFact.Columns[I].Color := clMenuBar
    else
      dbgrPGenerateFact.Columns[I].Color := clWindow;
  Column.Color := clYellow;
  if Column.FieldName = 'GDS_CODE' then
    qrPGenerateFact.SQL.Strings[qrPGenerateFact.SQL.Count - 1] := 'ORDER BY G.GDS_CODE'
  else
    if Column.FieldName = 'DR_CODE' then
      qrPGenerateFact.SQL.Strings[qrPGenerateFact.SQL.Count - 1] := 'ORDER BY SUMOFDTA.DR_CODE'
    else
      qrPGenerateFact.SQL.Strings[qrPGenerateFact.SQL.Count - 1] := 'ORDER BY ' + Column.FieldName;
  qrPGenerateFact.Close;
  qrPGenerateFact.Open;}
end;

procedure TfrmPGenerateFact.qrPGenerateFactORDER_CODEValidate(
  Sender: TField);
begin
  if Sender.AsInteger > 99999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmPGenerateFact.Button1Click(Sender: TObject);
begin
  DOffGdsCode := FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString;
  DOffGdsName := FDM_IntSales.qrPGenerateFact.FieldByName('GDS_DESCF').AsString;
  MainForm.acEDefOrder.Execute;
  FDM_IntSales.qrPGenerateFact.Edit;
  FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsInteger := OrderCode;
end;

procedure TfrmPGenerateFact.btnSaveOrderClick(Sender: TObject);
begin
  with FDM_IntSales.qrEDefOrder do
  begin
    SQL.Add('SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    SQL.Add('  (SELECT G.GDS_CODE, T.OFNUM, T.OFDATE, OFQTY, OFPRICE, UNT_DESC, GDS_DESCF,');
    SQL.Add('     PACK_TYPE, OFSEQ, CUST_DIR, CUSTTYPE_CODE');
    SQL.Add('   FROM GOODS1 G, IDCUSTOMER_T IC, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('   WHERE TAFSILY_YEAR = :YEAR                                           ');
    SQL.Add('     AND TAFSILY_YEAR = CU_CODE                                           ');
    SQL.Add('     AND D.OFNUM = T.OFNUM');
    SQL.Add('     AND G.GDS_CODE = D.GDS_CODE');
    SQL.Add('     AND IC.CUSTNO = T.CUSTNO');
    SQL.Add('     AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('     AND SECTAFSILY_CODE IS NULL');
{    if rbOfnum.Checked then
      SQL.Add('   AND D.OFNUM <= :OFNUM')
    else}
      SQL.Add('   AND T.OFDATE = :OFDATE');
    SQL.Add('  )OFFDTA');
    SQL.Add('WHERE OFFDTA.OFNUM = O.OFNUM(+)');
    SQL.Add('  AND OFFDTA.CUST_DIR = O.DR_CODE(+)');
    SQL.Add('ORDER BY GDS_CODE, OFDATE, OFFDTA.OFNUM');
{    if rbOfnum.Checked then
      ParamByName('OFNUM').AsString := edOfNum.Text
    else}
      ParamByName('OFDATE').AsString := edOfDate.Text;
      ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM DEFORDERFACT_T');
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO DEFORDERFACT_T');
    SQL.Add('(OFNUM, DR_CODE, ORDER_CODE)');
    SQL.Add('VALUES');
    SQL.Add('(:OFNUM, :DR_CODE, :ORDER_CODE)');
    FDM_IntSales.qrPGenerateFact.DisableControls;
    try
      FDM_IntSales.qrEDefOrder.First;
      while not FDM_IntSales.qrPGenerateFact.Eof do
      begin
        if FDM_IntSales.qrEDefOrder.FieldByName('ORDER_CODE').AsString <> '' then
        begin
          ParamByName('OFNUM').AsString := FDM_IntSales.qrEDefOrder.FieldByName('OFNUM').AsString;
          ParamByName('DR_CODE').AsString := FDM_IntSales.qrEDefOrder.FieldByName('DR_CODE').AsString;
          ParamByName('ORDER_CODE').AsString := FDM_IntSales.qrEDefOrder.FieldByName('ORDER_CODE').AsString;
          ExecSQL;
        end;
        FDM_IntSales.qrPGenerateFact.Next;
      end;
    finally
      FDM_IntSales.qrPGenerateFact.EnableControls;
    end;
  end;
  pnFilterExit(Sender);
end;

procedure TfrmPGenerateFact.AssignOrderCodeFromDirect;
begin
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ORDER_CODE, DEF_DATE FROM DEFORDERFACT_T');
    Open;
    if not IsEmpty then
      chbDir.Checked := (FieldByName('DEF_DATE').AsInteger = 1);
    if not IsEmpty then Exit;
  end;
  with FDM_IntSales.qrEDefOrder do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO DEFORDERFACT_T');
    SQL.Add('(DR_CODE, ORDER_CODE, OFNUM, DEF_DATE)');
    if chbDir.Checked then
    begin
      SQL.Add('SELECT A.CUST_DIR, ORDCODE, OFNUM, 1 FROM');
      SQL.Add('(SELECT CUST_DIR, CUSTTYPE_CODE, T.OFNUM');
    end
    else
    begin
      SQL.Add('SELECT A.CUSTTYPE_CODE, ORDCODE, OFNUM, 0 FROM');
      SQL.Add('(SELECT CUSTTYPE_CODE, T.OFNUM');
    end;
    SQL.Add(' FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add(' WHERE D.OFNUM = T.OFNUM');
    SQL.Add('   AND I.CUSTNO = T.CUSTNO');
    SQL.Add('   AND SECTAFSILY_CODE IS NULL');
    SQL.Add('   AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('   AND T.OFDATE = :OFDATE');
    SQL.Add('   AND CU_CODE = :YEAR');
    if chbDir.Checked then
    begin
      SQL.Add(' GROUP BY CUSTTYPE_CODE, CUST_DIR, T.OFNUM)A,');
      SQL.Add('(SELECT CUST_DIR, CUSTTYPE_CODE, ROWNUM ORDCODE FROM');
      SQL.Add('(SELECT CUST_DIR, CUSTTYPE_CODE');
    end
    else
    begin
      SQL.Add(' GROUP BY CUSTTYPE_CODE, T.OFNUM)A,');
      SQL.Add('(SELECT CUSTTYPE_CODE, ROWNUM ORDCODE FROM');
      SQL.Add('(SELECT CUSTTYPE_CODE');
    end;
    SQL.Add(' FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add(' WHERE D.OFNUM = T.OFNUM');
    SQL.Add('   AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('   AND I.CUSTNO = T.CUSTNO');
    SQL.Add('   AND SECTAFSILY_CODE IS NULL');
    SQL.Add('   AND T.OFDATE = :OFDATE');
    SQL.Add('   AND CU_CODE = :YEAR');
    if chbDir.Checked then
    begin
      SQL.Add(' GROUP BY CUSTTYPE_CODE, CUST_DIR))B');
      SQL.Add('WHERE A.CUST_DIR = B.CUST_DIR(+)');
      SQL.Add('  AND A.CUSTTYPE_CODE = B.CUSTTYPE_CODE(+)');
    end
    else
    begin
      SQL.Add(' GROUP BY CUSTTYPE_CODE))B');
      SQL.Add('WHERE A.CUSTTYPE_CODE = B.CUSTTYPE_CODE(+)');
    end;
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    try
      SQL.SaveToFile('D:\fact.txt');
    except
      SQL.SaveToFile('C:\fact.txt');
    end;
    ExecSql;
    chbDir.Enabled := False;
  end;
  FDM_IntSales.qrPGenerateFact.Close;
  FDM_IntSales.qrPGenerateFact.Open;
{    SQL.Add('SELECT CUST_DIR, ROWNUM');
    SQL.Add('FROM ');
    SQL.Add('(SELECT CUST_DIR');
    SQL.Add(' FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add(' WHERE D.OFNUM = T.OFNUM');
    SQL.Add('   AND I.CUSTNO = T.CUSTNO');
    SQL.Add('   AND SECTAFSILY_CODE IS NULL');
    if rbOfnum.Checked then
      SQL.Add('   AND D.OFNUM <= :OFNUM')
    else
      SQL.Add('   AND T.OFDATE <= :OFDATE');
    SQL.Add(' GROUP BY CUST_DIR)');
    if rbOfnum.Checked then
      ParamByName('OFNUM').AsString := edOfNum.Text
    else
      ParamByName('OFDATE').AsString := edOfDate.Text;
    Open;
    qrPGenerateFact.DisableControls;
    try
      qrPGenerateFact.First;
      while not qrPGenerateFact.Eof do
      begin
        Locate('CUST_DIR', qrPGenerateFact.FieldByName('DR_CODE').AsString, [loPartialKey]);
        qrPGenerateFact.Edit;
        qrPGenerateFact.FieldByName('ORDER_CODE').AsString := FieldByName('ROWNUM').AsString;
        qrPGenerateFact.Next;
      end;
    finally
      qrPGenerateFact.EnableControls;
    end;
  end;}
end;

procedure TfrmPGenerateFact.qrPGenerateFactBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmPGenerateFact.qrPGenerateFactBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmPGenerateFact.AddSQLSummery;
begin
  with FDM_IntSales.qrSummery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ORDER_CODE, SUM(OFQTY) OFQTY, SUM(NVL(GDS_WEIGHT, 0))GDS_WEIGHT,');
    SQL.Add('  SUM(BOXQTY)BOXQTY, SUM(TOTBOX_VOLUME)/1000000 TOTBOX_VOLUME');
    SQL.Add('FROM');
    SQL.Add('(');
    SQL.Add('SELECT SUMOFDTA.*, NVL(GDS_WEIGHT, 0) * NVL(OFQTY, 0) / 1000000 GDS_WEIGHT,');
    SQL.Add('  SIGN((NVL(OFQTY, 0)/NVL(GDS_EXC, 0)) - FLOOR((NVL(OFQTY, 0)/NVL(GDS_EXC, 0)))) + FLOOR((NVL(OFQTY, 0)/NVL(GDS_EXC, 0)))BOXQTY,');
    SQL.Add('  BOX_CODE, BOX_DESC, (BOX_LENGHT * BOX_WIDTH * BOX_HEIGHT)BOX_VOLUME, BOX_WEIGHT,');
    SQL.Add('  ( SIGN((NVL(OFQTY, 0)/NVL(GDS_EXC, 0)) - FLOOR((NVL(OFQTY, 0)/NVL(GDS_EXC, 0)))) + FLOOR((NVL(OFQTY, 0)/NVL(GDS_EXC, 0))) ) *');
    SQL.Add('  (BOX_LENGHT * BOX_WIDTH * BOX_HEIGHT)TOTBOX_VOLUME');
    SQL.Add('FROM BOX_T, DIRECT_T DR, GOODS1 G,');
    SQL.Add('  (SELECT GDS_CODE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0)) * SUM(NVL(OFQTY, 0))OFPRICE,');
    SQL.Add('     CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
    SQL.Add('   FROM');
    SQL.Add('     (SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    SQL.Add('       (SELECT T.OFNUM, GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE');
    SQL.Add('         FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('         WHERE D.OFNUM = T.OFNUM');
    SQL.Add('           AND I.CUSTNO = T.CUSTNO');
    SQL.Add('           AND SECTAFSILY_CODE IS NULL');
    SQL.Add('           AND T.OFDATE = :OFDATE');
    SQL.Add('           AND CU_CODE = :YEAR');
    SQL.Add('           AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('         )OFFDTA');
    SQL.Add('      WHERE OFFDTA.OFNUM = O.OFNUM(+)');
    if chbDir.Checked then
      SQL.Add('       AND OFFDTA.DR_CODE = O.DR_CODE(+)')
    else
      SQL.Add('       AND OFFDTA.CUSTTYPE_CODE = O.DR_CODE(+)');
    SQL.Add('     )OFORDER');
    SQL.Add('   GROUP BY GDS_CODE, CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
    SQL.Add('  )SUMOFDTA');
    SQL.Add('WHERE G.GDS_CODE = SUMOFDTA.GDS_CODE');
{ $IFNDEF ABIDI}
//    SQL.Add('  AND STK_CODE = 1');
{ $ENDIF}
    SQL.Add('  AND DR.DR_CUSTTYPE = SUMOFDTA.CUSTTYPE_CODE');
    SQL.Add('  AND DR.DR_CODE = SUMOFDTA.DR_CODE');
    SQL.Add('  AND BOX_CODE(+) = GDS_BOX');
    SQL.Add('  )');
    SQL.Add('GROUP BY ORDER_CODE');
    try
      SQL.SaveToFile('D:\SummeryS.TXT');
    except
      SQL.SaveToFile('C:\SummeryS.TXT');
    end;
    ParamByName('YEAR').AsInteger := System_YY;
  end;
end;

procedure TfrmPGenerateFact.qrPGenerateFactAfterOpen(DataSet: TDataSet);
begin
  with FDM_IntSales.qrSummery do
  begin
    ParamByName('OFDATE').AsString := edOfDate.Text;
    Close;
    try
      Open;
    except
      on E: Exception do
      begin
        if Pos('ORA-01476', E.Message) > 0 then
        begin
          MbError('«ÿ·«⁄«  «Ê·ÌÂ ò«·« ò«„· ‰Ì” ');
          Exit;
        end;
      end;
    end
  end;
end;

procedure TfrmPGenerateFact.dbgrSummeryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ClrCode: Integer;
begin
   if not DiffWithInventor then
   begin
     if FDM_IntSales.qrSummery.FieldByName('ORDER_CODE').AsInteger > 30 then
       ClrCode := 50
     else
       ClrCode := FDM_IntSales.qrSummery.FieldByName('ORDER_CODE').AsInteger;
      dbgrSummery.Canvas.Brush.Color := ColorList[ClrCode];
   end;
  dbgrSummery.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmPGenerateFact.qrSummeryAfterOpen(DataSet: TDataSet);
{var
  OrdeCount: Integer;}
begin
{  TransArray := '()';}
  with FDM_IntSales.qrTrnas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ORDER_CODE, T_CODE FROM DEFORDERFACT_T');
    SQL.Add('GROUP BY ORDER_CODE, T_CODE');
    Open;{
    {qrSummery.First;
    while not qrSummery.Eof do
    begin
      TrCode := GetTransport(qrSummery.FieldByName('GDS_WEIGHT').AsFloat, qrSummery.FieldByName('TOTBOX_VOLUME').AsFloat, TransArray);
      if TrCode <> '' then
      begin
        Edit;
        FieldByName('T_CODE').AsString := TrCode;
        if TransArray = '()' then
          TransArray :=  '(' + Copy(TransArray, 2, Length(TransArray) - 1) + TrCode + ')'
        else
          TransArray :=  '(' + Copy(TransArray, 2, Length(TransArray) - 1) + ', ' + TrCode + ')'
      end;
      qrSummery.Next;
    end;}
  end;
end;

procedure TfrmPGenerateFact.dbgrTransCellClick(Column: TColumn);
begin
  FDM_IntSales.qrSummery.Locate('ORDER_CODE', FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsString, [loPartialKey]);
end;

procedure TfrmPGenerateFact.dbgrSummeryCellClick(Column: TColumn);
begin
  FDM_IntSales.qrTrnas.Locate('ORDER_CODE', FDM_IntSales.qrSummery.FieldByName('ORDER_CODE').AsString, [loPartialKey]);
end;

procedure TfrmPGenerateFact.qrTrnasT_CODEValidate(Sender: TField);
var
  DrvName: String;
  CarCapV, CarCapW: Double;
begin
  if GetTransportName(Sender.AsString, '0', DrvName, CarCapW, CarCapV) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
  FDM_IntSales.qrSummery.Locate('ORDER_CODE', FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsString, [loPartialKey]);
  if (FDM_IntSales.qrSummery.FieldByName('GDS_WEIGHT').AsFloat > CarCapW) or
     (FDM_IntSales.qrSummery.FieldByName('TOTBOX_VOLUME').AsFloat > CarCapV) then
  begin
    MbWarning('«Ì‰ „«‘Ì‰ Ÿ—›Ì  ò«›Ì —« ‰œ«—œ');
//    Abort;
  end;
end;

procedure TfrmPGenerateFact.qrTrnasCalcFields(DataSet: TDataSet);
var
  DrvName: String;
  CarCapV, CarCapW: Double;
begin
  DataSet.FieldByName('CF_TRANSNAME').AsString := GetTransportName(DataSet.FieldByName('T_CODE').AsString, '0', DrvName, CarCapW, CarCapV);
  DataSet.FieldByName('CF_WCAP').AsString := FloatToStr(CarCapW);
  DataSet.FieldByName('CF_VCAP').AsString := FloatToStr(CarCapV);
end;

procedure TfrmPGenerateFact.dbgrTransEditButtonClick(Sender: TObject);
var
  Code: String;
begin
  if HelpTransport(Code) then
  begin
    FDM_IntSales.qrTrnas.Edit;
    FDM_IntSales.qrTrnas.FieldByName('T_CODE').AsString := Code;
  end;
end;

procedure TfrmPGenerateFact.InventoryTranfser(OfDocField: String);
var
  OrdCode, CustCode: String;
begin
  if FDM_IntSales.qrPGenerateFact.IsEmpty then Exit;
    FDM_IntSales.qrPGenerateFact.First;
  try
    FDM_IntSales.qrPGenerateFact.DisableControls;
    OrdCode := '';
    CustCode := '';
    if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '0' then
    begin
      DocMCode304 := SelectInventoryMaxSh(304, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
      DocMCode206 := SelectInventoryMaxSh(206, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString))
    end;
    if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '1' then
    begin
      StkCodeAmani := GetRelaitedStk(FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString);
      DocMCode301 := SelectInventoryMaxShAmani;
      if FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString = '6' then
        DocMCode200 := SelectInventoryMaxSh(200, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
//        DocMCode200 := SelectInventoryMaxShAmani1(200, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));  //99/11/21
//        SelectInventoryMaxSh(200, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));

//      DocMCode100 := SelectInventoryMaxSh(100, StrToIntDef(StkCodeAmani, 1)); //99/09/19
//      DocMCode200 := SelectInventoryMaxSh(206, 1);
//      DocMCode100 := SelectInventoryMaxShAmani1(199);    //99/10/17
//      DocMCode200 := SelectInventoryMaxShAmani1(207);
//      DocMCode199 := SelectInventoryMaxSh(199, '6');
    end;
    while not FDM_IntSales.qrPGenerateFact.Eof do
    begin
      if not MbDB.InTransaction[FDB] then
        MbDB.StartTransaction(FDB);
      try
      if (OrdCode <> FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString) or
         (CustCode <> FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString) then
      begin
        if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '0' then
        begin
          SerialNo := GetInventorySerial;
          LastSerialNo := SerialNo;
          LastDocMCode := DocMCode206;
          InsertDocM('304', OfDocField);
          SerialNo := GetInventorySerial;
          InsertDocM('206', OfDocField);
          OrdCode := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
          CustCode := FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString;
          DocMCode304 := SelectInventoryMaxSh(304, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
          DocMCode206 := SelectInventoryMaxSh(206, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString))
        end;
        if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '1' then
        begin
          SerialNoReq := GetInventorySerialAmani;
          LastSerialNoReq := SerialNoReq;
          LastDocMCodeReq := DocMCode200;
          InsertGdsReq;
          SerialNo := GetInventorySerial;
          InsertDocM('200', OfDocField);
(*991017  InsertDocM('199', OfDocField);
          SerialNo1 := GetInventorySerial;
          InsertDocM('207', OfDocField);
*)
          OrdCode := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
          CustCode := FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString;
          DocMCode301 := DocMCode301 + 1;
          DocMCode200 := DocMCode200 + 1;
        end;
      end;
      if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '1' then
      begin
        InsertGdsReqD;
(*991017        InsertDocD(SerialNo, 199);
        InsertDocD(SerialNo1, 207);
        *)
        InsertDocD(SerialNo, 200);
      end
      else
      begin
        InsertDocD(LastSerialNo, 304);
        InsertDocD(SerialNo, 206);
      end;

    { $IFNDEF PAKHSH}
      ApproveDocs(SerialNo);
      if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '1' then
        if SerialNo1 <> '' then
          ApproveDocs(SerialNo1);
      ApproveDocs(LastSerialNo);
    { $ENDIF}
      MbDb.Commit(FDB);
      FDM_IntSales.qrPGenerateFact.Next;
      except on E: Exception do
        begin
          MbDB.RollBack(FDB);
          MbError(E.Message);
          MbError(ExpHandleM(E));
        end;
      end;
    end;
  finally
    FDM_IntSales.qrPGenerateFact.EnableControls;
  end;
  InsertToDocTrans(FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString);
//  if FDM_IntSales.qrPGenerateFact.FieldByName('CUST_REQDATE').AsString = '0' then
//  begin
    UpdateFactStatus;
//  end;
end;

procedure TfrmPGenerateFact.InsertDocM(FrmCode, OfferDoc: String);
begin
  with FDM_IntSales.qrDocM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO INVENTORY.DOC_M_T');
    SQL.Add('(DOC_M_SERIAL, STK_CODE, FRM_CODE, DOC_M_SALEORNO, GIV_CODE,');
    SQL.Add(' CUT_CODE, SAL_CODE, DOC_M_YEAR, CENTER_CODE, MOIN_CODE, TAFSILY_CODE,');
    SQL.Add(' ACT_CODE, STK_STK_CODE, DOC_M_STKSER, DOC_M_CODE, DOC_M_DATE, DOC_M_DESC,');
    SQL.Add(' DOC_M_STAT, DOC_M_LNFRM_CODE, DOC_M_LNFRM_NO, DOC_M_SANAD, DOC_M_ORDNO,');
    SQL.Add(' DOC_M_CONTRACT, DOC_M_INVCODE, DOC_M_REQQTY, DOC_M_PURCODE, DOC_M_GIVORD,');
    SQL.Add(' DOC_M_REQER, DOC_M_PORDNO, DOC_M_CONFIRM1, DOC_M_DATE1, DOC_M_CONFIRM2,');
    SQL.Add(' DOC_M_DATE2, DOC_M_CONFIRM3, DOC_M_DATE3, DOC_M_LNSERIAL)');
    SQL.Add('VALUES');
    SQL.Add('(:DOC_M_SERIAL, :STK_CODE, :FRM_CODE, :DOC_M_SALEORNO, :GIV_CODE,');
    SQL.Add(' :CUT_CODE, :SAL_CODE, :DOC_M_YEAR, :CENTER_CODE, :MOIN_CODE, :TAFSILY_CODE,');
    SQL.Add(' :ACT_CODE, :STK_STK_CODE, :DOC_M_STKSER, :DOC_M_CODE, :DOC_M_DATE, :DOC_M_DESC,');
    SQL.Add(' :DOC_M_STAT, :DOC_M_LNFRM_CODE, :DOC_M_LNFRM_NO, :DOC_M_SANAD, :DOC_M_ORDNO,');
    SQL.Add(' :DOC_M_CONTRACT, :DOC_M_INVCODE, :DOC_M_REQQTY, :DOC_M_PURCODE, :DOC_M_GIVORD,');
    SQL.Add(' :DOC_M_REQER, :DOC_M_PORDNO, :DOC_M_CONFIRM1, :DOC_M_DATE1, :DOC_M_CONFIRM2,');
    SQL.Add(' :DOC_M_DATE2, :DOC_M_CONFIRM3, :DOC_M_DATE3, :DOC_M_LNSERIAL)');

    ParamByName('DOC_M_SERIAL').AsString := SerialNo;

    if FrmCode = '207' then
      ParamByName('DOC_M_SERIAL').AsString := SerialNo1;

{$IFNDEF AMANI}
    ParamByName('STK_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString;
{$ENDIF}
{$IFDEF AMANI}
    ParamByName('STK_CODE').AsString := '1';
    if FrmCode = '199' then
      ParamByName('STK_CODE').AsString := StkCodeAmani;
    if FrmCode = '207' then
      ParamByName('STK_CODE').AsString := '1';
{$ENDIF}
    ParamByName('FRM_CODE').AsString := FrmCode;
    ParamByName('DOC_M_SALEORNO').AsString := '';
    ParamByName('GIV_CODE').AsString := '';
    ParamByName('CUT_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString;
{$IFNDEF ABIDI}
    ParamByName('CUT_CODE').AsString := '';
{$ENDIF}


    ParamByName('SAL_CODE').AsString := '';
    ParamByName('DOC_M_YEAR').AsInteger := System_YY;
    ParamByName('CENTER_CODE').AsString := '';
    ParamByName('MOIN_CODE').AsString := '';
    ParamByName('TAFSILY_CODE').AsString := '';

    if OfferDoc = 'SECTAFSILY_CODE' then
{$IFDEF AMANI}
      ParamByName('ACT_CODE').AsString := '24';
      if FrmCode = '207' then
        ParamByName('ACT_CODE').AsString := '35';
      if FrmCode = '199' then
        ParamByName('ACT_CODE').AsString := '35';
{$ENDIF}
{$IFNDEF AMANI}
      ParamByName('ACT_CODE').AsString := '27';
{$ENDIF}


    if OfferDoc = 'OFDLVDTE' then
      ParamByName('ACT_CODE').AsString := '53';

{$IFDEF AMANI}
    ParamByName('STK_STK_CODE').AsString := '';
    ParamByName('DOC_M_STKSER').AsString := '1';
{    if FrmCode = '199' then
    begin
        ParamByName('STK_STK_CODE').AsString := '1';
        ParamByName('DOC_M_STKSER').AsString := '0';
    end
    else if FrmCode = '207' then
    begin
      ParamByName('STK_STK_CODE').AsString := StkCodeAmani;
      ParamByName('DOC_M_STKSER').AsString := '0';
    end;}
{$ENDIF}

{$IFNDEF AMANI}
    if FrmCode = '206' then
        ParamByName('STK_STK_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString
    else if FrmCode = '304' then
      ParamByName('STK_STK_CODE').AsString := '';
{
    else if FrmCode = '200' then
        ParamByName('STK_STK_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString;} //99/09/19

   ParamByName('DOC_M_STKSER').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString;
{$ENDIF}


    DocMCode304 := SelectInventoryMaxSh(304, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
    DocMCode206 := SelectInventoryMaxSh(206, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
    DocMCode200 := SelectInventoryMaxSh(200, StrToInt(FDM_IntSales.qrPGenerateFact.FieldByName('STK_CODE').AsString));
//    DocMCode200 := SelectInventoryMaxShAmani1(200);  //99/11/21
//    DocMCode200 := SelectInventoryMaxShAmani1(207);

    if StkCodeAmani <> '' then
      DocMCode100 := SelectInventoryMaxShAmani1(199);
//    DocMCode100 := SelectInventoryMaxSh(100, StrToInt(StkCodeAmani));


    if FrmCode = '206' then
      ParamByName('DOC_M_CODE').AsInteger := DocMCode206
    else if FrmCode = '304' then
      ParamByName('DOC_M_CODE').AsInteger := DocMCode304
    else if FrmCode = '207' then
      ParamByName('DOC_M_CODE').AsInteger := DocMCode200
    else if FrmCode = '200' then
      ParamByName('DOC_M_CODE').AsInteger := DocMCode200
    else if FrmCode = '199' then
      ParamByName('DOC_M_CODE').AsInteger := DocMCode100;

    ParamByName('DOC_M_DATE').AsString := edOfDate.Text ;
    ParamByName('DOC_M_DESC').AsString := '';
    ParamByName('DOC_M_STAT').AsString := '0';
    if FrmCode = '200' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '301';
      ParamByName('DOC_M_LNFRM_NO').AsInteger := DocMCode301;//LastDocMCode;
      ParamByName('DOC_M_LNSERIAL').AsString := SerialNoReq;//LastSerialNo;
    end
    else
    if FrmCode = '206' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '304';
      ParamByName('DOC_M_LNFRM_NO').AsInteger := DocMCode304;//LastDocMCode;
      ParamByName('DOC_M_LNSERIAL').AsString := LastSerialNo;
    end
    else if FrmCode = '304' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '';
      ParamByName('DOC_M_LNFRM_NO').AsString := '';
      ParamByName('DOC_M_LNSERIAL').AsString := '';
    end
    else if FrmCode = '199' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '';
      ParamByName('DOC_M_LNFRM_NO').AsString := '';
      ParamByName('DOC_M_LNSERIAL').AsString := '';
    end;
    if FrmCode = '207' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '';
      ParamByName('DOC_M_LNFRM_NO').AsInteger := DocMCode301;
      ParamByName('DOC_M_LNSERIAL').AsString := '';
    end; //99/09/19
{    else if FrmCode = '206' then
    begin
      ParamByName('DOC_M_LNFRM_CODE').AsString := '301';
      ParamByName('DOC_M_LNFRM_NO').AsInteger := DocMCode301;//LastDocMCode;
      ParamByName('DOC_M_LNSERIAL').AsString := LastSerialNoReq;
    end;} //99/09/19
    ParamByName('DOC_M_SANAD').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
    ParamByName('DOC_M_ORDNO').AsString := '';
    ParamByName('DOC_M_CONTRACT').AsString := '';
    ParamByName('DOC_M_INVCODE').AsString := '';
    ParamByName('DOC_M_REQQTY').AsString := '';
    ParamByName('DOC_M_PURCODE').AsString := '';
    ParamByName('DOC_M_GIVORD').AsString := '';
    ParamByName('DOC_M_REQER').AsString := '';
    ParamByName('DOC_M_PORDNO').AsString := '';
    ParamByName('DOC_M_CONFIRM1').AsString := '';
    ParamByName('DOC_M_DATE1').AsString := '';
    ParamByName('DOC_M_CONFIRM2').AsString := '';
    ParamByName('DOC_M_DATE2').AsString := '';
    ParamByName('DOC_M_CONFIRM3').AsString := '';
    ParamByName('DOC_M_DATE3').AsString := '';
    ExecSQL;
    if FrmCode = '206' then
    begin
      UpdateOfferForDocInventory(SerialNo, OfferDoc, '0');
      PostTCode;
    end;
    if FrmCode = '199' then
      UpdateOfferForDocInventory(SerialNo, OfferDoc, '1');
    if FrmCode = '207' then
      UpdateOfferForDocInventory(SerialNo1, OfferDoc, '1');
    if FrmCode = '200' then
      UpdateOfferForDocInventory(SerialNo, OfferDoc, '1');
//      UpdateOfferForDocInventory(SerialNoReq, OfferDoc, '1');
  end;
{$IFDEF PAKHSH}     //1400/07/26
    with FDM_IntSales.qrDocM do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM INVENTORY.SALEDOC_T');
      SQL.Add('WHERE DOC_M_SERIAL = :SERIAL');
      ParamByName('SERIAL').AsString := SerialNo;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO INVENTORY.SALEDOC_T');
      SQL.Add('(DOC_M_SERIAL)');
      SQL.Add('VALUES');
      SQL.Add('(:DOC_M_SERIAL)');
      ParamByName('DOC_M_SERIAL').AsString := SerialNo;
      ExecSQL;
    end;
       //1400/07/26
{$ENDIF}
end;

procedure TfrmPGenerateFact.edOfDateExit(Sender: TObject);
begin
  if StrToIntDef(Copy(edOfDate.Text, 1, 4), 0) <> System_yy then
  begin
    MbError('«„ò«‰ ’œÊ— ›«ò Ê— »—«Ì «Ì‰ ”«· ÊÃÊœ ‰œ«—œ');
    Exit;
  end;
{ $IFNDEF ABIDI}
{  if GetFactStat(edOfDate.Text) = '1' then
  begin
    MbError('»—«Ì «Ì‰  «—ÌŒ Å—œ«“‘ ’œÊ— ›«ò Ê— «‰Ã«„ ‘œÂ');
    edOfDate.SetFocus;
  end
  else
    if GetFactStat(edOfDate.Text) <> '0' then
    begin
      MbError(InvalidDate);
      edOfDate.SetFocus;
    end;

{ $ENDIF}

end;

procedure TfrmPGenerateFact.UpdateOfferForDocInventory(DocMCode, OfferDoc, AmaniStat: String);
begin
  with FDM_IntSales.qrUpdateOffer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OFFERTIT_T T');
    SQL.Add('SET ' + OfferDoc + ' = :DOCMCODE');
    SQL.Add('WHERE TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND NVL(OFDLVPLACE, 0) <> 1');
{$IFNDEF AHMADTEA}
    SQL.Add('  AND CUSTNO = :CUSTNO');
//--------------------------------93/09/17--------------------------------------
    if AmaniStat <> '2' then
      SQL.Add('           AND TO_CHAR(TRIM(NVL(T.CUST_REQDATE, 0))) = ' + QuotedStr(AmaniStat));
//--------------------------------93/09/17--------------------------------------
    ParamByName('CUSTNO').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString;
{$ENDIF}

    SQL.Add('  AND OFNUM IN (SELECT OFNUM FROM DEFORDERFACT_T O');
    SQL.Add('                WHERE ORDER_CODE = :ORDCODE');
    SQL.Add('                  AND O.OFNUM = T.OFNUM)');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('DOCMCODE').AsString := DocMCode;
    ParamByName('ORDCODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.UpdateFactStatus;
begin
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE FACTSTAT_T');
    SQL.Add('SET F_DATE = :FDATE, F_STATUS = 0');
    ParamByName('FDATE').AsString := Date_Plus(edOfDate.Text);
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.PostTCode;
var
  TCodeOrder: String;
begin
  with FDM_IntSales.qrUpdateOffer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OFFERTIT_T T');
    SQL.Add('SET OFCOMM = :TCODE, PRJCODE = :DRCODE');
    SQL.Add('WHERE TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('  AND OFNUM IN (SELECT OFNUM FROM DEFORDERFACT_T O');
    SQL.Add('                WHERE ORDER_CODE = :ORDCODE');
    SQL.Add('                  AND O.OFNUM = T.OFNUM)');
    FDM_IntSales.qrTrnas.First;
    while not FDM_IntSales.qrTrnas.Eof do
    begin
      TCodeOrder := GetTCodeFromDefOrde(FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsInteger);
      ParamByName('TCODE').AsString := TCodeOrder;
      ParamByName('ORDCODE').AsString := FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsString;
      ParamByName('DRCODE').AsString := GetTransportDriverCode(TCodeOrder);
      ParamByName('YEAR').AsInteger := System_YY;
      ExecSQL;
      FDM_IntSales.qrTrnas.Next;
    end;
  end;
end;

procedure TfrmPGenerateFact.InsertToDocTrans(AmaniStat: String);
begin
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO INVENTORY.DOC_TRANSPORT_T M');
    SQL.Add('(DOC_M_SERIAL, T_CODE)');
    SQL.Add('SELECT DISTINCT SECTAFSILY_CODE, OFCOMM FROM OFFERTIT_T');
    SQL.Add('WHERE OFDATE = :OFDATE');
    SQL.Add('  AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('  AND TAFSILY_YEAR = :YEAR');
//--------------------------------93/09/17--------------------------------------
//    if AmaniStat <> '2' then
//      SQL.Add('           AND TO_CHAR(NVL(CUST_REQDATE, 0)) = ' + QuotedStr(AmaniStat));
//--------------------------------93/09/17--------------------------------------
    SQL.Add('  AND NOT EXISTS(SELECT DOC_M_SERIAL, T_CODE FROM INVENTORY.DOC_TRANSPORT_T D');
    SQL.Add('                 WHERE SECTAFSILY_CODE = DOC_M_SERIAL');
    SQL.Add('                   AND OFCOMM = T_CODE)');
    SQL.Add('GROUP BY SECTAFSILY_CODE, OFCOMM');
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.SelectForInventory(OfferCondition: Boolean; AmaniStat: String);
begin
  with FDM_IntSales.qrPGenerateFact do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT STK_NAME, STK_CODE, GDS_CODE, SUM(OFQTY)OFQTY, SUM(OFPRICE)OFPRICE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, 0 CUSTTYPE_CODE, 0 DR_CODE, TO_CHAR(TRIM(NVL(CUST_REQDATE, 0)))CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
{$IFNDEF ABIDI}
    SQL.Add('       ,0 CUSTNO');
{$ENDIF}
    SQL.Add('FROM (');
    SQL.Add('SELECT STK_NAME, STK_CODE, GDS_CODE, SUM(OFQTY)OFQTY, SUM(OFPRICE)OFPRICE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE, CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
{$IFNDEF ABIDI}
    SQL.Add('       ,0 CUSTNO');
{$ENDIF}
    SQL.Add('FROM(');
    SQL.Add('SELECT SUMOFDTA.*, UNT_DESC, GDS_DESCF, STK_NAME, NVL(ON_QTY, 0)ON_QTY');
    SQL.Add('FROM DIRECT_T DR, GOODS1 G,');
    SQL.Add('  (SELECT STK_CODE, GDS_CODE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0)) * SUM(NVL(OFQTY, 0))OFPRICE,');
    SQL.Add('     CUSTTYPE_CODE, DR_CODE, ORDER_CODE, TRIM(CUST_REQDATE)CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('         ,CUSTNO');
{$ENDIF}
{$IFNDEF ABIDI}
    SQL.Add('         ,0 CUSTNO');
{$ENDIF}
    SQL.Add('   FROM');
    SQL.Add('     (SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    SQL.Add('       (SELECT STK_CODE, T.OFNUM, GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE, T.CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('               ,T.CUSTNO');
{$ENDIF}
{$IFNDEF ABIDI}
    SQL.Add('         ,0 CUSTNO');
{$ENDIF}
    SQL.Add('         FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('         WHERE D.OFNUM = T.OFNUM');
    SQL.Add('           AND I.CUSTNO = T.CUSTNO');
    SQL.Add('           AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('           AND SECTAFSILY_CODE IS NULL');
    SQL.Add('           AND T.OFDATE = :OFDATE');
//--------------------------------93/09/17--------------------------------------
    if AmaniStat <> '2' then
      SQL.Add('           AND TO_CHAR(TRIM(NVL(T.CUST_REQDATE, 0))) = ' + QuotedStr(AmaniStat));
//--------------------------------93/09/17--------------------------------------
{$IFDEF ABIDI}
    if not OfferCondition then
      SQL.Add('           AND NVL(D.PACK_TYPE, 0) <> 9');
{$ENDIF}
    SQL.Add('           AND T.TAFSILY_YEAR = :YEAR');
    SQL.Add('           AND CU_CODE = :YEAR');
    SQL.Add('         )OFFDTA');
    SQL.Add('      WHERE OFFDTA.OFNUM = O.OFNUM(+)');
    if chbDir.Checked then
      SQL.Add('       AND OFFDTA.DR_CODE = O.DR_CODE(+)')
    else
      SQL.Add('       AND OFFDTA.CUSTTYPE_CODE = O.DR_CODE(+)');
    SQL.Add('     )OFORDER');
    SQL.Add('   GROUP BY STK_CODE, GDS_CODE, CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
    SQL.Add('           ,CUST_REQDATE');

{$IFDEF ABIDI}
    SQL.Add('           ,CUSTNO');
{$ENDIF}

    SQL.Add('  )SUMOFDTA');
    SQL.Add('WHERE G.GDS_CODE = SUMOFDTA.GDS_CODE');
    SQL.Add('  AND G.STK_CODE = SUMOFDTA.STK_CODE');
    SQL.Add('  AND DR.DR_CUSTTYPE = SUMOFDTA.CUSTTYPE_CODE');
    SQL.Add('  AND DR.DR_CODE = SUMOFDTA.DR_CODE');
    SQL.Add('ORDER BY ORDER_CODE, SUMOFDTA.DR_CODE');
    SQL.Add(')');
    SQL.Add('GROUP BY STK_NAME, STK_CODE, GDS_CODE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE');
    SQL.Add('        ,CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('           ,CUSTNO');
{$ENDIF}
    SQL.Add('ORDER BY ORDER_CODE, GDS_CODE');
    SQL.Add(')');
    SQL.Add('GROUP BY STK_NAME, STK_CODE, ORDER_CODE, GDS_CODE, UNT_DESC, GDS_DESCF, ON_QTY');
    SQL.Add('        ,CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('           ,CUSTNO');
{$ENDIF}
    SQL.Add('ORDER BY ORDER_CODE, CUSTNO, GDS_CODE');
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    try
      SQL.SaveToFile('D:\PGInvSel.txt');
    except
      SQL.SaveToFile('C:\PGInvSel.txt');
    end;
    Open;
  end;
end;

function TfrmPGenerateFact.GetTCodeFromDefOrde(OrderCode: Integer): String;
begin
  with FDM_IntSales.qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT T_CODE FROM DEFORDERFACT_T');
    SQL.Add('WHERE ORDER_CODE = :ORDCODE');
    ParamByName('ORDCODE').AsInteger := OrderCode;
    Open;
    Result := FieldByName('T_CODE').AsString;
  end;
end;

procedure TfrmPGenerateFact.FormActivate(Sender: TObject);
begin
  if AcctiveFatGenFrm then
  begin
    pnFilterExit(Sender);
    AcctiveFatGenFrm := False;
  end;
end;

procedure TfrmPGenerateFact.Button2Click(Sender: TObject);
begin
  if not (MbMessage(' „«„Ì  — Ì» Â«Ì Ê«—œ ‘œÂ Õ–› ‘Êœø', mtConfirmation, [mbYes, mbNo], mbNo) = mrYes) then Exit;
  DeleteDefOrder;
end;

procedure TfrmPGenerateFact.InsertDocD(SerialNoDocD: String; DocType: Integer);
var
  MoinCode, TafCode: String;
begin
  with FDM_IntSales.qrDocD do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO INVENTORY.DOC_D_T');
    SQL.Add('(DOC_M_SERIAL, GDS_CODE, DOC_M_YEAR, VYEAR, VNUM, DOC_D_RATE,');
    SQL.Add(' DOC_D_STG, DOC_D_ORD, DOC_D_PERT, DOC_D_REQQTY, DOC_D_RECQTY, DOC_D_QTYSEND,');
    SQL.Add(' DOC_D_DATESND, DOC_D_RECIPT, DOC_D_ORDERNO, TAFSILY_CODE, MOIN_CODE,');
{$IFDEF AHMADTEA}
    SQL.Add(' END_DATE, GDS_LOC,');
    SQL.Add(' BAR_NO, BAR_DATE, BAR_NAME, CAR_NO, DOC_D_REQQTY1, DOC_D_REQQTY2,');
{$ENDIF}
    SQL.Add(' TAF_TAFSILY_CODE, DOC_D_PORDNO, CENTER_CODE)');
    SQL.Add('VALUES');
    SQL.Add('(:DOC_M_SERIAL, :GDS_CODE, :DOC_M_YEAR, :VYEAR, :VNUM, :DOC_D_RATE,');
    SQL.Add(' :DOC_D_STG, :DOC_D_ORD, :DOC_D_PERT, :DOC_D_REQQTY, :DOC_D_RECQTY, :DOC_D_QTYSEND,');
    SQL.Add(' :DOC_D_DATESND, :DOC_D_RECIPT, :DOC_D_ORDERNO, :TAFSILY_CODE, :MOIN_CODE,');
{$IFDEF AHMADTEA}
    SQL.Add(' :END_DATE, :GDS_LOC,');
    SQL.Add(' :BAR_NO, :BAR_DATE, :BAR_NAME, :CAR_NO, :DOC_D_REQQTY1, :DOC_D_REQQTY2,');
{$ENDIF}
    SQL.Add(' :TAF_TAFSILY_CODE, :DOC_D_PORDNO, :CENTER_CODE)');
    ParamByName('DOC_M_SERIAL').AsString := SerialNoDocD;
    ParamByName('GDS_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString;
    ParamByName('DOC_M_YEAR').AsInteger := System_YY;
    ParamByName('VYEAR').AsString := '';
    ParamByName('VNUM').AsString := '';
    ParamByName('DOC_D_RATE').AsString := '';
    ParamByName('DOC_D_STG').AsString := '';
    ParamByName('DOC_D_ORD').AsString := '';
    ParamByName('DOC_D_PERT').AsString := '';
    ParamByName('DOC_D_REQQTY').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsString;
{$IFDEF AHMADTEA}
    ParamByName('END_DATE').AsString := '';
    ParamByName('GDS_LOC').AsString := '';
    ParamByName('BAR_NO').AsString := '';
    ParamByName('BAR_DATE').AsString := '';
    ParamByName('BAR_NAME').AsString := '';
    ParamByName('CAR_NO').AsString := '';
    ParamByName('DOC_D_REQQTY2').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsString;
    ParamByName('DOC_D_REQQTY').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsString;
//    ParamByName('DOC_D_REQQTY').AsString := IntToStr(StrToIntDef(FindGDS_EXC(FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString),0)*FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsInteger);
    ParamByName('DOC_D_REQQTY1').AsString := '';
{$ENDIF}

    ParamByName('DOC_D_RECQTY').AsString := '';
    ParamByName('DOC_D_QTYSEND').AsString := '';
    ParamByName('DOC_D_DATESND').AsString := '';
    ParamByName('DOC_D_RECIPT').AsString := '';
    ParamByName('DOC_D_ORDERNO').AsString := '';
    if DocType = 206 then
    begin
      GetMoin_Sale(FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString, 1, MoinCode, TafCode);
      ParamByName('MOIN_CODE').AsString := MoinCode;
      ParamByName('TAFSILY_CODE').AsString := TafCode;
    end
    else
    begin
      ParamByName('MOIN_CODE').AsString := '';
      ParamByName('TAFSILY_CODE').AsString := '';
    end;
    ParamByName('TAF_TAFSILY_CODE').AsString := ''; //FDM_IntSales.qrPGenerateFact.FieldByName('ORDER_CODE').AsString;
    ParamByName('DOC_D_PORDNO').AsString := '';
    ParamByName('CENTER_CODE').AsString := '';
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.qrSummeryCalcFields(DataSet: TDataSet);
var
  VCode, DCode, DrCode, GrpCode: String;
begin
  GrpCode := FindCustTypeCode(GetCustCodeFromOfNum(GetOfNumFromDefOrder(DataSet.FieldByName('ORDER_CODE').AsString), IntToStr(System_YY), VCode, DrCode), DrCode);
  DataSet.FieldByName('CF_GRPNAME').AsString := FindCustTypeDesc(GrpCode);
  DataSet.FieldByName('CF_DIRNAME').AsString := GetDirectName(GrpCode, DrCode);
  DataSet.FieldByName('CF_OFCOUNT').AsString := GetCountOfNumFromDefOrder(DataSet.FieldByName('ORDER_CODE').AsString);
end;

procedure TfrmPGenerateFact.dbgrTransDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ClrCode: Integer;
begin
  if not DiffWithInventor then
  begin
    if FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsInteger > 30 then
      ClrCode := 50
    else
      ClrCode := FDM_IntSales.qrTrnas.FieldByName('ORDER_CODE').AsInteger;
    dbgrTrans.Canvas.Brush.Color := ColorList[ClrCode];
  end;
  dbgrTrans.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmPGenerateFact.SelectForDisplay;
begin
  with FDM_IntSales.qrPGenerateFact do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT STK_NAME, STK_CODE, GDS_CODE, SUM(OFQTY)OFQTY, SUM(OFPRICE)OFPRICE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE, ''0'' CUST_REQDATE, 0 CUSTNO');
    SQL.Add('FROM(');
    SQL.Add('SELECT SUMOFDTA.*, UNT_DESC, GDS_DESCF, STK_NAME, NVL(ON_QTY, 0)ON_QTY');
    SQL.Add('FROM DIRECT_T DR, GOODS1 G,');
    SQL.Add('  (SELECT STK_CODE, GDS_CODE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0) * NVL(OFQTY, 0))OFPRICE,');
    SQL.Add('     CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
    SQL.Add('   FROM');
    SQL.Add('     (SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    SQL.Add('       (SELECT STK_CODE, T.OFNUM, GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE');
    SQL.Add('         FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('         WHERE D.OFNUM = T.OFNUM');
    SQL.Add('           AND I.CUSTNO = T.CUSTNO');
    SQL.Add('           AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('           AND SECTAFSILY_CODE IS NULL');
    SQL.Add('           AND T.OFDATE = :OFDATE');
    SQL.Add('           AND CU_CODE = :YEAR');
    SQL.Add('         )OFFDTA');
    SQL.Add('      WHERE OFFDTA.OFNUM = O.OFNUM(+)');
    if chbDir.Checked then
      SQL.Add('       AND OFFDTA.DR_CODE = O.DR_CODE(+)')
    else
      SQL.Add('       AND OFFDTA.CUSTTYPE_CODE = O.DR_CODE(+)');
    SQL.Add('     )OFORDER');
    SQL.Add('   GROUP BY STK_CODE, GDS_CODE, CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
    SQL.Add('  )SUMOFDTA');
    SQL.Add('WHERE G.GDS_CODE = SUMOFDTA.GDS_CODE');
    SQL.Add('  AND G.STK_CODE = SUMOFDTA.STK_CODE');
{ $IFNDEF ABIDI}
//    SQL.Add('  AND STK_CODE = 1');
{ $ENDIF}
    SQL.Add('  AND DR.DR_CUSTTYPE = SUMOFDTA.CUSTTYPE_CODE');
    SQL.Add('  AND DR.DR_CODE = SUMOFDTA.DR_CODE');
    SQL.Add('ORDER BY ORDER_CODE, SUMOFDTA.DR_CODE');
    SQL.Add(')');
    SQL.Add('GROUP BY STK_NAME, STK_CODE, GDS_CODE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE');
    SQL.Add('ORDER BY ORDER_CODE, GDS_CODE');
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
end;

function TfrmPGenerateFact.SelectValidQty(GdsCode, StkCode,
  DocDate: String): Double;
begin
  with FDM_IntSales.qrTmp, sql Do
  begin
    Close;
    Clear;
    Add('SELECT GDS_T.GDS_CODE,                                        ');
    Add('       NVL(FQTY,0) FQTY,NVL(RQTY,0) RQTY, NVL(EQTY,0) EQTY,   ');
    Add('       (NVL(FQTY,0) + NVL(RQTY,0) - NVL(EQTY,0)) EndQTY       ');
    Add('FROM INVENTORY.GDS_T,                                         ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,NVL(GDS_QTYF,0) FQTY                          ');
    Add('  FROM INVENTORY.GDS_QTY_T                                    ');
    Add(' WHERE GDS_CODE     = :CODE                                   ');
    Add('   AND GDS_QTY_YEAR  = :YEAR                                  ');
    Add('   AND GDS_QTY_MONTH = 0                                      ');
    Add('   AND STK_CODE      = :STK                                   ');
    Add(')A,                                                           ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,SUM(NVL(DOC_D_REQQTY,0)) RQTY                 ');
    Add('  FROM INVENTORY.DOC_M_T M , INVENTORY.DOC_D_T D              ');
    Add(' WHERE M.DOC_M_SERIAL = D.DOC_M_SERIAL                        ');
    Add('   AND GDS_CODE     = :CODE                                   ');
    Add('   AND M.DOC_M_YEAR = :YEAR                                   ');
    Add('   AND DOC_M_DATE <= :HDATE                                   ');
    Add('   AND STK_CODE      = :STK                                   ');
    Add('   AND FRM_CODE BETWEEN 100 AND 199                           ');
    Add('   AND DOC_M_STAT > 1                           ');
    Add(' GROUP BY GDS_CODE                                            ');
    Add(')B,                                                           ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,SUM(NVL(DOC_D_REQQTY,0)) EQTY                 ');
    Add('  FROM INVENTORY.DOC_M_T M , INVENTORY.DOC_D_T D              ');
    Add(' WHERE M.DOC_M_SERIAL = D.DOC_M_SERIAL                        ');
    Add('   AND GDS_CODE     = :CODE                                   ');
    Add('   AND M.DOC_M_YEAR = :YEAR                                   ');
    Add('   AND DOC_M_DATE <= :HDATE                                   ');
    Add('   AND STK_CODE      = :STK                                   ');
    {$IFNDEF PAKHSH}
      Add('   AND DOC_M_STAT > 1                           ');
    {$ENDIF}
    Add('   AND FRM_CODE BETWEEN 200 AND 299                           ');
    Add(' GROUP BY GDS_CODE                                            ');
    Add(')C                                                            ');
    Add('WHERE GDS_T.GDS_CODE = A.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = B.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = C.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = :CODE                                  ');
    ParamByName('CODE').AsString := GdsCode;
    ParamByName('STK').AsString := StkCode;
    ParamByName('HDATE').AsString := DocDate;
    ParamByName('YEAR').AsInteger := System_YY;
    Sql := MBSqlConvert(Sql);
    Open;
    EndQty := FDM_IntSales.qrTmp.FieldByName('EndQTY').AsFloat;
  end;
end;

procedure TfrmPGenerateFact.ApproveDocs(DocMSerial: String);
//procedure TfrmPGenerateFact.ApproveDocs;
begin
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    with FDM_IntSales.qrDocM do
    begin
      Close;
      SQL.Clear;
{      SQL.Add('update INVENTORY.doc_m_t                                      ');
      SQL.Add('set doc_m_stat=1,                                   ');
      SQL.Add('        DOC_M_CONFIRM2 =:PUSER,                     ');
      SQL.Add('        DOC_M_Date2    =:PDATE                      ');
      SQL.Add('where doc_m_stat=0                                  ');
      SQL.Add(' and  DOC_M_DATE  <= :HiDate     ');
      SQL.Add(' and  DOC_M_YEAR  = :YEAR     ');
      SQL.Add('and frm_code between 200 and 299                    ');
}

      SQL.Add('UPDATE INVENTORY.DOC_M_T');
      SQL.Add('SET DOC_M_STAT = 1');
      SQL.Add('WHERE DOC_M_SERIAL = :SERIAL');
      SQL.Add('  AND DOC_M_STAT = 0');
      ParamByName('SERIAL').AsString := DocMSerial;
//      ParamByName('PUSER').AsString        := MabnaInfo.CurrentUser;
//      ParamByName('PDATE').AsString        := MbGetMachineDate;
//      ParamByName('HiDate').AsString       := edOfDate.Text;
      ExecSQL;
    end;
{ $IFNDEF ABIDI}   //97/01/30
    with FDM_IntSales.qrDocM do
    begin
      Close;
      SQL.Clear;
{      SQL.Add('update INVENTORY.doc_m_t');
      SQL.Add('set doc_m_stat=2,');
      SQL.Add('        DOC_M_CONFIRM3 =:PUSER,                     ');
      SQL.Add('        DOC_M_Date3    =:PDATE                      ');
      SQL.Add('where doc_m_stat=1                                  ');
      SQL.Add(' and  DOC_M_DATE  <= :HiDate       ');
      SQL.Add('and frm_code between 200 and 299                    ');
}

      SQL.Add('UPDATE INVENTORY.DOC_M_T');
      SQL.Add('SET DOC_M_STAT = 2');
      SQL.Add('WHERE DOC_M_SERIAL = :SERIAL');
      SQL.Add('  AND DOC_M_STAT = 1');
      ParamByName('SERIAL').AsString := DocMSerial;
//      ParamByName('PUSER').AsString        := MabnaInfo.CurrentUser;
//      ParamByName('PDATE').AsString        := MbGetMachineDate;
//      ParamByName('HiDate').AsString       := edOfDate.Text;
      ExecSQL;
    end;
{ $EndIf}
    MbDb.Commit(FDB);
  except on E: Exception do
    begin
      MbDB.RollBack(FDB);
      MbError(E.Message);
      MbError(ExpHandleM(E));
    end;
  end;
end;

procedure TfrmPGenerateFact.DeleteDefOrder;
begin
  with FDM_IntSales.qrTemp2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM DEFORDERFACT_T');
    ExecSQL;
  end;
  chbDir.Enabled := True;
end;

procedure TfrmPGenerateFact.UpdateStat;
begin
  with FDM_IntSales.qrTemp2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE OFFERTIT_T');
    SQL.Add('SET OFSTAT = 2');
    SQL.Add('WHERE OFDATE = :OFDATE');
    SQL.Add('  AND NVL(OFDLVPLACE, 0) <> 1');
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.SelectForInventoryOffer;
begin
  with FDM_IntSales.qrPGenerateFact do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT STK_NAME, STK_CODE, GDS_CODE, SUM(OFQTY)OFQTY, SUM(OFPRICE)OFPRICE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, 0 CUSTTYPE_CODE, 0 DR_CODE, ''0'' CUST_REQDATE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('FROM (');
    SQL.Add('SELECT STK_NAME, STK_CODE, GDS_CODE, SUM(OFQTY)OFQTY, SUM(OFPRICE)OFPRICE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('FROM(');
    SQL.Add('SELECT SUMOFDTA.*, UNT_DESC, GDS_DESCF, STK_NAME, NVL(ON_QTY, 0)ON_QTY');
    SQL.Add('FROM DIRECT_T DR, GOODS1 G,');
    SQL.Add('  (SELECT STK_CODE, GDS_CODE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0)) * SUM(NVL(OFQTY, 0))OFPRICE,');
    SQL.Add('     CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('   FROM');
    SQL.Add('     (SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    SQL.Add('       (SELECT STK_CODE, T.OFNUM, GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE');
{$IFDEF ABIDI}
    SQL.Add('       ,I.CUSTNO');
{$ENDIF}
    SQL.Add('         FROM IDCUSTOMER_T I, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('         WHERE D.OFNUM = T.OFNUM');
    SQL.Add('           AND I.CUSTNO = T.CUSTNO');
    SQL.Add('           AND NVL(OFDLVPLACE, 0) <> 1');
//    SQL.Add('           AND SECTAFSILY_CODE IS NULL');
{$IFDEF AMANI}
    SQL.Add('           AND NVL(TRIM(T.CUST_REQDATE), 0) = ' + '1');
{$ENDIF}
{$IFNDEF AMANI}
    SQL.Add('           AND NVL(T.CUST_REQDATE, 0) = 0');
{$ENDIF}

    SQL.Add('           AND T.OFDLVDTE IS NULL');
    SQL.Add('           AND T.OFDATE = :OFDATE');
    SQL.Add('           AND NVL(D.PACK_TYPE, 0) = 9');
    SQL.Add('           AND T.TAFSILY_YEAR = :YEAR');
    SQL.Add('           AND CU_CODE = :YEAR');
    SQL.Add('         )OFFDTA');
    SQL.Add('      WHERE OFFDTA.OFNUM = O.OFNUM(+)');
    if chbDir.Checked then
      SQL.Add('       AND OFFDTA.DR_CODE = O.DR_CODE(+)')
    else
      SQL.Add('       AND OFFDTA.CUSTTYPE_CODE = O.DR_CODE(+)');
    SQL.Add('     )OFORDER');
    SQL.Add('   GROUP BY STK_CODE, GDS_CODE, CUSTTYPE_CODE, DR_CODE, ORDER_CODE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('  )SUMOFDTA');
    SQL.Add('WHERE G.GDS_CODE = SUMOFDTA.GDS_CODE');
    SQL.Add('  AND G.STK_CODE = SUMOFDTA.STK_CODE');
{ $IFDEF ABIDI}
//    SQL.Add('  AND STK_CODE IN (1, 2)');
//    SQL.Add('  AND STK_CODE IN (1, 2, 12)');
{ $ENDIF}
    SQL.Add('  AND DR.DR_CUSTTYPE = SUMOFDTA.CUSTTYPE_CODE');
    SQL.Add('  AND DR.DR_CODE = SUMOFDTA.DR_CODE');
    SQL.Add('ORDER BY ORDER_CODE, SUMOFDTA.DR_CODE');
    SQL.Add(')');
    SQL.Add('GROUP BY STK_NAME, STK_CODE, GDS_CODE, ORDER_CODE, UNT_DESC, GDS_DESCF, ON_QTY, CUSTTYPE_CODE, DR_CODE');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('ORDER BY ORDER_CODE, GDS_CODE');
    SQL.Add(')');
    SQL.Add('GROUP BY STK_NAME, STK_CODE, ORDER_CODE, GDS_CODE, UNT_DESC, GDS_DESCF, ON_QTY');
{$IFDEF ABIDI}
    SQL.Add('       ,CUSTNO');
{$ENDIF}
    SQL.Add('ORDER BY ORDER_CODE, CUSTNO');
    ParamByName('OFDATE').AsString := edOfDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    try
      SQL.SaveToFile('D:\GInvH.txt');
    except
      SQL.SaveToFile('C:\GInvH.txt');
    end;
    Open;
  end;
end;

procedure TfrmPGenerateFact.InsertGdsReq;
begin
  with FDM_IntSales.qrDocM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO INVENTORY.GDS_GREQ_M_T');
    SQL.Add('(GDS_GREQ_M_SERIAL, DEP_CODE, ORDNO, STK_CODE, GDS_GREQ_M_SAL,');
    SQL.Add('  GDS_GREQ_M_NO, GDS_GREQ_M_DATE, GDS_GREQ_M_STT, GDS_GREQ_M_RES,');
    SQL.Add('  GDS_GREQ_M_GDS, GDS_GREQ_M_QTY, CENTER_CODE, GDS_GREQ_M_STAT, ACT_CODE, CUT_CODE)');
    SQL.Add('VALUES');
    SQL.Add('(:GDS_GREQ_M_SERIAL, :DEP_CODE, :ORDNO, :STK_CODE, :GDS_GREQ_M_SAL,');
    SQL.Add(' :GDS_GREQ_M_NO, :GDS_GREQ_M_DATE, :GDS_GREQ_M_STT, :GDS_GREQ_M_RES,');
    SQL.Add(' :GDS_GREQ_M_GDS, :GDS_GREQ_M_QTY, :CENTER_CODE, :GDS_GREQ_M_STAT, :ACT_CODE, :CUT_CODE)');
    ParamByName('GDS_GREQ_M_SERIAL').AsString := SerialNoReq;
    ParamByName('DEP_CODE').AsString := '2';
    ParamByName('ORDNO').AsString := '';
    ParamByName('STK_CODE').AsString := '1';
    ParamByName('GDS_GREQ_M_SAL').AsInteger := System_YY;
    ParamByName('GDS_GREQ_M_NO').AsInteger := DocMCode301;
    ParamByName('GDS_GREQ_M_DATE').AsString := edOfDate.Text;
    ParamByName('GDS_GREQ_M_STT').AsString := '0';
    ParamByName('GDS_GREQ_M_RES').AsString := '0';
    ParamByName('GDS_GREQ_M_GDS').AsString := '';
    ParamByName('GDS_GREQ_M_QTY').AsString := '';
    ParamByName('CENTER_CODE').AsString := '2109';
    ParamByName('GDS_GREQ_M_STAT').AsString := '2';
{$IFDEF AMANI}
    ParamByName('ACT_CODE').AsString := '24';
{$ENDIF}
{$IFNDEF AMANI}
    ParamByName('ACT_CODE').AsString := '27';
{$ENDIF}
//    ParamByName('ACT_CODE').AsString := '24';
    ParamByName('CUT_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('CUSTNO').AsString;
    ExecSQL;
  end;
end;

procedure TfrmPGenerateFact.InsertGdsReqD;
begin
  with FDM_IntSales.qrDocD do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO INVENTORY.GDS_GREQ_D_T');
    SQL.Add('(GDS_GREQ_M_SERIAL, GDS_CODE, GDS_GREQ_D_QTY, GDS_GREQ_D_GIV,');
    SQL.Add(' GDS_GREQ_D_STG, GDS_GREQ_BATCH)');
    SQL.Add('VALUES');
    SQL.Add('(:GDS_GREQ_M_SERIAL, :GDS_CODE, :GDS_GREQ_D_QTY, :GDS_GREQ_D_GIV,');
    SQL.Add(' :GDS_GREQ_D_STG, :GDS_GREQ_BATCH)');
    ParamByName('GDS_GREQ_M_SERIAL').AsString := SerialNoReq;
    ParamByName('GDS_CODE').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('GDS_CODE').AsString;
    ParamByName('GDS_GREQ_D_QTY').AsString := FDM_IntSales.qrPGenerateFact.FieldByName('OFQTY').AsString;
    ParamByName('GDS_GREQ_D_GIV').AsString := '';
    ParamByName('GDS_GREQ_D_STG').AsString := '0';
    ParamByName('GDS_GREQ_BATCH').AsString := '';
    ExecSQL;
  end;

end;

procedure TfrmPGenerateFact.Edit1Exit(Sender: TObject);
var
  StkName: String;
begin
  StkName := GetStkName(Edit1.Text);
  if StkName = '' then
  begin
    MbError(InvalidCode);
    Edit1.SetFocus;
  end;
  Edit2.Text := StkName;
end;

end.
