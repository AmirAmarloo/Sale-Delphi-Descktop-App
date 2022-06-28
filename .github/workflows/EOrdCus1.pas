{$I Direct.Inc}
unit EOrdCus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc}, DMUExtSales;

type
  TFrmEOrdCus = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    dbgrOrder: TDBGrid;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel2: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    sbOrdNo: TSpeedButton;
    Label20: TLabel;
    sbProforma: TSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    dbedOrdNo: TDBEdit;
    dbedDocument: TDBEdit;
    dbedPrjName: TDBEdit;
    dbedCustName: TDBEdit;
    dbedCountryName: TDBEdit;
    dbedSupplier: TDBEdit;
    dbedOrdDte: TDBEdit;
    dbedProfDte: TDBEdit;
    dbedOurRef: TDBEdit;
    debdRefNo: TDBEdit;
    Label1: TLabel;
    dbedProfNo: TDBEdit;
    edTotCost: TEdit;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label10: TLabel;
    sbCurr: TSpeedButton;
    dbedCuCode: TDBEdit;
    dbedCuName: TDBEdit;
    Label21: TLabel;
    btnControl: TBitBtn;
    btnNoControl: TBitBtn;
    Label2: TLabel;
    dbedORD_DELV_NO: TDBEdit;
    Label3: TLabel;
    dbedStat: TDBEdit;
    dbedCUSTNO: TDBEdit;
    dbedPRJCODE: TDBEdit;
    SpbHCUSTNO: TSpeedButton;
    SpbHPRJCODE: TSpeedButton;
    dbedCOUNTERY_CODE: TDBEdit;
    SpbHCOUNTERY_CODE: TSpeedButton;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrOrderColEnter(Sender: TObject);
    procedure dbgrOrderEnter(Sender: TObject);
    procedure sbProformaClick(Sender: TObject);
    procedure dbedProfNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedProfNoExit(Sender: TObject);
    procedure dbgrOrderEditButtonClick(Sender: TObject);
    procedure dbgrOrderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedOrdNoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPostClick(Sender: TObject);
    procedure dbedOrdDteExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbOrdNoClick(Sender: TObject);
    procedure dbedOrdNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dbedCuCodeEnter(Sender: TObject);
    procedure dbedCuCodeExit(Sender: TObject);
    procedure dbedCuCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbCurrClick(Sender: TObject);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure dbedProfDteExit(Sender: TObject);
    procedure SpbHCUSTNOClick(Sender: TObject);
    procedure SpbHPRJCODEClick(Sender: TObject);
    procedure dbedCUSTNOExit(Sender: TObject);
    procedure dbedPRJCODEExit(Sender: TObject);
    procedure dbedCUSTNOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedPRJCODEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCOUNTERY_CODEExit(Sender: TObject);
    procedure dbedCOUNTERY_CODEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpbHCOUNTERY_CODEClick(Sender: TObject);
  private
    CuCode: string;
    GdsFlag: Boolean;
    MyTemp: string;
    FDM_ExtSales: TDM_ExtSales;
    IsLock,
    DelFlag,
    SumFlag, PostFlag: Boolean;
//    SeqControlOrd: TMbDbGridControl;
    SeqControlOrd: TCuDBGrid;
    procedure FOnStateChange(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure InitSeqCtrl;
    procedure CF_MstOrder(DataSet: TDataSet);
    procedure CF_DetOrder(DataSet: TDataSet);
//    procedure PrfNoValidate(Sender: TField);
    procedure FillGridAsDefault(ProfNum: string);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure GdsCodeValidate(Sender: TField);
    procedure GdsCodeChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure PriceValidate(Sender: TField);
    procedure QtyValidate(Sender: TField);
    procedure CUCodeValidate(Sender: TField);
    procedure ShowDetail;
    procedure DelOrdDet;
    procedure InsOrdDet;
    procedure CheckButton;
    procedure DlvDateValidate(Sender: TField);
    procedure CalcSum(Sender: TObject);
    procedure DetAfterPost(DataSet: TDataSet);
    function ProformHasContract: Boolean;
    function IsProfNoUnique: Boolean;
    function OrdCheckBeforeSave: Boolean;
    function IsCurrency: Boolean;
    procedure CreateOrdDelv(FSerial : integer);
    procedure DistroyOrdDelv;
    function  GetSeqVal: integer;
    function  SelectOrd_Delv_No: integer ;
    procedure UpdateOrd_Delv_No;
    procedure EmptyOrd_delv_No;
    procedure StatGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    function  CanModify: Boolean;
    procedure DisableOrdControls;
    procedure EnableOrdControls;
    function  GetCustNo(PProf : string): string;
    function  DoesHavaleHas: boolean;

  public
    DbHandle: TMbHandle;
  end;

var
  FrmEOrdCus: TFrmEOrdCus;

implementation

uses MainUnit, Utility, Vars, Functions, UMessage, Help;

{$R *.DFM}

procedure TFrmEOrdCus.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbgrOrder) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEOrdCus.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEOrdCus.FormCreate(Sender: TObject);
begin
  FDM_ExtSales:= TDM_ExtSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);

  with FDM_ExtSales.qrEOrder do
  begin
    OnCalcFields:= CF_MstOrder;
    FieldByName('ORDSTAT').OnGetText:= StatGetText;
//    FieldByName('PRFNUM').OnValidate:= PrfNoValidate;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEOrder do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
 end;

  with FDM_ExtSales.qrEOrderDet do
  begin
    OnCalcFields:= CF_DetOrder;
    AfterPost:= DetAfterPost;
    OnNewRecord:= DetOnNewRecord;
    BeforePost:= DetBeforePost;
    AfterOpen:= DetAfterOpen;
    FieldByName('GDS_CODE').OnValidate:= GdsCodeValidate;
    FieldByName('GDS_CODE').OnChange:= GdsCodeChange;
    FieldByName('ORDPRICE').OnValidate:= PriceValidate;
    FieldByName('ORDQTY').OnValidate:= QtyValidate;
    FieldByName('CU_CODE').OnValidate:= CUCodeValidate;
    FieldByName('ORDLVDTE').OnValidate:= DlvDateValidate;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEOrderDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  InitSeqCtrl;
end;

procedure TFrmEOrdCus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmEOrdCus.InitSeqCtrl;
begin
{  SeqControlOrd:= TMbDbGridControl.Create(Self, dbgrOrder, 'ORDSEQ');
  SeqControlOrd.AddSum('TOTCOST');
  SeqControlOrd.OnSumChanged:= CalcSum;}
  SeqControlOrd:= TCuDBGrid.Create(Self, dbgrOrder, 'ORDSEQ', True, True, False);
  SeqControlOrd.AddSum(['TOTCOST']);
  SeqControlOrd.SetSumControl['TOTCOST']:= edTotCost;
  SeqControlOrd.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmEOrdCus.FormDestroy(Sender: TObject);
begin
//  SeqControlOrd.Free;
end;

procedure TFrmEOrdCus.FOnStateChange(Sender: TObject);
begin
  with FDM_ExtSales do
    G_StateChange(qrEOrder, qrEOrderDet, btnPost, btnDelete);
end;

procedure TFrmEOrdCus.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEOrdCus.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFlag:= True;
  PostFlag:= True;
  SumFlag:= True;
  SelectEmpty(FDM_ExtSales.qrEOrder, 'ORDERTIT_T');
  SelectEmpty(FDM_ExtSales.qrEOrderDet, 'ORDERDTL_T');
  dbedOrdNo.SetFocus;
end;

procedure TFrmEOrdCus.dbgrOrderColEnter(Sender: TObject);
begin
  with dbgrOrder do
  begin
    if SelectedIndex = 0 then
      SelectedIndex:= 1;

    if SelectedIndex = 2 then
      SelectedIndex:= 3;

    if SelectedIndex in [6] then
      SelectedIndex:= 5;
  end;
end;

procedure TFrmEOrdCus.dbgrOrderEnter(Sender: TObject);
begin
  dbgrOrder.SelectedIndex:= 1;
end;

procedure TFrmEOrdCus.sbProformaClick(Sender: TObject);
var
  Code: string;
begin
  if HelpProf(Code, _intConfirmed) then
  begin
    dbedProfNo.SetFocus;
    with FDM_ExtSales.qrEOrder do
    begin
      Edit;
      FieldByName('PRFNUM').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdCus.dbedProfNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key = VK_F1 then
    sbProforma.Click;}
end;

procedure TFrmEOrdCus.CF_MstOrder(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('CUSTNAME').AsString     := FindCusName(DataSet.FieldByName('CUSTNO').AsString);
    FieldByName('PRJNAME').AsString      := FindProjectDesc(DataSet.FieldByName('PRJCODE').AsString);
    FieldByName('COUNTRY_NAME').AsString := FindCountryName(DataSet.FieldByName('COUNTERY_CODE').AsString);
  end;
//Comment 85-03-06  
{  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  P.PRFDATE, C.CUSTNAME,           ');
    Add('        R.PRJDESC, O.COUNTRY_NAME        ');
    Add('  FROM  PSSALES.PROFORMAT_T P,           ');
    Add('        PSSALES.IDCUSTOMER_T C,          ');
    Add('        PSSALES.PROJECT_T R,             ');
    Add('        PSSALES.COUNTRY O                ');
    Add('  WHERE P.PRFNUM = :PRFNUM               ');
    Add('  AND   P.CUSTNO = C.CUSTNO              ');
    Add('  AND   P.PRJCODE = R.PRJCODE            ');
    Add('  AND   C.COUNTERY_CODE = O.COUNTERY_CODE');

    ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('PRFDATE').AsString:= FieldByName('PRFDATE').AsString;
    DataSet.FieldByName('COUNTRY_NAME').AsString:= FieldByName('COUNTRY_NAME').AsString;
    DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('PRJNAME').AsString:= FieldByName('PRJDESC').AsString;
  end;}
end;

function TFrmEOrdCus.IsProfNoUnique: Boolean;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT ORDNO');
    Add('FROM PSSALES.ORDERTIT_T');
    Add('WHERE');
    Add('     PRFNUM = :PRFNUM');
    ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= IsEmpty;
    Close;
  end;
end;
{
procedure TFrmEOrdCus.PrfNoValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if not ExistProf(Sender.AsString) then
    begin
      MbError(InvalidProf);
      dbedProfNo.SetFocus;
      Abort;
    end;

    if ExistProf(Sender.AsString) and (not ExistProf(Sender.AsString, _intConfirmed)) then
    begin
      MbError(ProfNotConfirmed);
      dbedProfNo.SetFocus;
      Abort;
    end;

    if ProformHasContract then
    begin
      MbError(ProfHasContract);
      dbedProfNo.SetFocus;
      Abort;
    end;
}
{    if not (dbedProfNo.Text = '') then
      if Sender.Value = Sender.OldValue then Exit;}
{
    if not IsProfNoUnique then
    begin
      MbError(ProfHasUsed);
      dbedProfNo.SetFocus;
      Abort;
    end;
  end;
end;
}
procedure TFrmEOrdCus.FillGridAsDefault(ProfNum: string);
var
  DataSet, FQuery: TQuery;
begin
  DataSet:= FDM_ExtSales.qrEOrderDet;
  FQuery:= TQuery.Create(Self);
  SumFlag:= False;
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT PROROW, GDS_CODE, PROQTY, PROPRICE, CU_CODE');
      Add('FROM PSSALES.PROFORMAR_T                          ');
      Add('WHERE PRFNUM = :PRFNUM                            ');
      Add('ORDER BY PROROW                                   ');
      ParamByName('PRFNUM').AsString:= ProfNum;
      SQL:= MbSqlConvert(SQL);
      Open;
      CuCode:= FieldByName('CU_CODE').AsString;

      DataSet.DisableControls;
      PostFlag:= False;
      SeqControlOrd.DisableRowDuplicate:= True;
      try
        First;
        while not Eof do
        begin
          DataSet.Append;
          DataSet.FieldByName('ORDNO').AsString    := FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
          DataSet.FieldByName('ORDSEQ').AsString   := FieldByName('PROROW').AsString;
          DataSet.FieldByName('GDS_CODE').AsString := FieldByName('GDS_CODE').AsString;
          DataSet.FieldByName('ORDQTY').AsString   := FieldByName('PROQTY').AsString;
          DataSet.FieldByName('ORDPRICE').AsString := FieldByName('PROPRICE').AsString;
          DataSet.FieldByName('CU_CODE').AsString  := FieldByName('CU_CODE').AsString;

          Next;
        end;
      finally
        DataSet.First;
        PostFlag:= True;
        SeqControlOrd.DisableRowDuplicate:= False;
        DataSet.EnableControls;
      end;
    end;
  finally
    FQuery.Free;
    SumFlag:= True;
  end;
end;

procedure TFrmEOrdCus.dbedProfNoExit(Sender: TObject);
begin
{
  if not (dbedProfNo.Text = '') and (dbgrOrder.DataSource.DataSet.IsEmpty) then
    FillGridAsDefault(FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString);
}    
end;

procedure TFrmEOrdCus.CF_DetOrder(DataSet: TDataSet);
begin
  if SeqControlOrd.CanCalculate then
  begin
    DataSet.FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(DataSet.FieldByName('GDS_CODE').AsString);
    DataSet.FieldByName('CU_NAME').AsString:= FindArzName(DataSet.FieldByName('CU_CODE').AsString);
  end;

  with DataSet do
  begin
    if (not (FieldByName('ORDQTY').AsString = '')) and (not (FieldByName('ORDPRICE').AsString = '')) then
      FieldByName('TOTCOST').AsFloat:= FieldByName('ORDQTY').AsFloat * FieldByName('ORDPRICE').AsFloat;
  end;
end;

procedure TFrmEOrdCus.dbgrOrderEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrOrder.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrOrder.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_ExtSales.qrEOrderDet do
      begin
{        if IsEmpty then
          Exit;
}
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;
      dbgrOrder.SelectedIndex:= 1;
      Exit;
    end;
  end;

  if dbgrOrder.SelectedField.FieldName = 'CU_CODE' then
  begin
    if HelpArz(Code) then
    begin
      with FDM_ExtSales.qrEOrderDet do
      begin
        Edit;
        FieldByName('CU_CODE').AsString:= Code;
      end;
      dbgrOrder.SelectedIndex:= 7;
      Exit;
    end;
  end;
end;

procedure TFrmEOrdCus.dbgrOrderKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrOrderEditButtonClick(nil);
end;

procedure TFrmEOrdCus.GdsCodeValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
    end;
  end;
end;

procedure TFrmEOrdCus.PriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999.99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmEOrdCus.QtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmEOrdCus.CUCodeValidate(Sender: TField);
begin
  if (Sender.AsFloat > 99) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;

  if not (Sender.AsString = '') then
    if not ExistArz(Sender.AsString) then
    begin
      MbError(InvalidArz);
      Abort;
    end;
end;

procedure TFrmEOrdCus.ShowDetail;
begin
  FDM_ExtSales.qrEOrderDet.DisableControls;
  try
    with FDM_ExtSales.qrEOrderDet, SQL do
    begin
      Clear;
      Add('SELECT *');
      Add('FROM PSSALES.ORDERDTL_T');
      Add('WHERE');
      Add('     ORDNO = :ORDNO');
      Add('ORDER BY ORDSEQ');
      if not IsLock then
        Add('FOR UPDATE NOWAIT');
      ParamByName('ORDNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
//      CuCode:= FieldByName('CU_CODE').AsString;
    end;
  finally
    FDM_ExtSales.qrEOrderDet.EnableControls;
  end;

//  edTotCost.Text:= Trim(Format('%20.2n', [SeqControlOrd.Sum['TOTCOST'] * 1.0]));
end;

procedure TFrmEOrdCus.dbedOrdNoExit(Sender: TObject);
begin
  if dbedOrdNo.Text = '' then
  begin
    MbError(OrdNumIsEmpty);
    dbedOrdNo.SetFocus;
    Exit;
  end;

{  if not CheckChanges(FDM_ExtSales.qrEOrder, FDM_ExtSales.qrEOrderDet, FDM) then
  begin
    FDM_ExtSales.qrEOrder.Cancel;
    dbedOrdNo.SetFocus;
    Exit;
  end;}

  edTotCost.Text:= '';
  IsLock:= False;
  if AutoSelect(FDB, FDM_ExtSales.qrEOrder, 'ORDERTIT_T', 1, IsLock) then
  begin
    EnableOrdControls;
  end
  else
  begin
    if not CanModify then
      DisableOrdControls
    else
      EnableOrdControls;
  end;

  if FDM_ExtSales.qrEOrder.FieldByName('ORDSTAT').Value = Null then
  begin
    FDM_ExtSales.qrEOrder.Edit;
    FDM_ExtSales.qrEOrder.FieldByName('ORDSTAT').AsInteger:= _intNotConfirmed;
  end;

  if FDM_ExtSales.qrEOrder.FieldByName('ORDDATE').AsString = '' then
  begin
    FDM_ExtSales.qrEOrder.Edit;
    FDM_ExtSales.qrEOrder.FieldByName('ORDDATE').AsString:= ShToMiDate(MbUserDate);
  end;

  ShowDetail;
  CheckButton;
end;

function TFrmEOrdCus.ProformHasContract: Boolean;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT CNTCODE');
      Add('FROM PSSALES.IDCONTACT_T');
      Add('WHERE');
      Add('     PRFNUM = :PRFNUM');
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmEOrdCus.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_ExtSales.qrEOrder, FDM_ExtSales.qrEOrderDet, FDM);
end;

procedure TFrmEOrdCus.btnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_ExtSales.qrEOrderDet.IsEmpty then
  begin
    MbError(RecHasRel);
    dbgrOrder.SetFocus;
    dbgrOrder.SelectedIndex:= 1;
    Exit;
  end;

  if not OrdCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_ExtSales.qrEOrder do
    begin
      ApplyUpdates;
    end;

    DelOrdDet;
    InsOrdDet;
{    with FDM_ExtSales.qrEOrderDet do
    begin
      ApplyUpdates;
    end;}

    MbDB.Commit(FDB);

    SelectEmpty(FDM_ExtSales.qrEOrder, 'ORDERTIT_T');
    SelectEmpty(FDM_ExtSales.qrEOrderDet, 'ORDERDTL_T');
    dbedOrdNo.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEOrdCus.DelOrdDet;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM PSSALES.ORDERDTL_T');
    Add('WHERE  ORDNO = :ORDNO');
    ParamByName('ORDNO').AsString :=
        FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmEOrdCus.InsOrdDet;
begin
  FDM_ExtSales.qrEOrderDet.DisableControls;
  try
    FDM_ExtSales.qrEOrderDet.First;

    while not FDM_ExtSales.qrEOrderDet.Eof do
    begin
      with FDM_ExtSales.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;
        Add('INSERT INTO PSSALES.ORDERDTL_T');
        Add('  (ORDNO, ORDSEQ, GDS_CODE, ORDQTY, ORDPRICE, ORDLVDTE, CU_CODE)');
        Add('VALUES');
        Add('  (:ORDNO, :ORDSEQ, :GDS_CODE, :ORDQTY, :ORDPRICE, :ORDLVDTE, :CU_CODE)');
        ParamByName('ORDNO').AsString    := FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
        ParamByName('ORDSEQ').AsString   := FDM_ExtSales.qrEOrderDet.FieldByName('ORDSEQ').AsString;
        ParamByName('GDS_CODE').AsString := FDM_ExtSales.qrEOrderDet.FieldByName('GDS_CODE').AsString;
        ParamByName('ORDQTY').AsString   := FDM_ExtSales.qrEOrderDet.FieldByName('ORDQTY').AsString;
        ParamByName('ORDPRICE').AsString := FDM_ExtSales.qrEOrderDet.FieldByName('ORDPRICE').AsString;
        ParamByName('CU_CODE').AsString  := FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString;
        ParamByName('ORDLVDTE').AsString := FDM_ExtSales.qrEOrderDet.FieldByName('ORDLVDTE').AsString;
//        ParamByName('CU_CODE').AsString  := CuCode;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_ExtSales.qrEOrderDet.Next;
    end;
  finally
    FDM_ExtSales.qrEOrderDet.EnableControls;
  end;
end;

procedure TFrmEOrdCus.dbedOrdDteExit(Sender: TObject);
begin
  if FDM_ExtSales.qrEOrder.FieldByName('ORDDATE').AsString = '' then Exit;

//Added By Niaz Karbasi
  if not MiladiDate(FDM_ExtSales.qrEOrder.FieldByName('ORDDATE').AsString) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedOrdDte.SetFocus;
    Exit;
  end;

//Comment By Niaz Karbasi
{
  if not MsDateIsValid(FDM_ExtSales.qrEOrder.FieldByName('ORDDATE').AsString, False) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedOrdDte.SetFocus;
    dbedOrdDte.Text := MbUserDate;
    dbedOrdDte.SelStart := 0;
    Exit;
  end;}
end;

procedure TFrmEOrdCus.DlvDateValidate(Sender: TField);
begin
  if Sender.AsString = '' then Exit;

//Added By Niaz Karbasi
  if not MiladiDate(Sender.AsString) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    Abort;
  end;

//Comment By Niaz Karbasi
{
  if not MsDateIsValid(Sender.AsString, False) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    Abort;
  end;}
end;

procedure TFrmEOrdCus.btnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  Code: string;
begin
  if not CanModify then
  begin
    MbError(CannotModify);
    Abort;
  end;

  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM PSSALES.ORDERDTL_T');
          Add('WHERE');
          Add('     ORDNO = :ORDNO');
          ParamByName('ORDNO').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM PSSALES.ORDERTIT_T');
          Add('WHERE');
          Add('     ORDNO = :ORDNO');
          ParamByName('ORDNO').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_ExtSales.qrEOrder, 'ORDERTIT_T');
        SelectEmpty(FDM_ExtSales.qrEOrderDet, 'ORDERDTL_T');
        dbedoRDNo.SetFocus;
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

procedure TFrmEOrdCus.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEOrder.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEOrder, qrEOrderDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrder, 'ORDERTIT_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEOrder.EnableControls;
  end;

  if not CanModify then
    DisableOrdControls
  else
    EnableOrdControls;


  ShowDetail;
  CheckButton;
end;

procedure TFrmEOrdCus.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEOrder.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEOrder, qrEOrderDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrder, 'ORDERTIT_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEOrder.EnableControls;
  end;

  if not CanModify then
    DisableOrdControls
  else
    EnableOrdControls;

  ShowDetail;
  CheckButton;
end;

procedure TFrmEOrdCus.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEOrder.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEOrder, qrEOrderDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrder, 'ORDERTIT_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEOrder.EnableControls;
  end;

  if not CanModify then
    DisableOrdControls
  else
    EnableOrdControls;

  ShowDetail;
  CheckButton;
end;

procedure TFrmEOrdCus.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEOrder.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEOrder, qrEOrderDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEOrder, 'ORDERTIT_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEOrder.EnableControls;
  end;

  if not CanModify then
    DisableOrdControls
  else
    EnableOrdControls;

  ShowDetail;
  CheckButton;
end;

function TFrmEOrdCus.OrdCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_ExtSales.qrEOrder do
  begin
    if FieldByName('ORDNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOrdNo.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('ORDDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOrdDte.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('PRFDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedProfDte.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCUSTNO.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('PRJCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedPRJCODE.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('COUNTERY_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCOUNTERY_CODE.SetFocus;
      Result:= False;
      Exit;
    end;
  end;

{  with FDM_ExtSales.qrEOrderDet do
  begin
    if FieldByName('CU_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCuCode.SetFocus;
      Result:= False;
      Exit;
    end;

    DisableControls;
    try
      First;
      while not EOF do
      begin
        if FieldByName('GDS_CODE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrOrder.SetFocus;
          dbgrOrder.SelectedIndex:= 1;
          Result:= False;
          Exit;
        end;

        if FieldByName('ORDQTY').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrOrder.SetFocus;
          dbgrOrder.SelectedIndex:= 3;
          Result:= False;
          Exit;
        end;

        if FieldByName('ORDPRICE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrOrder.SetFocus;
          dbgrOrder.SelectedIndex:= 4;
          Result:= False;
          Exit;
        end;

        if FieldByName('ORDLVDTE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrOrder.SetFocus;
          dbgrOrder.SelectedIndex:= 5;
          Result:= False;
          Exit;
        end;

        if IsRowDuplicate(dbgrOrder, ['GDS_CODE']) then
        begin
          MbError(RepeatedError);
          dbgrOrder.SetFocus;
          dbgrOrder.SelectedIndex:= 1;
          Result:= False;
          Exit;
        end;

        Next;
      end;
    finally
      EnableControls;
    end;
  end;}
end;

procedure TFrmEOrdCus.sbOrdNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpOrder(Code) then
  begin
    dbedOrdNo.SetFocus;
    with FDM_ExtSales.qrEOrder do
    begin
      Edit;
      FieldByName('ORDNO').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdCus.dbedOrdNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbOrdNo.Click;
end;

procedure TFrmEOrdCus.CalcSum(Sender: TObject);
begin
//  edTotCost.Text:= Trim(Format('%20.2n', [SeqControlOrd.Sum['TOTCOST'] * 1.0]));
end;

procedure TFrmEOrdCus.N1Click(Sender: TObject);
begin
  FDM_ExtSales.qrEOrderDet.Insert;
end;

procedure TFrmEOrdCus.N2Click(Sender: TObject);
begin
  FDM_ExtSales.qrEOrderDet.Delete;
end;

procedure TFrmEOrdCus.dbedCuCodeEnter(Sender: TObject);
begin
  PostFlag := False;
  CuCode:= '';
  MyTemp:= FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString;
{  if (Sender as TDBEdit).DataSource.DataSet.IsEmpty then
    (Sender as TDBEdit).DataSource.DataSet.Insert;}
end;

procedure TFrmEOrdCus.dbedCuCodeExit(Sender: TObject);
var
  BM: TBookMark;
begin
  if not (FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString = '') then
  begin
{    if (FDM_IntSales.qrEIntReqDet.FieldByName('CU_CODE').AsFloat > 99) or
       (FDM_IntSales.qrEIntReqDet.FieldByName('CU_CODE').AsFloat < 0) then
    begin
      MbError(RangeErr);
      dbedCuCode.SetFocus;
      Exit;
    end;}

    if not ExistArz(FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString) then
    begin
      MbError(InvalidArz);
      dbedCuCode.SetFocus;
      Exit;
    end;
  end;

  CuCode:= FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString;

  if TQuery(dbgrOrder.DataSource.DataSet).CachedUpdates = False then Exit;
  if FDM_ExtSales.qrEOrderDet.IsEmpty then Exit;
  if MyTemp = FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString then Exit;

  with FDM_ExtSales.qrEOrderDet do
  begin
    BM:= GetBookMark;
    DisableControls;
    try
      First;
      while not EOF do
      begin
        Edit;
        FieldByName('CU_CODE').AsString:= CuCode;

        Next;
      end;
    finally
      if not (BM = nil) then
        GotoBookMark(BM);
      FreeBookMark(BM);
      EnableControls;
    end;
  end;
end;

procedure TFrmEOrdCus.dbedCuCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbCurr.Click;
end;

procedure TFrmEOrdCus.sbCurrClick(Sender: TObject);
var
  Code: string;
begin
  if HelpArz(Code) then
  begin
    dbedCuCode.SetFocus;
    with FDM_ExtSales.qrEOrderDet do
    begin
      Edit;
      FieldByName('CU_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdCus.DetOnNewRecord(DataSet: TDataSet);
begin
//  DataSet.FieldByName('CU_CODE').AsString:= CuCode;
  DataSet.FieldByName('ORDNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
end;

procedure TFrmEOrdCus.DetAfterPost(DataSet: TDataSet);
begin
//  SeqControlOrd.SetSums;
//  edTotCost.Text:= Trim(Format('%20.2n', [SeqControlOrd.Sum['TOTCOST'] * 1.0]));
end;

function TFrmEOrdCus.IsCurrency: Boolean;
begin
  Result:= not (FDM_ExtSales.qrEOrderDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmEOrdCus.DetBeforePost(DataSet: TDataSet);
begin
  if not PostFlag then Exit;

  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrder.SetFocus;
      dbgrOrder.SelectedIndex:= 1;
      Abort;
    end;

    if FieldByName('ORDQTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrder.SetFocus;
      dbgrOrder.SelectedIndex:= 3;
      Abort;
    end;

    if FieldByName('ORDPRICE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrder.SetFocus;
      dbgrOrder.SelectedIndex:= 4;
      Abort;
    end;

    if FieldByName('ORDLVDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrder.SetFocus;
      dbgrOrder.SelectedIndex:= 5;
      Abort;
    end;

    if FieldByName('CU_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOrder.SetFocus;
      dbgrOrder.SelectedIndex:= 7;
      Abort;
    end;
  end;
end;

procedure TFrmEOrdCus.GdsCodeChange(Sender: TField);
var
  Rate: Double;
begin
  if (Sender.AsString = '') or (GdsFlag = False) then
    Exit;

(* Vakili 83-09-28 *)
{  if not GetGoodRate(Sender.AsString, Rate) then
  begin
    GdsFlag:= False;
    try
      MbError(NoRate);
      Sender.DataSet.Edit;
      Sender.AsString:= '';
    finally
      GdsFlag:= True;
    end;
    Abort;
  end
  else}
  if GetGoodRate(Sender.AsString, Rate) then
  begin
    GdsFlag:= True;
    if IsCurrency then
      Rate:= Rate / StrToFloatDef(GetTaseer(Sender.DataSet.FieldByName('CU_CODE').AsString), 1)
    else
      Rate:= Round(Rate);

    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('ORDPRICE').AsFloat:= Rate;
  end;
(* Vakili 83-09-28 *)
end;

procedure TFrmEOrdCus.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

procedure TFrmEOrdCus.CheckButton;
begin
  if (FDM_ExtSales.qrEOrder.FieldByName('ORDSTAT').AsInteger = _intNotConfirmed) or
     (FDM_ExtSales.qrEOrder.FieldByName('ORDSTAT').AsString = '') then
  begin
    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
    btnNoControl.Visible:= True;
  end;
end;

procedure TFrmEOrdCus.btnControlClick(Sender: TObject);
Var OrdStete, Serial: Integer;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistOrdNo(dbedOrdNo.Text,OrdStete) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_ExtSales.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.ORDERTIT_T');
      Add('   SET ORDSTAT = :ORDSTAT');
      Add(' WHERE ORDNO   = :ORDNO  ');
      ParamByName('ORDSTAT').AsInteger:= _intConfirmed;
      ParamByName('ORDNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
      
      Serial := GetSeqVal;
      if dbedORD_DELV_NO.Text = '' then
      begin
        FDM_ExtSales.qrEOrder.Edit;
        FDM_ExtSales.qrEOrder.FieldByName('Ord_Delv_No').AsInteger := SelectOrd_Delv_No;
      end;
      CreateOrdDelv(serial);
      UpdateOrd_Delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= False;
  btnNoControl.Visible:= True;
  DisableOrdControls;

  dbedOrdNoExit(nil);
  if dbedORD_DELV_NO.Text = '' then
    UpdateOrd_Delv_No;
end;

procedure TFrmEOrdCus.btnNoControlClick(Sender: TObject);
Var OfStete : Integer;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistOrdNo(dbedOrdNo.Text,OfStete) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not DoesHavaleHas then
  begin
    MbError(CanNotDelete);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_ExtSales.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.ORDERTIT_T');
      Add('   SET ORDSTAT = :ORDSTAT');
      Add(' WHERE ORDNO   = :ORDNO  ');

      ParamByName('ORDSTAT').AsInteger:= _intNotConfirmed;
      ParamByName('ORDNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;

      DistroyOrdDelv;
      EmptyOrd_delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnNoControl.Visible:= False;
  btnControl.Visible:= True;
  EnableOrdControls;

  dbedOrdNoExit(nil);
  EmptyOrd_delv_No;  

end;

procedure TFrmEOrdCus.CreateOrdDelv(FSerial: integer);
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('INSERT INTO  PKINVENTORY.DOC_M(DOC_M_SERIAL, STK_CODE, FRM_CODE,       ');
    Add('                               DOC_M_SALEORNO,DOC_M_YEAR,DOC_M_STKSER, ');
    Add('                               DOC_M_CODE, DOC_M_DATE, DOC_M_STAT,     ');
    Add('                               ACT_CODE, CUT_CODE)                     ');
    Add('  VALUES (:DOC_M_SERIAL, :STK_CODE, :FRM_CODE, :DOC_M_SALEORNO,        ');
    Add('          :DOC_M_YEAR, :DOC_M_STKSER, :DOC_M_CODE, :DOC_M_DATE,        ');
    Add('          :DOC_M_STAT, :ACT_CODE, :CUT_CODE)                           ');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('STK_CODE').AsInteger     := FetchGdsType(FDM_ExtSales.qrEOrderDet.FieldByName('GDS_CODE').AsString);
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_SALEORNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsString    := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsString;
    ParamByName('DOC_M_DATE').AsString    := MbUserDate;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelPost;
    ParamByName('ACT_CODE').AsInteger     := _OrdDelActCode;
    ParamByName('CUT_CODE').AsString      := GetCustNo(FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString);
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelOK;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelConfirm;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('INSERT INTO  PKINVENTORY.DOC_D(DOC_M_SERIAL, GDS_CODE,  ');
    Add('                               DOC_M_YEAR, DOC_D_REQQTY)');
    Add('  (SELECT  :DOC_M_SERIAL, GDS_CODE, :DOC_M_YEAR, ORDQTY  ');
    Add('     FROM  PSSALES.ORDERDTL_T                           ');
    Add('     WHERE ORDNO = :ORDNO)                              ');
    ParamByName('DOC_M_SERIAL').AsInteger:= FSerial;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('ORDNO').AsString      := FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmEOrdCus.DistroyOrdDelv;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelOK;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelPost;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  PKINVENTORY.DOC_D                                   ');
    Add('  WHERE DOC_M_SERIAL  = (SELECT DOC_M_SERIAL                ');
    Add('                          FROM PKINVENTORY.DOC_M            ');
    Add('                         WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                           AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                           AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                           AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  PKINVENTORY.DOC_M            ');
    Add('  WHERE FRM_CODE     = :FRM_CODE     ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE   ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

function TFrmEOrdCus.GetSeqVal: integer;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT INVENTORY.SERNO.NEXTVAL VAL');
    Add('  FROM DUAL                       ');
    Open;
    Result := (FieldByName('VAL').AsInteger) ;
    Close;
  end;
end;

function TFrmEOrdCus.SelectOrd_Delv_No: integer;
begin
//Comment by Niaz Karbasi on 85-02-03
{  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CNTNO.NEXTVAL ORD_DELV_NO');
    Add('  FROM DUAL                     ');
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= FDM_ExtSales.qrETemp.FieldByName('ORD_DELV_NO').AsInteger;
    Close;
  end;}
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Sql.Clear;
    Sql.Add('SELECT  MAX(DOC_M_CODE) MAXCODE');
    Sql.Add('  FROM  PKINVENTORY.DOC_M      ');
    Sql.Add('  WHERE FRM_CODE = :FRMCODE    ');
    Sql.Add('  AND   DOC_M_YEAR = :SYEAR    ');
    Sql.Add('  AND   DOC_M_STKSER = :STKSER ');
    ParamByName('STKSER').AsInteger  := _OrdDelStkSerCode;
    ParamByName('SYEAR').AsInteger   := System_YY;
    ParamByName('FRMCODE').AsInteger := _OrdDelFormcode;
    SqL:= MbSqlConvert(SqL);
    Open;
    Result := FieldByName('MAXCODE').AsInteger + 1;
  end;
end;

procedure TFrmEOrdCus.StatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intOrdNotConfirmed : Text:= _stOrdNotConfirmed;
    _intOrdConfirmed    : Text:= _stOrdConfirmed;
  end;
end;

function TFrmEOrdCus.CanModify: Boolean;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT ORDSTAT            ');
    Add('  FROM PSSALES.ORDERTIT_T ');
    Add(' WHERE ORDNO = :ORDNO     ');
    ParamByName('ORDNO').AsString:= FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('ORDSTAT').AsInteger = _intNotConfirmed);
    Close;
  end;
end;

procedure TFrmEOrdCus.DisableOrdControls;
begin
  dbedOrdDte.Enabled  := False;
  dbedProfNo.Enabled  := False;
  dbedOurRef.Enabled  := False;
  dbedSupplier.Enabled:= False;
  debdRefNo.Enabled   := False;
  dbedDocument.Enabled:= False;
  dbedProfDte.Enabled := False;
  dbedCUSTNO.Enabled  := False;
  dbedPRJCODE.Enabled := False;
  dbedCOUNTERY_CODE.Enabled := False;
  dbedCuCode.Enabled  := False;
  SpbHCUSTNO.Enabled  := False;
  SpbHPRJCODE.Enabled := False;
  SpbHCOUNTERY_CODE.Enabled := False;
  TQuery(dbgrOrder.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled  := False;
  btnDelete.Enabled:= False;
end;

procedure TFrmEOrdCus.EnableOrdControls;
begin
  dbedOrdDte.Enabled  := True;
  dbedProfNo.Enabled  := True;
  dbedOurRef.Enabled  := True;
  dbedSupplier.Enabled:= True;
  debdRefNo.Enabled   := True;
  dbedDocument.Enabled:= True;
  dbedProfDte.Enabled := True;
  dbedCUSTNO.Enabled  := True;
  dbedPRJCODE.Enabled := True;
  dbedCOUNTERY_CODE.Enabled := True;
  dbedCuCode.Enabled  := True;
  SpbHCUSTNO.Enabled  := True;
  SpbHPRJCODE.Enabled := True;
  SpbHCOUNTERY_CODE.Enabled := True;
  TQuery(dbgrOrder.DataSource.DataSet).CachedUpdates:= True;

  BtnPost.Enabled := (MabnaInfo.HasAccess(BtnPost.Tag));
//  btnPost.Enabled  := True;
  btnDelete.Enabled := (MabnaInfo.HasAccess(btnDelete.Tag));
//  btnDelete.Enabled:= True;
end;

function TFrmEOrdCus.GetCustNo(PProf : string): string;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT CUSTNO            ');
      Add('  FROM PSSALES.PROFORMAT_T ');
      Add(' WHERE PRFNUM = :PRFNUM     ');
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEOrder.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= FieldByName('CUSTNO').AsString;
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

function TFrmEOrdCus.DoesHavaleHas: boolean;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  COUNT(*) CNT                                          ');
    Add('  FROM  DOC_M                                                 ');
    Add('  WHERE DOC_M_LNSERIAL = (SELECT DOC_M_SERIAL                 ');
    Add('                            FROM PKINVENTORY.DOC_M            ');
    Add('                           WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                             AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                             AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                             AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('CNT').AsInteger = 0);
    Close;
  end;
end;

procedure TFrmEOrdCus.UpdateOrd_Delv_No;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.ORDERTIT_T         ');
    Add('  SET   ORD_DELV_NO = :ORD_DELV_NO ');
    Add('  WHERE ORDNO = :ORDNO             ');
    ParamByName('ORD_DELV_NO').AsInteger:= FDM_ExtSales.qrEOrder.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('ORDNO').AsString       := FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmEOrdCus.EmptyOrd_delv_No;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.ORDERTIT_T ');
    Add('  SET   ORD_DELV_NO = NULL ');
    Add('  WHERE ORDNO = :ORDNO     ');
    ParamByName('ORDNO').AsString  := FDM_ExtSales.qrEOrder.FieldByName('ORDNO').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmEOrdCus.dbedProfDteExit(Sender: TObject);
begin
  if FDM_ExtSales.qrEOrder.FieldByName('PRFDATE').AsString = '' then Exit;

//Added By Niaz Karbasi
  if not MiladiDate(FDM_ExtSales.qrEOrder.FieldByName('PRFDATE').AsString) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedProfDte.SetFocus;
    Exit;
  end;
end;

procedure TFrmEOrdCus.SpbHCUSTNOClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCUSTNO.SetFocus;
    with FDM_ExtSales.qrEOrder do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdCus.SpbHPRJCODEClick(Sender: TObject);
var
  Code: string;
begin
  if HelpPrj(Code) then
  begin
    dbedPRJCODE.SetFocus;
    with FDM_ExtSales.qrEOrder do
    begin
      Edit;
      FieldByName('PRJCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEOrdCus.dbedCUSTNOExit(Sender: TObject);
begin
  if not (FDM_ExtSales.qrEOrder.FieldByName('CUSTNO').AsString = '') then
  begin
    if not ExistCustomer(FDM_ExtSales.qrEOrder.FieldByName('CUSTNO').AsString) then
    begin
      MbError(InvalidCustCode);
      dbedCUSTNO.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFrmEOrdCus.dbedPRJCODEExit(Sender: TObject);
begin
  if not (FDM_ExtSales.qrEOrder.FieldByName('PRJCODE').AsString = '') then
  begin
    if not ExistProject(FDM_ExtSales.qrEOrder.FieldByName('PRJCODE').AsString) then
    begin
      MbError(InvalidProject);
      dbedCUSTNO.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFrmEOrdCus.dbedCUSTNOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpbHCUSTNO.Click;
end;

procedure TFrmEOrdCus.dbedPRJCODEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpbHPRJCODE.Click;
end;

procedure TFrmEOrdCus.dbedCOUNTERY_CODEExit(Sender: TObject);
begin
  if not (FDM_ExtSales.qrEOrder.FieldByName('COUNTERY_CODE').AsString = '') then
  begin
    if not ExistCountry(FDM_ExtSales.qrEOrder.FieldByName('COUNTERY_CODE').AsString) then
    begin
      MbError(InvalidCountry);
      dbedCUSTNO.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFrmEOrdCus.dbedCOUNTERY_CODEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpbHCOUNTERY_CODE.Click;
end;

procedure TFrmEOrdCus.SpbHCOUNTERY_CODEClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCountry(Code) then
  begin
    dbedCOUNTERY_CODE.SetFocus;
    with FDM_ExtSales.qrEOrder do
    begin
      Edit;
      FieldByName('COUNTERY_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
