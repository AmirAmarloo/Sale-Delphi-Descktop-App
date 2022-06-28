{$I Direct.Inc}
unit EOrdDlv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport , DMUIntSales,
  myChkBox, ppStrtch, ppMemo, ppRichTx, ppEndUsr, ppVar, {$I MbUses.Inc};

type
  TFrmEOrdDlv = class(TMbForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbgrOrd: TDBGrid;
    Panel6: TPanel;
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    dbedOrdNo: TDBEdit;
    dbedOrdDate: TDBEdit;
    dbedSaleProd: TDBEdit;
    dbedOrdPlace: TDBEdit;
    dbedCntNo: TDBEdit;
    dbedCntDate: TDBEdit;
    dbedCusCode: TDBEdit;
    dbedCustName: TDBEdit;
    dbedCustTel: TDBEdit;
    dbedCustEco: TDBEdit;
    dbedCustAdd: TDBEdit;
    sbList: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dbedOrdValue: TDBEdit;
    dbedOrdDesc: TDBEdit;
    dbcbSaleType: TDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText17: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape6: TppShape;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel31: TppLabel;
    ppLabel26: TppLabel;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppLabel36: TppLabel;
    ppShape3: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    bbPrint: TBitBtn;
    bbPreview: TBitBtn;
    spDesign: TSpeedButton;
    ppDesigner: TppDesigner;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLine30: TppLine;
    ppDBText11: TppDBText;
    ppImage4: TppImage;
    ppLine10: TppLine;
    ppLabel22: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLine11: TppLine;
    ppLine22: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel13: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel15: TppLabel;
    ppImage2: TppImage;
    ppLine29: TppLine;
    ppLabel17: TppLabel;
    ppLine33: TppLine;
    ppLabel21: TppLabel;
    ppLine34: TppLine;
    ppLabel29: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    myCheckBox3: TmyCheckBox;
    myCheckBox4: TmyCheckBox;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape5: TppShape;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    Label18: TLabel;
    ComboBox2: TComboBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppLabel100: TppLabel;
    Label14: TLabel;
    dbedTvlDate: TDBEdit;
    ppDBText15: TppDBText;
    ppLabel43: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText3: TppDBText;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbedOrdNoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbgrOrdEnter(Sender: TObject);
    procedure dbgrOrdColEnter(Sender: TObject);
    procedure dbgrOrdEditButtonClick(Sender: TObject);
    procedure dbgrOrdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPostClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbedSaleProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCntNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCusCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure dbedOrdDateExit(Sender: TObject);
    procedure dbedCntDateExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbedCusCodeExit(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure dbedSaleProdExit(Sender: TObject);
    procedure dbedCntNoExit(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
    procedure dbedSaleProdEnter(Sender: TObject);
    procedure dbedCntNoEnter(Sender: TObject);
    procedure dbedTvlDateExit(Sender: TObject);
    procedure ppDBText9GetText(Sender: TObject; var Text: String);
    procedure ppDBText15GetText(Sender: TObject; var Text: String);
    procedure qrEOrdMORDCUST_CODEValidate(Sender: TField);

  private
    { Private declarations }
    qrTmp: TQuery;
    IsLock, GdsFlag ,
    DelFlag, CanCalc: Boolean;
    FDM_IntSales: TDM_IntSales;
    SeqControlOrd: TCuDBGrid;
    FAddGrid: TCuDBGrid;
    SumTotCust : Double;
    SaleProd,CntNo : String;
    SpacePos,AdrLength : Integer;
    procedure CF_MstOrd(DataSet: TDataSet);
    procedure OrdTypGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure OrdTypSetText(Sender: TField; const Text: String);
    procedure OrdCodeValidate(Sender: TField);
    procedure FStateChange(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure CF_DetOrd(DataSet: TDataSet);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure GdsCodeValidate(Sender: TField);
    procedure OrdQtyValidate(Sender: TField);
    procedure PackQtyValidate(Sender: TField);
    procedure FinalQtyValidate(Sender: TField);
    procedure MasterOnNewRecord(DataSet: TDataSet);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure InitSeqCtrl;
    procedure ShowDetail;
    function  OrdCheckBeforeSave: Boolean;
    procedure DelOrdDet;
    procedure InsOrdDet;
    procedure PACK_TYPEOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
    procedure PACK_TYPEOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ
    Function  PrintQuery : Boolean;
    Procedure SelectMasterRecord;
    Procedure SelectMasRecord;
    procedure SetTellAdd;
  public
    { Public declarations }
    DbHandle: TMbHandle;
  published
    property FDM;
  end;

var
  FrmEOrdDlv: TFrmEOrdDlv;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, Utility, UMessage,
  Vars, Help, Functions, DMUDataBase;
{$R *.dfm}

procedure TFrmEOrdDlv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEOrdDlv.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEOrdDlv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmEOrdDlv.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFlag:= True;
  CanCalc:= True;
  SelectEmpty(FDM_IntSales.qrEOrdM, 'ORD_M_T');
  SelectEmpty(FDM_IntSales.qrEOrdD, 'ORD_D_T');
  dbedOrdNo.SetFocus;
end;

procedure TFrmEOrdDlv.FormCreate(Sender: TObject);
begin
  FDM_IntSales:= TDM_IntSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  qrTmp:= TQuery.Create(Self);
  qrTmp.DataBaseName:= MbDB.DataBaseName[FDB];

  with FDM_IntSales.qrEOrdM do
  begin
    OnCalcFields:= CF_MstOrd;
    FieldByName('ORD_TYPE').OnGetText   := OrdTypGetText;
    FieldByName('ORD_TYPE').OnSetText   := OrdTypSetText;
    FieldbyName('ORD_CODE').OnValidate  := OrdCodeValidate;
    FieldByName('ORDCUST_CODE').OnValidate := qrEOrdMORDCUST_CODEValidate;
    OnUpdateError:= FUpdateError;
    OnNewRecord:= MasterOnNewRecord;
  end;

  with FDM_IntSales.dsEOrdM do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;

  with FDM_IntSales.qrEOrdD do
  begin
    OnCalcFields:= CF_DetOrd;
    BeforePost:= DetBeforePost;
    AfterOpen:= DetAfterOpen;
    FieldByName('GDS_CODE').OnValidate     := GdsCodeValidate;
    FieldByName('ORD_QTY').OnValidate      := OrdQtyValidate;
    FieldByName('PACK_QTY').OnValidate     := PackQtyValidate;
    FieldByName('ORD_FINALQTY').OnValidate := FinalQtyValidate;
    FieldByName('PACK_TYPE').OnGetText:= PACK_TYPEOnGetText;
    FieldByName('PACK_TYPE').OnSetText:= PACK_TYPEOnSetText;
    OnUpdateError:= FUpdateError;
    OnNewRecord:= DetOnNewRecord;
  end;

  with FDM_IntSales.dsEOrdD do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;

  InitSeqCtrl;
end;

procedure TFrmEOrdDlv.CF_MstOrd(DataSet: TDataSet);
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT C.CUSTNAME, C.ECONOMIC_CODE, C.CUSTTEL,    ');
    Add('       C.CUSTADD                           ');
    Add('  FROM IDCUSTOMER_T C              ');
    Add(' WHERE C.CUSTNO = :PCusNo                  ');

    ParamByName('PCusNo').AsString:= DataSet.FieldByName('ORDCUST_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('Cf_CustName').AsString := FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('Cf_CustEco').AsString  := FieldByName('ECONOMIC_CODE').AsString;

  end;
end;

procedure TFrmEOrdDlv.OrdTypGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intOrdType1: Text:= _stOrdType1;
    _intOrdType2: Text:= _stOrdType2;
  end;
end;

procedure TFrmEOrdDlv.OrdTypSetText(Sender: TField; const Text: String);
begin
  if Text = _stOrdType1 then
    Sender.AsInteger:= _intOrdType1;

  if Text = _stOrdType2 then
    Sender.AsInteger:= _intOrdType2;
end;

procedure TFrmEOrdDlv.OrdCodeValidate(Sender: TField);
begin
  if dbcbSaleType.Text = '' then
  with FDM_IntSales.qrEOrdM do
  begin
    Edit;
    FieldbyName('ORD_TYPE').AsInteger:= _intOrdType1;
  end;
end;

procedure TFrmEOrdDlv.FStateChange(Sender: TObject);
begin
  with FDM_IntSales do
    G_StateChange(qrEOrdM, qrEOrdD, btnPost, btnDelete);
end;

procedure TFrmEOrdDlv.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEOrdDlv.CF_DetOrd(DataSet: TDataSet);
begin
  if SeqControlOrd.CanCalculate then
  begin
    with qrTmp, SQL do
    begin
      Clear;
      Add('SELECT GDS_DESCF,UNT_DESC   ');
      Add('  FROM GOODS                            ');
      Add(' WHERE GDS_CODE = :GDS_CODE             ');
      ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      DataSet.FieldByName('GDS_DESCF').AsString := FieldByName('GDS_DESCF').AsString;
      DataSet.FieldByName('UNT_DESC').AsString  := FieldByName('UNT_DESC').AsString;
    end;
  end;
end;


procedure TFrmEOrdDlv.DetBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrd.SetFocus;
      dbgrOrd.SelectedIndex:= 1;
      Abort;
    end;

    if FieldByName('PACK_TYPE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrd.SetFocus;
      dbgrOrd.SelectedIndex:= 4;
      Abort;
    end;

    if FieldByName('ORD_QTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrd.SetFocus;
      dbgrOrd.SelectedIndex:= 5;
      Abort;
    end;

    if FieldByName('PACK_QTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrd.SetFocus;
      dbgrOrd.SelectedIndex:= 6;
      Abort;
    end;

    if FieldByName('ORD_FINALQTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrd.SetFocus;
      dbgrOrd.SelectedIndex:= 7;
      Abort;
    end;
  end;
end;

procedure TFrmEOrdDlv.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

procedure TFrmEOrdDlv.GdsCodeValidate(Sender: TField);
var
  PackType,GdsInfoM :Integer;
begin
  if not (Sender.AsString = '') then
  begin
    if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
    end;
  end;
(*
  PackType := GetPackType(Sender.AsString);
  if PackType <> -1 then
    dbgrOrd.DataSource.DataSet.FieldByName('PACK_TYPE').AsInteger := PackType;
*)
  if (FDM_IntSales.qrEOrdM.FieldByName('ORDCNT_CODE').AsString = '') and
     (FDM_IntSales.qrEOrdM.FieldByName('ORDOF_NUM').AsString = '') then
  begin
    PackType := GetPackType(Sender.AsString);
    if PackType <> 0 then
    begin
      Sender.DataSet.Edit;
      Sender.DataSet.FieldByName('PACK_TYPE').AsInteger:= PackType;
    end;

    GdsInfoM := GetGdsInfoM(Sender.AsString);
    if PackType <> 0 then
    begin
      Sender.DataSet.Edit;
      Sender.DataSet.FieldByName('GDS_INFO').AsInteger:= GdsInfoM;
    end;
  end;
end;

procedure TFrmEOrdDlv.OrdQtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TFrmEOrdDlv.PackQtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;

end;

procedure TFrmEOrdDlv.FinalQtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;
  Sender.DataSet.FieldByName('ORD_QTY').AsFloat := Sender.AsFloat;
  Sender.DataSet.FieldByName('PACK_QTY').AsFloat := Sender.AsFloat;
end;

procedure TFrmEOrdDlv.MasterOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ORD_TYPE').AsInteger:= 1;
  DataSet.FieldByName('ORD_YEAR').AsInteger:= System_YY;
end;

procedure TFrmEOrdDlv.DetOnNewRecord(DataSet: TDataSet);
begin
//  DataSet.FieldByName('PACK_TYPE').AsInteger:= 1;
end;

procedure TFrmEOrdDlv.InitSeqCtrl;
begin
  SeqControlOrd:= TCuDBGrid.Create(Self, dbgrOrd, 'ORD_SEQ', True, True, False);

  SeqControlOrd.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmEOrdDlv.FormDestroy(Sender: TObject);
begin
  qrTmp.Free;
end;

procedure TFrmEOrdDlv.dbedOrdNoExit(Sender: TObject);
begin
  if dbedOrdNo.Text = '' then
  begin
    With FDM_IntSales.qrEOrdM Do
    begin
      Edit;
      FieldByName('ORD_CODE').AsInteger := SelectMaxNo('ORD_M_T', 'ORD_CODE');
      FieldByName('ORD_DATE').AsString := MbUserDate;
      Exit;
    end;
(*
    MbError(NotDataComplete);
    dbedOrdNo.SetFocus;
    Exit;
*)
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEOrdM, 'ORD_M_T', 1, IsLock);

  with FDM_IntSales.qrEOrdM do
  begin
    if FieldByName('ORD_DATE').Value = Null then
    begin
      Edit;
      FieldByName('ORD_DATE').AsString:= MbUserDate;
    end;
(*
    if FieldByName('ORD_CNTDATE').Value = Null then
    begin
      Edit;
      FieldByName('ORD_CNTDATE').AsString:= MbUserDate;
    end;
*)
    if dbcbSaleType.Text = '' then
    begin
      Edit;
      FieldByName('ORD_TYPE').AsInteger:= _intOrdType1;
    end;

  end;

  ShowDetail;
  FDM_IntSales.qrEOrdD.CachedUpdates:= True;
end;

procedure TFrmEOrdDlv.ShowDetail;
begin
  FDM_IntSales.qrEOrdD.DisableControls;
  try
    with FDM_IntSales.qrEOrdD, SQL do
    begin
      Clear;
      Add('SELECT *                  ');
      Add('  FROM SALES.ORD_D_T');
      Add(' WHERE ORD_CODE = :ORD_CODE ');
      Add('   AND ORD_YEAR = :ORD_YEAR');
      Add(' ORDER BY ORD_SEQ             ');
      ParamByName('ORD_CODE').AsString:= FDM_IntSales.qrEOrdM.FieldByName('ORD_CODE').AsString;
      ParamByName('ORD_YEAR').AsInteger:= System_YY;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_IntSales.qrEOrdD.EnableControls;
  end;
end;

procedure TFrmEOrdDlv.SpeedButton3Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCusCode.SetFocus;
    with FDM_IntSales.qrEOrdM do
    begin
      Edit;
      FieldByName('ORDCUST_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdDlv.dbgrOrdEnter(Sender: TObject);
begin
  dbgrOrd.SelectedIndex:= 1;
end;

procedure TFrmEOrdDlv.dbgrOrdColEnter(Sender: TObject);
begin
  with dbgrOrd do
  begin
    if SelectedIndex in [0] then
      SelectedIndex:= 1;

    if SelectedIndex in [2,3] then
      SelectedIndex:= 4;
  end;
end;

procedure TFrmEOrdDlv.dbgrOrdEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrOrd.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrOrd.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_IntSales.qrEOrdD do
      begin
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;
      dbgrOrd.SelectedIndex:= 4;
      Exit;
    end;
  end;
  end;
function TFrmEOrdDlv.OrdCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_IntSales.qrEOrdM do
  begin
    if FieldByName('ORD_CODE').Value = Null then
    begin
      MbError(NotDataComplete);
      dbedOrdNo.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldbyName('ORD_DATE').Value = Null then
    begin
      MbError(NotDataComplete);
      dbedOrdDate.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('ORDCUST_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCusCode.SetFocus;
      Result:= False;
      Exit;
    end;

    if (dbedSaleProd.text <> '') and (dbedCntNo.text <> '') then
    begin
      MbError('‘„«—Â ÅÌ‘‰Â«œ ›—Ê‘ Ê ﬁ—«—œ«œ ›—Ê‘ Â„“„«‰ ‰»«Ìœ „ﬁœ«— œ«‘ Â »«‘‰œ.');
      dbedSaleProd.SetFocus;
      Result:= False;
      Exit;
    end;

    if (dbedCntNo.text <> '') then
    begin
      if (dbedCntDate.Text = '') then
      begin
        MbError(NotDataComplete);
        dbedCntDate.SetFocus;
        Result:= False;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmEOrdDlv.DelOrdDet;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM SALES.ORD_D_T    ');
    Add(' WHERE ORD_CODE = :ORD_CODE  ');
    Add('   AND ORD_YEAR = :Year');
    ParamByName('ORD_CODE').AsString  := FDM_IntSales.qrEOrdM.FieldByName('ORD_CODE').AsString;
    ParamByName('Year').AsInteger     := System_YY;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmEOrdDlv.InsOrdDet;
begin
  FDM_IntSales.qrEOrdD.DisableControls;
  try
    FDM_IntSales.qrEOrdD.First;

    while not FDM_IntSales.qrEOrdD.Eof do
    begin
      with FDM_IntSales.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;

        Add('INSERT INTO ORD_D_T (                                                    ');
        Add('  ORD_CODE, ORD_YEAR, ORD_SEQ, GDS_CODE, PACK_TYPE, ORD_QTY, PACK_QTY,   ');
        Add('  ORD_FINALQTY,GDS_INFO)                                                          ');
        Add('VALUES (:ORD_CODE, :ORD_YEAR, :ORD_SEQ, :GDS_CODE, :PACK_TYPE, :ORD_QTY, ');
        Add('  :PACK_QTY, :ORD_FINALQTY,:GDS_INFO)                                              ');
        ParamByName('ORD_CODE').AsString     := FDM_IntSales.qrEOrdM.FieldByName('ORD_CODE').AsString;
        ParamByName('ORD_YEAR').AsInteger    := System_YY;
        ParamByName('ORD_SEQ').AsString      := FDM_IntSales.qrEOrdD.FieldByName('ORD_SEQ').AsString;
        ParamByName('GDS_CODE').AsString     := FDM_IntSales.qrEOrdD.FieldByName('GDS_CODE').AsString;
        ParamByName('PACK_TYPE').AsString    := FDM_IntSales.qrEOrdD.FieldByName('PACK_TYPE').AsString;
        ParamByName('ORD_QTY').AsString      := FDM_IntSales.qrEOrdD.FieldByName('ORD_QTY').AsString;
        ParamByName('PACK_QTY').AsString     := FDM_IntSales.qrEOrdD.FieldByName('PACK_QTY').AsString;
        ParamByName('ORD_FINALQTY').AsString := FDM_IntSales.qrEOrdD.FieldByName('ORD_FINALQTY').AsString;
        ParamByName('GDS_INFO').AsString     := FDM_IntSales.qrEOrdD.FieldByName('GDS_INFO').AsString;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_IntSales.qrEOrdD.Next;
    end;
  finally
    FDM_IntSales.qrEOrdD.EnableControls;
  end;
end;

procedure TFrmEOrdDlv.dbgrOrdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrOrdEditButtonClick(nil);
end;

procedure TFrmEOrdDlv.btnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_IntSales.qrEOrdD.IsEmpty then
  begin
    MbError(RecHasRel);
    dbgrOrd.SetFocus;
    dbgrOrd.SelectedIndex:= 1;
    Exit;
  end;

  if not OrdCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_IntSales.qrEOrdM do
    begin
      ApplyUpdates;
    end;

    DelOrdDet;
    InsOrdDet;

    MbDB.Commit(FDB);

    SelectEmpty(FDM_IntSales.qrEOrdM, 'ORD_M_T');
    SelectEmpty(FDM_IntSales.qrEOrdD, 'ORD_D_T');
    dbedOrdNo.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEOrdDlv.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCnt(Code) then
  begin
    dbedCntNo.SetFocus;
    with FDM_IntSales.qrEOrdM do
    begin
      Edit;
      FieldByName('ORDCNT_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdDlv.SpeedButton1Click(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    dbedSaleProd.SetFocus;
    with FDM_IntSales.qrEOrdM do
    begin
      Edit;
      FieldByName('ORDOF_NUM').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdDlv.dbedSaleProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton1.Click;
end;

procedure TFrmEOrdDlv.dbedCntNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton2.Click;
end;

procedure TFrmEOrdDlv.dbedCusCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton3.Click;
end;

procedure TFrmEOrdDlv.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_IntSales.qrEOrdM, FDM_IntSales.qrEOrdD, FDM);
end;

procedure TFrmEOrdDlv.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEOrdM.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEOrdM, qrEOrdD, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrdM, 'ORD_M_T', 2, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEOrdM.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEOrdM, 'ORD_M_T', 2, IsLock);
  ShowDetail;
end;

procedure TFrmEOrdDlv.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEOrdM.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEOrdM, qrEOrdD, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrdM, 'ORD_M_T', 2, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEOrdM.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEOrdM, 'ORD_M_T', 2, IsLock);
  ShowDetail;
end;

procedure TFrmEOrdDlv.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEOrdM.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEOrdM, qrEOrdD, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrdM, 'ORD_M_T', 2, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEOrdM.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEOrdM, 'ORD_M_T', 2, IsLock);
  ShowDetail;
end;

procedure TFrmEOrdDlv.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEOrdM.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEOrdM, qrEOrdD, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrdM, 'ORD_M_T', 2, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEOrdM.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEOrdM, 'ORD_M_T', 2, IsLock);
  ShowDetail;
end;

procedure TFrmEOrdDlv.dbedOrdDateExit(Sender: TObject);
begin
  if FDM_IntSales.qrEOrdM.FieldByName('ORD_DATE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_IntSales.qrEOrdM.FieldByName('ORD_DATE').AsString, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    dbedOrdDate.SetFocus;
    dbedOrdDate.Text := MbUserDate;
    dbedOrdDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmEOrdDlv.dbedCntDateExit(Sender: TObject);
begin
  if FDM_IntSales.qrEOrdM.FieldByName('ORD_CNTDATE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_IntSales.qrEOrdM.FieldByName('ORD_CNTDATE').AsString, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    dbedCntDate.SetFocus;
    dbedCntDate.Text := MbUserDate;
    dbedCntDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmEOrdDlv.N1Click(Sender: TObject);
begin
  FDM_IntSales.qrEOrdD.Insert;
end;

procedure TFrmEOrdDlv.N2Click(Sender: TObject);
begin
  FDM_IntSales.qrEOrdD.Delete;
end;

procedure TFrmEOrdDlv.btnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  Code: string;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_IntSales.qrEOrdM.FieldByName('ORD_CODE').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM SALES.ORD_D_T    ');
          Add(' WHERE ORD_CODE = :ORD_CODE  ');
          Add('   AND ORD_YEAR =:ORD_YEAR   ');
          ParamByName('ORD_CODE').AsString  := Code;
          ParamByName('ORD_YEAR').AsInteger := System_YY;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM SALES.ORD_M_T    ');
          Add(' WHERE ORD_CODE = :ORD_CODE  ');
          Add('   AND ORD_YEAR =:ORD_YEAR   ');
          ParamByName('ORD_CODE').AsString  := Code;
          ParamByName('ORD_YEAR').AsInteger := System_YY;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        if FDM_IntSales.qrEOrdM.FieldByName('ORDOF_NUM').AsString <> '' then
        begin
          with FDM_IntSales.qrETemp, SQL do
          begin
            Clear;
            Add('UPDATE  OFFERTIT_T          ');
            Add('  SET   ORD_DELV_NO = NULL, ');
            Add('        OFSTAT = :OFSTAT    ');
            Add('  WHERE OFNUM = :OFNUM      ');
            ParamByName('OFSTAT').AsInteger  := _intNotConfirmed;
            ParamByName('OFNUM').AsString    := FDM_IntSales.qrEOrdM.FieldByName('ORDOF_NUM').AsString;
            SQL:= MbSqlConvert(SQL);
            ExecSQL;
          end;
        end;

        if FDM_IntSales.qrEOrdM.FieldByName('ORDCNT_CODE').AsString <> '' then
        begin
          with FDM_IntSales.qrETemp, SQL do
          begin
            Clear;
            Add('UPDATE  IDCONTACT_T         ');
            Add('  SET   ORD_DELV_NO = NULL, ');
            Add('        CNTSTAT = :CNTSTAT  ');
            Add('  WHERE CNTCODE = :CNTCODE  ');
            ParamByName('CNTSTAT').AsInteger  := _intNotConfirmed;
            ParamByName('CNTCODE').AsString   := FDM_IntSales.qrEOrdM.FieldByName('ORDCNT_CODE').AsString;
            SQL:= MbSqlConvert(SQL);
            ExecSQL;
          end;
        end;

        SelectEmpty(FDM_IntSales.qrEOrdM, 'ORD_M_T');
        SelectEmpty(FDM_IntSales.qrEOrdD, 'ORD_D_T');
        dbedOrdNo.SetFocus;
        MbDB.Commit(FDB);
      except
        on E: Exception do
        begin
          MbDB.RollBack(FDB);
          MbError(ExpHandleM(E));
        end;
      end;
    finally
     FQuery.Free;
    end;
  end;
end;

procedure TFrmEOrdDlv.dbedCusCodeExit(Sender: TObject);
begin
  with FDM_IntSales.qrEOrdM do
  begin
    if not (FieldByName('ORDCUST_CODE').AsString = '') then
    begin
      if not ExistCustomer(FieldByName('ORDCUST_CODE').AsString) then
      begin
        MbError(InvalidCustCode);
        dbedCusCode.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmEOrdDlv.PACK_TYPEOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intPackType1 : Text:= _stPackType1;
    _intPackType2 : Text:= _stPackType2;
    _intPackType3 : Text:= _stPackType3;
    _intPackType4 : Text:= _stPackType4;
    _intPackType5 : Text:= _stPackType5;
  end;
end;

procedure TFrmEOrdDlv.PACK_TYPEOnSetText(Sender: TField;
  const Text: String);
begin
  if Text = _stPackType1 then
    Sender.AsInteger:= _intPackType1;
  if Text = _stPackType2 then
    Sender.AsInteger:= _intPackType2;
  if Text = _stPackType3 then
    Sender.AsInteger:= _intPackType3;
  if Text = _stPackType4 then
    Sender.AsInteger:= _intPackType4;
  if Text = _stPackType5 then
    Sender.AsInteger:= _intPackType5;
end;

procedure TFrmEOrdDlv.sbListClick(Sender: TObject);
var
  Code: string;
begin
  if HelpOrd(Code) then
  begin
    dbedOrdNo.SetFocus;
    with FDM_IntSales.qrEOrdM do
    begin
      Edit;
      FieldByName('ORD_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdDlv.bbPreviewClick(Sender: TObject);
var
  I : Integer;
begin

  SpacePos := 0;
  AdrLength := Length(FDM_IntSales.qrEOrdM.FieldByName('CUST_ADD').AsString);
  if AdrLength > 50 then
  begin
    AdrLength := 50;
    for I:= 1 to AdrLength do
    begin
      if Copy(FDM_IntSales.qrEOrdM.FieldByName('CUST_ADD').AsString,I,1)=' ' then
        SpacePos := I;
    end;
  end
  else
    SpacePos := AdrLength;
  ppReport1.PrinterSetup.Copies:=ComboBox2.ItemIndex +1;
  if (not (FDM_IntSales.qrEOrdM.State in [dsBrowse])) or
     (not (FDM_IntSales.qrEOrdD.State in [dsBrowse]))  then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  If PrintQuery Then
    MbPrompt(NoReport)
  else
  begin
    if FileExists(ReportPath+'ROrdDlv.RTM') then
    begin
      ppReport1.Template.FileName:= ReportPath+'ROrdDlv.RTM';
      ppReport1.SaveAsTemplate:= True;
      ppReport1.Template.LoadFromFile;
    end;
    if Sender = bbPreview then
      ppReport1.DeviceType := 'Screen'
    else
      ppReport1.DeviceType := 'Printer';
    if FDM_IntSales.qrEOrdM.FieldByName('ORD_TYPE').AsInteger = 1 then
    begin
      myCheckBox3.Checked := True;
      myCheckBox4.Checked := False;
    end
    else
    begin
      myCheckBox3.Checked := False;
      myCheckBox4.Checked := True;
    end;
//    ppLabel100.Text:= MbStringNumber(Round(StrToFloat(StringReplace(FDM_IntSales.qrROrdDlv.FieldbYnAME('ORD_VALUE').AsString, ',' , '' ,[rfReplaceAll])))) + ' '+'—Ì«·';
    ppReport1.Print;
  end;
end;

function TFrmEOrdDlv.PrintQuery: Boolean;
begin
  with FDM_IntSales.qrROrdDlv , sql do
  begin
    Close;
    Clear;
    Add('SELECT M.ORD_CODE,M.ORD_DATE,ORD_PLACE,                                       ');
    Add('       CUSTNAME,CUST_ADD AS  CUSTADD,CUST_TEL AS CUSTTEL,ECONOMIC_CODE,       ');
    Add('       ORD_SEQ,D.GDS_CODE,GDS_DESCF,UNT_DESC,GDS_INFO_T.INFO_DESC,            ');
    Add('       D.PACK_TYPE,ORD_QTY,PACK_QTY,ORD_FINALQTY,ORD_VALUE,I.CUSTNO           ');
    Add('  FROM ORD_M_T M,ORD_D_T D,IDCUSTOMER_T I,GOODS G,GDS_INFO_T                  ');
    Add(' WHERE M.ORD_CODE     = D.ORD_CODE                                            ');
    Add('   AND M.ORD_YEAR     = D.ORD_YEAR                                            ');
    Add('   AND M.ORDCUST_CODE = I.CUSTNO                                              ');
    Add('   AND D.GDS_CODE     = G.GDS_CODE                                            ');
    Add('   AND M.ORD_CODE     = :ORDCODE                                              ');
    Add('   AND M.ORD_YEAR     = :YEAR                                                 ');
    Add('   AND D.GDS_INFO     = GDS_INFO_T.INFO_CODE(+)                               ');
    ParamByName('ORDCODE').AsString := dbedOrdNo.Text;
    ParamByName('YEAR').AsInteger   := System_YY;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := IsEmpty;
  end;
end;

procedure TFrmEOrdDlv.ppDBText5GetText(Sender: TObject; var Text: String);
begin
  case FDM_IntSales.qrROrdDlv.FieldbYnAME('PACK_TYPE').AsInteger of
     0            : Text := '‰œ«—œ';
    _intPackType1 : Text := _stPackType1;
    _intPackType2 : Text := _stPackType2;
    _intPackType3 : Text := _stPackType3;
    _intPackType4 : Text := _stPackType4;
    _intPackType5 : Text := _stPackType5;
  end;
end;

procedure TFrmEOrdDlv.dbedSaleProdExit(Sender: TObject);
var
  OfStat : Integer;
begin
  with FDM_IntSales.qrEOrdM do
  begin
    if not (dbedSaleProd.Text = '') then
    begin
      if not ExistOffID(FieldByName('ORDOF_NUM').AsString, OfStat) then
      begin
        MbError(InvalidOffer);
        dbedSaleProd.SetFocus;
        Exit;
      end
      else
      begin
        if SaleProd = dbedSaleProd.Text then Exit;
        SelectMasterRecord;
        SelectEmpty(FDM_IntSales.qrEOrdD, 'ORD_D_T');

        with FDM_IntSales do
        begin

          qrTmpT.Close;
          qrTmpT.Sql.Clear;
          qrTmpT.Sql.Add('SELECT OFNUM, OFSEQ, GDS_CODE, OFQTY,PACK_TYPE,GDS_INFO FROM OFFERDTL_T WHERE OFNUM = :OFNUM');
          qrTmpT.ParamByName('OFNUM').AsString := dbedSaleProd.Text;
          qrTmpT.Sql := MbSqlConvert(qrTmpT.Sql);
          qrTmpT.Open;

          qrTmpT.First;
          qrEOrdD.Open;
          qrEOrdD.DisableControls;
          while not qrTmpT.Eof do
          begin
            qrEOrdD.Insert;
            qrEOrdD.FieldByName('ORD_CODE').AsString     := dbedOrdNo.Text;
            qrEOrdD.FieldByName('ORD_YEAR').AsInteger    := System_YY;
            qrEOrdD.FieldByName('ORD_SEQ').AsString      := FDM_IntSales.qrTmpT.FieldByName('OFSEQ').AsString;
            qrEOrdD.FieldByName('PACK_TYPE').AsInteger   := FDM_IntSales.qrTmpT.FieldByName('PACK_TYPE').AsInteger;//_intPackType1;
            qrEOrdD.FieldByName('ORD_QTY').AsFloat       := FDM_IntSales.qrTmpT.FieldByName('OFQTY').AsFloat;
            qrEOrdD.FieldByName('PACK_QTY').AsFloat      := FDM_IntSales.qrTmpT.FieldByName('OFQTY').AsFloat;
            qrEOrdD.FieldByName('ORD_FINALQTY').AsFloat  := FDM_IntSales.qrTmpT.FieldByName('OFQTY').AsFloat;
            qrEOrdD.FieldByName('GDS_INFO').AsInteger   := FDM_IntSales.qrTmpT.FieldByName('GDS_INFO').AsInteger;
            qrEOrdD.FieldByName('GDS_CODE').AsString     := FDM_IntSales.qrTmpT.FieldByName('GDS_CODE').AsString;
            qrTmpT.Next;
            qrEOrdD.Next;
          end;
          qrEOrdD.EnableControls;
        end;
      end;
    end
    else
      Exit;
  end;
end;
  
procedure TFrmEOrdDlv.SelectMasterRecord;
begin
  with FDM_IntSales do
  begin
    qrTmp.Close;
    qrTmp.Sql.Clear;
    qrTmp.Sql.Add('SELECT SUM(NVL(OFPRICE,0)*NVL(OFQTY,0)) TOTCOST');
    qrTmp.Sql.Add('FROM '+SchemaName+'OFFERDTL_T');
    qrTmp.Sql.Add('WHERE  OFNUM = :OFNUM ');
    qrTmp.ParamByName('OFNUM').AsString := dbedSaleProd.Text;
    qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
    qrTmp.Open;
    SumTotCust := qrTmp.FieldByName('TOTCOST').AsFloat;

    qrTmp.Close;
    qrTmp.Sql.Clear;
    qrTmp.Sql.Add('SELECT * ');
    qrTmp.Sql.Add('FROM '+SchemaName+'OFFERTIT_T');
    qrTmp.Sql.Add('WHERE  OFNUM = :OFNUM ');
    qrTmp.ParamByName('OFNUM').AsString := dbedSaleProd.Text;
    qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
    qrTmp.Open;
    if not qrTmp.IsEmpty then
    begin
      qrEOrdM.Edit;
      qrEOrdM.FieldByName('ORD_PLACE').AsString     := qrTmp.FieldByName('OFDLVPLACE').AsString;
      qrEOrdM.FieldByName('ORDCUST_CODE').AsString  := qrTmp.FieldByName('CUSTNO').AsString;
      qrEOrdM.FieldByName('ORD_VALUE').AsFloat      := SumTotCust;
      qrEOrdM.FieldByName('ORD_TYPE').AsInteger     := _intOrdType1;
      qrEOrdM.FieldByName('ORD_DESC').AsString      := qrTmp.FieldByName('OFDESC').AsString;
    end;
  end;
end;

procedure TFrmEOrdDlv.dbedCntNoExit(Sender: TObject);
var
  OfStat : Integer;
begin
  with FDM_IntSales.qrEOrdM do
  begin
    if not (dbedCntNo.Text = '') then
    begin
      if not ExistCnt(FieldByName('ORDCNT_CODE').AsString) then
      begin
        MbError(InvalidCode);
        dbedCntNo.SetFocus;
        Exit;
      end
      else
      begin
        if CntNo = dbedCntNo.Text then Exit;
        SelectMasRecord;
        SelectEmpty(FDM_IntSales.qrEOrdD, 'ORD_D_T');

        with FDM_IntSales do
        begin

          qrTmpT.Close;
          qrTmpT.Sql.Clear;
          qrTmpT.Sql.Add('SELECT * FROM IDCONTACR_T WHERE CNTCODE = :CNTCODE');
          qrTmpT.ParamByName('CNTCODE').AsString := dbedCntNo.Text;
          qrTmpT.Sql := MbSqlConvert(qrTmpT.Sql);
          qrTmpT.Open;

          qrTmpT.First;
          qrEOrdD.Open;
          qrEOrdD.DisableControls;
          while not qrTmpT.Eof do
          begin
            qrEOrdD.Insert;
            if  not (qrEOrdD.State  in [dsInsert,dsEdit]) then
              qrEOrdD.Edit;
            qrEOrdD.FieldByName('ORD_CODE').AsString     := dbedOrdNo.Text;
            qrEOrdD.FieldByName('ORD_YEAR').AsInteger    := System_YY;
            qrEOrdD.FieldByName('ORD_SEQ').AsString      := FDM_IntSales.qrTmpT.FieldByName('CNTROW').AsString;
            qrEOrdD.FieldByName('PACK_TYPE').AsInteger   := FDM_IntSales.qrTmpT.FieldByName('PACK_TYPE').AsInteger;//_intPackType1;
            qrEOrdD.FieldByName('ORD_QTY').AsFloat       := FDM_IntSales.qrTmpT.FieldByName('CNTQTY').AsFloat;
            qrEOrdD.FieldByName('PACK_QTY').AsFloat      := FDM_IntSales.qrTmpT.FieldByName('CNTQTY').AsFloat;
            qrEOrdD.FieldByName('ORD_FINALQTY').AsFloat  := FDM_IntSales.qrTmpT.FieldByName('CNT_FINALQTY').AsFloat;
            qrEOrdD.FieldByName('GDS_INFO').AsInteger    := FDM_IntSales.qrTmpT.FieldByName('GDS_INFO').AsInteger;//_intPackType1;
            qrEOrdD.FieldByName('GDS_CODE').AsString     := FDM_IntSales.qrTmpT.FieldByName('GDS_CODE').AsString;
            qrTmpT.Next;
            qrEOrdD.Next;
          end;
          qrEOrdD.EnableControls;
        end;
      end;
    end
    else
      Exit;
  end;
end;

procedure TFrmEOrdDlv.SelectMasRecord;
begin
  with FDM_IntSales do
  begin
    qrTmp.Close;
    qrTmp.Sql.Clear;
    qrTmp.Sql.Add('SELECT SUM(NVL(CNTPRICE,0)*NVL(CNTQTY,0)) TOTCOST');
    qrTmp.Sql.Add('FROM '+SchemaName+'IDCONTACR_T');
    qrTmp.Sql.Add('WHERE  CNTCODE = :CNTCODE ');
    qrTmp.ParamByName('CNTCODE').AsString := dbedCntNo.Text;
    qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
    qrTmp.Open;
    SumTotCust := qrTmp.FieldByName('TOTCOST').AsFloat;

    qrTmp.Close;
    qrTmp.Sql.Clear;
    qrTmp.Sql.Add('SELECT * ');
    qrTmp.Sql.Add('FROM '+SchemaName+'IDCONTACT_T');
    qrTmp.Sql.Add('WHERE  CNTCODE = :CNTCODE ');
    qrTmp.ParamByName('CNTCODE').AsString := dbedCntNo.Text;
    qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
    qrTmp.Open;
    if not qrTmp.IsEmpty then
    begin
      qrEOrdM.Edit;
      qrEOrdM.FieldByName('ORD_PLACE').AsString     := 'œ—» ò«—Œ«‰Â';
      qrEOrdM.FieldByName('ORDCUST_CODE').AsString  := qrTmp.FieldByName('CUSTNO').AsString;
      qrEOrdM.FieldByName('ORD_VALUE').AsFloat      := SumTotCust;
      qrEOrdM.FieldByName('ORD_TYPE').AsInteger     := _intOrdType1;
      qrEOrdM.FieldByName('ORD_DESC').AsString      := '”›«—‘  ÕÊÌ· „—»Êÿ »Â ﬁ—«—œ«œ ‘„«—Â'+' '+dbedCntNo.Text;
    end;
  end;
end;

procedure TFrmEOrdDlv.spDesignClick(Sender: TObject);
begin
  ppDesigner.Report.Template.FileName:= ReportPath+'ROrdDlv.RTM';
  if FileExists(ReportPath+'ROrdDlv.RTM') then
  begin
    ppDesigner.Report.SaveAsTemplate:= True;
    ppDesigner.Report.Template.LoadFromFile;
  end;
  ppDesigner.ShowModal;
end;

procedure TFrmEOrdDlv.dbedSaleProdEnter(Sender: TObject);
begin
  SaleProd := dbedSaleProd.Text;
end;

procedure TFrmEOrdDlv.dbedCntNoEnter(Sender: TObject);
begin
  CntNo := dbedCntNo.Text;
end;

procedure TFrmEOrdDlv.dbedTvlDateExit(Sender: TObject);
begin
  if FDM_IntSales.qrEOrdM.FieldByName('TVL_DATE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_IntSales.qrEOrdM.FieldByName('TVL_DATE').AsString, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    dbedTvlDate.SetFocus;
    dbedTvlDate.Text := MbUserDate;
    dbedTvlDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmEOrdDlv.ppDBText9GetText(Sender: TObject; var Text: String);
begin
  Text := Copy(Text,1,SpacePos);
end;

procedure TFrmEOrdDlv.ppDBText15GetText(Sender: TObject; var Text: String);
begin
  Text := Copy(Text,SpacePos+1,250);
end;

procedure TFrmEOrdDlv.SetTellAdd;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  C.CUSTTEL,C.CUSTADD       ');
    Add('  FROM IDCUSTOMER_T C             ');
    Add(' WHERE C.CUSTNO = :PCusNo         ');

    ParamByName('PCusNo').AsString:= FDM_IntSales.qrEOrdM.FieldByName('ORDCUST_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    FDM_IntSales.qrEOrdM.Edit;

    FDM_IntSales.qrEOrdM.FieldByName('CUST_TEL').AsString := FieldByName('CUSTTEL').AsString;
    FDM_IntSales.qrEOrdM.FieldByName('CUST_ADD').AsString := FieldByName('CUSTADD').AsString;

  end;
end;

procedure TFrmEOrdDlv.qrEOrdMORDCUST_CODEValidate(Sender: TField);
begin
  SetTellAdd;
end;


end.


