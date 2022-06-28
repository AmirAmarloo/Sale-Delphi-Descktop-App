{$I Direct.Inc}
unit DGdsOffers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmDGdsOffers = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TBitBtn;
    Panel1: TPanel;
    qrDGdsOffers: TQuery;
    dbgrDGdsOffers: TDBGrid;
    dsDGdsOffers: TDataSource;
    qrDGdsOffersGDS_CODE: TStringField;
    qrDGdsOffersOFNUM: TStringField;
    qrDGdsOffersOFDATE: TStringField;
    qrDGdsOffersOFQTY: TFloatField;
    qrDGdsOffersOFPRICE: TFloatField;
    qrDGdsOffersUNT_DESC: TStringField;
    qrDGdsOffersGDS_DESCF: TStringField;
    qrDGdsOffersCF_PRICE: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    usDGdsOffers: TUpdateSQL;
    qrDGdsOffersCUST_DIR: TFloatField;
    qrDGdsOffersORDER_CODE: TFloatField;
    qrDGdsOffersCUSTTYPE_CODE: TFloatField;
    qrTemp: TQuery;
    btnSaveOrder: TButton;
    qrDGdsOffersTOTPRICE: TFloatField;
    dbgrDOffer: TDBGrid;
    qrDOffer: TQuery;
    dsDOffer: TDataSource;
    qrDOfferOFNUM: TStringField;
    qrDOfferOFSEQ: TFloatField;
    qrDOfferOFDATE: TStringField;
    qrDOfferGDS_CODE: TStringField;
    qrDOfferOFQTY: TFloatField;
    qrDOfferOFPRICE: TFloatField;
    qrDOfferCUSTTYPE_CODE: TFloatField;
    qrDOfferDR_CODE: TFloatField;
    qrDOfferGDS_DESCF: TStringField;
    qrDOfferUNT_DESC: TStringField;
    qrDOfferGDS_WEIGHT: TFloatField;
    qrDOfferCUSTNAME: TStringField;
    Splitter1: TSplitter;
    Panel2: TPanel;
    lbOfNum: TLabel;
    qrDGdsOffersOFSEQ: TFloatField;
    qrDGdsOffersCUSTNO: TFloatField;
    qrDGdsOffersCUSTNAME: TStringField;
    procedure qrDGdsOffersCalcFields(DataSet: TDataSet);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrDGdsOffersPACK_TYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrDGdsOffersBeforeDelete(DataSet: TDataSet);
    procedure qrDGdsOffersBeforeInsert(DataSet: TDataSet);
    procedure btnSaveOrderClick(Sender: TObject);
    procedure dbgrDOfferDblClick(Sender: TObject);
    procedure qrDGdsOffersAfterScroll(DataSet: TDataSet);
    procedure dbgrDGdsOffersDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qrDOfferAfterOpen(DataSet: TDataSet);
    procedure dbgrDOfferDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    DOffGdsCode, DataTypeVal: String;
    SelectDataType: Boolean;
    ColorList: array [0..50] of TColor;
    procedure DoffSelectData;
  public
    { Public declarations }
    FOfNum, DGdsCode, FGdsCode: string;
    DPackType: Integer;
  end;

var
  frmDGdsOffers: TfrmDGdsOffers;

implementation

uses PGenerateFact, ESaleProp, MainUnit, Utility;

{$R *.dfm}

procedure TfrmDGdsOffers.DoffSelectData;
begin
  if MBFM.GetFM(ParentFrm) is TfrmPGenerateFact then
  begin
    DOffGdsCode   := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).DOffGdsCode;
    DataTypeVal    := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).DataTypeVal;
    SelectDataType    := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).SelectDataType;
    FGdsCode := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).GdsCodeF;
  end;
  if SelectDataType then
  begin
    Label2.Visible := False;
    DBEdit1.Visible := False;
    DBEdit2.Visible := False;
    Label1.Visible := False;
    DBEdit3.Visible := False;
  end
  else
  begin
    Label2.Visible := True;
    DBEdit1.Visible := True;
    DBEdit2.Visible := True;
    Label1.Visible := True;
    DBEdit3.Visible := True;
  end;
{  with qrDOffer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT T.OFNUM, D.OFSEQ, OFDATE, G.GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE,');
    SQL.Add('  G.GDS_DESCF, G.UNT_DESC, G.GDS_WEIGHT, I.CUSTNAME');
    SQL.Add('FROM IDCUSTOMER_T I, GOODS G, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('WHERE D.OFNUM = T.OFNUM');
    SQL.Add('  AND I.CUSTNO = T.CUSTNO');
    SQL.Add('  AND G.GDS_CODE = D.GDS_CODE');
    SQL.Add('  AND SECTAFSILY_CODE IS NULL');
    SQL.Add('  AND D.OFNUM = :OFNUM');
    SQL.Add('  AND D.GDS_CODE = :GDSCODE');
  end;}
  with qrDGdsOffers do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFFDTA.*, ORDER_CODE FROM DEFORDERFACT_T O,');
    if SelectDataType then
      SQL.Add('  (SELECT CHR(32)GDS_CODE, T.OFNUM, T.OFDATE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0))OFPRICE,')
    else
      SQL.Add('  (SELECT G.GDS_CODE, T.OFNUM, T.OFDATE, SUM(NVL(OFQTY, 0))OFQTY, SUM(NVL(OFPRICE, 0))OFPRICE,');
    SQL.Add('   SUM(NVL(OFQTY, 0)) * SUM(NVL(OFPRICE, 0))TOTPRICE, CUST_DIR, CUSTTYPE_CODE, IC.CUSTNO, CUSTNAME,');
    if SelectDataType then
      SQL.Add('     CHR(32) PACK_TYPE, 0 OFSEQ, CHR(32)GDS_DESCF, CHR(32)UNT_DESC')
    else
      SQL.Add('     PACK_TYPE, OFSEQ, GDS_DESCF, UNT_DESC');
    if SelectDataType then
      SQL.Add('   FROM /*GOODS G, */ IDCUSTOMER_T IC, OFFERTIT_T T, OFFERDTL_T D')
    else
      SQL.Add('   FROM GOODS G,  IDCUSTOMER_T IC, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('   WHERE D.OFNUM = T.OFNUM');
    if not SelectDataType then
    begin
      SQL.Add('     AND G.GDS_CODE = :GDSCODE');
      SQL.Add('     AND G.GDS_CODE = D.GDS_CODE');
    end;
    SQL.Add('     AND IC.CUSTNO = T.CUSTNO');
    SQL.Add('   AND OFDATE = :OFPARAM');
    SQL.Add('   AND CU_CODE = :YEAR');
    SQL.Add('   AND SECTAFSILY_CODE IS NULL');
    if SelectDataType then
      SQL.Add('   GROUP BY T.OFNUM, T.OFDATE,')
    else
      SQL.Add('   GROUP BY T.OFNUM, T.OFDATE, UNT_DESC, G.GDS_CODE, GDS_DESCF, PACK_TYPE, OFSEQ,');
    SQL.Add('     CUST_DIR, CUSTTYPE_CODE, IC.CUSTNO, CUSTNAME');
    SQL.Add('  )OFFDTA');
    SQL.Add('WHERE OFFDTA.OFNUM = O.OFNUM(+)');
//    SQL.Add('  AND OFFDTA.CUST_DIR = O.DR_CODE(+)');
    if SelectDataType then
      SQL.Add('  AND ORDER_CODE = :OCODE');
    SQL.Add('ORDER BY GDS_CODE, OFDATE, OFFDTA.OFNUM');
    ParamByName('OFPARAM').AsString := DataTypeVal;
    ParamByName('YEAR').AsInteger := System_YY;
    if SelectDataType then
      ParamByName('OCODE').AsString := DOffGdsCode
    else
      ParamByName('GDSCODE').AsString := FGdsCode;
    Open;
  end;
  with qrDOffer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT T.OFNUM, D.OFSEQ, OFDATE, G.GDS_CODE, OFQTY, OFPRICE, CUSTTYPE_CODE, CUST_DIR DR_CODE,');
    SQL.Add('  G.GDS_DESCF, G.UNT_DESC, G.GDS_WEIGHT, I.CUSTNAME');
    SQL.Add('FROM IDCUSTOMER_T I, GOODS G, OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('WHERE T.TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND T.TAFSILY_YEAR = CU_CODE');
    SQL.Add('  AND D.OFNUM = T.OFNUM');
    SQL.Add('  AND I.CUSTNO = T.CUSTNO');
    SQL.Add('  AND G.GDS_CODE = D.GDS_CODE');
    SQL.Add('  AND SECTAFSILY_CODE IS NULL');
    SQL.Add('  AND D.OFNUM = :OFNUM');
    if not SelectDataType then
    begin
      SQL.Add('  AND D.GDS_CODE = :GDSCODE');
      ParamByName('GDSCODE').AsString := qrDGdsOffers.FieldByName('GDS_CODE').AsString;
    end;
    ParamByName('OFNUM').AsString := qrDGdsOffers.FieldByName('OFNUM').AsString;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
end;

procedure TfrmDGdsOffers.qrDGdsOffersCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_PRICE').AsFloat := DataSet.FieldByName('OFQTY').AsFloat * DataSet.FieldByName('OFPRICE').AsFloat;
end;

procedure TfrmDGdsOffers.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDGdsOffers.FormShow(Sender: TObject);
var
  I: Integer;
begin
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
  ColorList[30] := clWindow;
  for I := 31 to 50 do
    ColorList[30] := ColorList[30] + (I * 100);
  ColorList[30] := clWindow;
  DoffSelectData;
end;

procedure TfrmDGdsOffers.qrDGdsOffersPACK_TYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 9 then
    Text := 'åÏíå ÊÎÝíÝ'
  else
    Text := '';
end;

procedure TfrmDGdsOffers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  AcctiveFatGenFrm := True;
end;

procedure TfrmDGdsOffers.qrDGdsOffersBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmDGdsOffers.qrDGdsOffersBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;


procedure TfrmDGdsOffers.btnSaveOrderClick(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE DEFORDERFACT_T');
    SQL.Add('SET ORDER_CODE = :ORDCODE');
    SQL.Add('WHERE OFNUM = :OFNUM');
//    SQL.Add('  AND DR_CODE = :DRCODE');
    qrDGdsOffers.DisableControls;
    try
      qrDGdsOffers.First;
      while not qrDGdsOffers.Eof do
      begin
        ParamByName('ORDCODE').AsString := qrDGdsOffers.FieldByName('ORDER_CODE').AsString;
        ParamByName('OFNUM').AsString := qrDGdsOffers.FieldByName('OFNUM').AsString;
//        ParamByName('DRCODE').AsString := qrDGdsOffers.FieldByName('CUST_DIR').AsString;
        ExecSQL;
        qrDGdsOffers.Next;
      end;
    finally
      qrDGdsOffers.EnableControls;
    end;
  end;
end;

procedure TfrmDGdsOffers.dbgrDOfferDblClick(Sender: TObject);
begin
  FOfNum := qrDOffer.FieldByName('OFNUM').AsString;
  DGdsCode := qrDOffer.FieldByName('GDS_CODE').AsString;
  DPackType := qrDOffer.FieldByName('OFSEQ').AsInteger;
  MainForm.acESaleProp.Execute;
  qrDGdsOffers.Close;
  qrDGdsOffers.Open;
  if qrDGdsOffers.IsEmpty then Close;
end;

procedure TfrmDGdsOffers.qrDGdsOffersAfterScroll(DataSet: TDataSet);
begin
  qrDOffer.ParamByName('OFNUM').AsString := DataSet.FieldByName('OFNUM').AsString;
//  qrDOffer.ParamByName('GDSCODE').AsString := DataSet.FieldByName('GDS_CODE').AsString;
  qrDOffer.Close;
  qrDOffer.Open;
  lbOfNum.Caption := 'ÑíÒ ÇØáÇÚÇÊ íÔ ÝÇ˜ÊæÑ' + '  ' + DataSet.FieldByName('OFNUM').AsString;
end;

procedure TfrmDGdsOffers.dbgrDGdsOffersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ClrCode: Integer;
begin
  if not DiffWithInventor then
  begin
    if qrDGdsOffers.FieldByName('ORDER_CODE').AsInteger > 30 then
      ClrCode := 50
    else
      ClrCode := qrDGdsOffers.FieldByName('ORDER_CODE').AsInteger;
    dbgrDGdsOffers.Canvas.Brush.Color := ColorList[ClrCode];
  end;
  dbgrDGdsOffers.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmDGdsOffers.qrDOfferAfterOpen(DataSet: TDataSet);
begin
  DataSet.Locate('GDS_CODE', FGdsCode, [loPartialKey]);
end;

procedure TfrmDGdsOffers.dbgrDOfferDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ClrCode: Integer;
begin
  if not DiffWithInventor then
  begin
    if qrDGdsOffers.FieldByName('ORDER_CODE').AsInteger > 30 then
      ClrCode := 50
    else
      ClrCode := qrDGdsOffers.FieldByName('ORDER_CODE').AsInteger;
    dbgrDOffer.Canvas.Brush.Color := ColorList[ClrCode];
  end;
  dbgrDOffer.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
