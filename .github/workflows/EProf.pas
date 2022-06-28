{$I Direct.Inc}
unit EProf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppEndUsr, ppDB, ppDBPipe, ppDBBDE, ppBands, ppClass,
  ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, {$I MbUses.Inc}, DMUExtSales;

type
  TFrmEProf = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    Panel1: TPanel;
    dbgrProf: TDBGrid;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    btnExit: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbedProfNo: TDBEdit;
    dbedDocument: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    dbedOurRef: TDBEdit;
    dbedPrjName: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    sbList: TSpeedButton;
    dbedCustName: TDBEdit;
    btnNoControl: TBitBtn;
    btnControl: TBitBtn;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    dbedCountryName: TDBEdit;
    dbedValidity: TDBEdit;
    dbedProfDte: TDBEdit;
    dbedPrepay: TDBEdit;
    Label2: TLabel;
    edTotPrice: TEdit;
    Label5: TLabel;
    dbedStatus: TDBEdit;
    Label9: TLabel;
    dbedCuName: TDBEdit;
    Sbcust: TSpeedButton;
    SbPrj: TSpeedButton;
    dbedPrjCode: TDBEdit;
    dbedCustNo: TDBEdit;
    dbedCuCode: TDBEdit;
    SbCuCode: TSpeedButton;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    spDesign: TSpeedButton;
    ppReportEx: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBCalc4: TppDBCalc;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppPageStyle2: TppPageStyle;
    ppShape1: TppShape;
    ppLine41: TppLine;
    ppLabel65: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel46: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel101: TppLabel;
    ppLabel107: TppLabel;
    ppLine50: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppBDEPipelineEx2: TppBDEPipeline;
    ppDesignerEx: TppDesigner;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine1: TppLine;
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbedProfNoExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrProfColEnter(Sender: TObject);
    procedure dbgrProfEnter(Sender: TObject);
    procedure dbgrProfEditButtonClick(Sender: TObject);
    procedure dbgrProfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedProfDteExit(Sender: TObject);
    procedure dbedValidityExit(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure dbedProfNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure SbcustClick(Sender: TObject);
    procedure SbPrjClick(Sender: TObject);
    procedure dbedCustNoExit(Sender: TObject);
    procedure dbedPrjCodeExit(Sender: TObject);
    procedure dbedCuCodeExit(Sender: TObject);
    procedure dbedCuCodeEnter(Sender: TObject);
    procedure SbCuCodeClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
  private
    CuCode: string;
    FDM_ExtSales: TDM_ExtSales;
    IsLock,
    DelFlag, InsFlag: Boolean;
    GdsFlag: Boolean;
    SeqControlProf: TCuDBGrid;
    ReqId: string;
    PostFlag: Boolean;
    MyTemp: string;
    procedure CF_MstCalc(DataSet: TDataSet);
    procedure CF_DetCalc(DataSet: TDataSet);
    procedure CF_RepCalc(DataSet: TDataSet);
    procedure CF_MasterCalc(DataSet: TDataSet);
    procedure DetBeforeInsert(DataSet: TDataSet);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure DetBeforeDelete(DataSet: TDataSet);
    procedure InitSeqCtrl;
    procedure GdsCodeValidate(Sender: TField);
    procedure CuCodeValidate(Sender: TField);
    procedure GdsCodeChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure PriceValidate(Sender: TField);
    procedure QtyValidate(Sender: TField);
    procedure ClearGrid;
    procedure ShowDetail;
    procedure ShowDetail2;
    procedure DelPrfDet;
    procedure InsPrfDet;
    procedure FOnStateChange(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure DisablePrfControls;
    procedure EnablePrfControls;
    procedure CheckButton;
    procedure CalcSum(Sender: TObject);
    procedure StatGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FillDetailPrfNum(DataSet: TDataSet);
    function PrfInCustReq: Boolean;
    function ProCheckBeforeSave: Boolean;
    function CanModify: Boolean;
    function IsCurrency: Boolean;

  public
    DbHandle: TMbHandle;
  end;

var
  FrmEProf: TFrmEProf;

implementation

uses MainUnit, HCustom, HBidVch, HCountry, HProf, Utility,
  Vars, Functions, Help, UMessage;

{$R *.DFM}

procedure TFrmEProf.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEProf.FormCreate(Sender: TObject);
begin
  FDM_ExtSales:= TDM_ExtSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);

  with FDM_ExtSales.qrEProf do
  begin
    OnCalcFields:= CF_MstCalc;
    FieldByName('PRFSTAT').OnGetText:= StatGetText;
    OnCalcFields:= CF_MasterCalc;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEProf do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  with FDM_ExtSales.qrEProfDet do
  begin
    OnCalcFields:= CF_DetCalc;
    BeforeDelete:= DetBeforeDelete;
    BeforeInsert:= DetBeforeInsert;
    OnNewRecord:= DetOnNewRecord;
    AfterOpen:= DetAfterOpen;
    BeforePost:= DetBeforePost;
    FieldByName('GDS_CODE').OnValidate:= GdsCodeValidate;
    FieldByName('GDS_CODE').OnChange:= GdsCodeChange;
    FieldByName('PROPRICE').OnValidate:= PriceValidate;
    FieldByName('PROQTY').OnValidate:= QtyValidate;
    FieldByName('CU_CODE').OnValidate:= CuCodeValidate;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEProfDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;
   FDM_ExtSales.qrRProf.OnCalcFields := CF_RepCalc;
  InitSeqCtrl;
  SetFormColor(Self,_FormColor);
end;

procedure TFrmEProf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmEProf.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFlag:= True;
  InsFlag:= False;
  PostFlag:= True;
  SelectEmpty(FDM_ExtSales.qrEProf, 'PROFORMAT_T');
  SelectEmpty(FDM_ExtSales.qrEProfDet, 'PROFORMAR_T');
  dbedProfNo.SetFocus;
end;

procedure TFrmEProf.dbedProfNoExit(Sender: TObject);
begin
  if MbDB.InTransaction[FDB] then
    MbDB.RollBack(FDB);

  MbDB.StartTransaction(FDB);

  if not (dbedProfNo.Text = '') then
  begin
    if not ExistProf(dbedProfNo.Text) then
    begin
      MbError(EmptyProf);
      dbedProfNo.SetFocus;
      Exit;
    end
    else
    begin
      IsLock:= False;
      AutoSelect(FDB, FDM_ExtSales.qrEProf, 'PROFORMAT_T', 1, IsLock);

      ShowDetail;
      if not CanModify then
        DisablePrfControls
      else
        EnablePrfControls;
    end;
  end
  else
  begin
    EnablePrfControls;

    IsLock:= False;
    SelectEmpty(FDM_ExtSales.qrEProf, 'PROFORMAT_T');
    SelectEmpty(FDM_ExtSales.qrEProfDet, 'PROFORMAR_T');

    if FDM_ExtSales.qrEProf.FieldByName('PRFDATE').AsString = '' then
    begin
      FDM_ExtSales.qrEProf.Edit;
      FDM_ExtSales.qrEProf.FieldByName('PRFDATE').AsString:= ShToMiDate(MbUserDate);
    end;

    edTotPrice.Text:= '';
    dbedProfDte.SetFocus;
  end;

  CheckButton;
end;

procedure TFrmEProf.CF_MstCalc(DataSet: TDataSet);

begin
  with FDM_ExtSales.qrETemp ,SQL do
  begin
  //
  end;

end;

procedure TFrmEProf.InitSeqCtrl;
begin
  SeqControlProf:= TCuDBGrid.Create(Self, dbgrProf, 'PROROW', True, True, False);
  SeqControlProf.AddSum(['TOTCOST']);
  SeqControlProf.SetSumControl['TOTCOST']:= edTotPrice;
  SeqControlProf.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmEProf.FormDestroy(Sender: TObject);
begin
//  SeqControlProf.Free;
end;

procedure TFrmEProf.dbgrProfColEnter(Sender: TObject);
begin
  with dbgrProf do
  begin
    if SelectedIndex = 0 then
      SelectedIndex:= 1;

    if SelectedIndex = 2 then
      SelectedIndex:= 3;

    if SelectedIndex in [5] then
      SelectedIndex:= 4;
  end;
end;

procedure TFrmEProf.dbgrProfEnter(Sender: TObject);
begin
  dbgrProf.SelectedIndex:= 1;
end;

procedure TFrmEProf.dbgrProfEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrProf.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrProf.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_ExtSales.qrEProfDet do
      begin
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;

      dbgrProf.SelectedIndex:= 3;
      Exit;
    end;
  end;
end;

procedure TFrmEProf.dbgrProfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrProfEditButtonClick(nil);
end;

procedure TFrmEProf.CF_DetCalc(DataSet: TDataSet);
begin
  if SeqControlProf.CanCalculate then
  begin
    DataSet.FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(DataSet.FieldByName('GDS_CODE').AsString);
    DataSet.FieldByName('CU_NAME').AsString:= FindArzName(DataSet.FieldByName('CU_CODE').AsString);
  end;

  with DataSet do
  begin
    if (not (FieldByName('PROQTY').Value = Null)) and (not (FieldByName('PROPRICE').Value = Null)) then
      FieldByName('TOTCOST').AsFloat:= FieldByName('PROQTY').AsFloat * FieldByName('PROPRICE').AsFloat;
  end;
end;

procedure TFrmEProf.DetBeforeDelete(DataSet: TDataSet);
begin
{  if DelFlag then
    Abort;}
end;

procedure TFrmEProf.DetBeforeInsert(DataSet: TDataSet);
begin
{  if not InsFlag then
    Abort;}
end;

procedure TFrmEProf.GdsCodeValidate(Sender: TField);
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

procedure TFrmEProf.PriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999.99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmEProf.QtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmEProf.ClearGrid;
var
  I: Integer;
begin
  DelFlag:= False;
  FDM_ExtSales.qrEProfDet.DisableControls;
  try
    with FDM_ExtSales.qrEProfDet do
    begin
      First;

      for I:= 1 to RecordCount do
      begin
        Delete;
        Next;
      end;
    end;
  finally
    FDM_ExtSales.qrEProfDet.EnableControls;
  end;

  DelFlag:= True;
end;

procedure TFrmEProf.dbedProfDteExit(Sender: TObject);
begin
  if FDM_ExtSales.qrEProf.FieldByName('PRFDATE').AsString = '' then Exit;

//Added By Niaz Karbasi
  if not MiladiDate(FDM_ExtSales.qrEProf.FieldByName('PRFDATE').AsString) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedProfDte.SetFocus;
    Exit;
  end;

//Comment By Niaz Karbasi    
{
  if not MsDateIsValid1(FDM_ExtSales.qrEProf.FieldByName('PRFDATE').AsString, False) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedProfDte.SetFocus;
    dbedProfDte.Text := MbUserDate;
    dbedProfDte.SelStart := 0;
    Exit;
  end;}
end;

procedure TFrmEProf.dbedValidityExit(Sender: TObject);
begin
  if FDM_ExtSales.qrEProf.FieldByName('PRFTIM').AsString = '' then Exit;

//Added By Niaz Karbasi
  if not MiladiDate(FDM_ExtSales.qrEProf.FieldByName('PRFTIM').AsString) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedValidity.SetFocus;
    Exit;
  end;

//Comment By Niaz Karbasi
{
  if not MsDateIsValid1(FDM_ExtSales.qrEProf.FieldByName('PRFTIM').AsString, False) then
  begin
    MbMessage('ÊÇÑíÎ ÛíÑ ãÌÇÒ', mtError, [mbOk], mbOk);
    dbedValidity.SetFocus;
    dbedValidity.Text := MbUserDate;
    dbedValidity.SelStart := 0;
    Exit;
  end;}
end;

procedure TFrmEProf.ShowDetail;
begin
  FDM_ExtSales.qrEProfDet.DisableControls;
  try
    with FDM_ExtSales.qrEProfDet, SQL do
    begin
      Clear;
      Add('SELECT   *                  ');
      Add('  FROM   PROFORMAR_T');
      Add(' WHERE   PRFNUM = :PRFNUM   ');
      Add('ORDER BY PROROW             ');
      if not IsLock then
        Add('FOR UPDATE NOWAIT');
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      CuCode:= FieldByName('CU_CODE').AsString;
    end;
  finally
    FDM_ExtSales.qrEProfDet.EnableControls;
  end;

//  edTotPrice.Text:= Trim(Format('%20.2n', [SeqControlProf.Sum['TOTCOST'] * 1.0]));
end;

procedure TFrmEProf.btnPostClick(Sender: TObject);
var
  Temp, TmpStr: string;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_ExtSales.qrEProfDet.IsEmpty then
  begin
    MbError(RecHasRel);
    dbgrProf.SetFocus;
    dbgrProf.SelectedIndex:= 1;
    Exit;
  end;

(*  if not ProCheckBeforeSave then
      Abort;*)

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_ExtSales.qrEProf do
    begin
      if State in [dsInsert] then
      begin
        Edit;
        Temp:= GetSequence('PROF_SEQ');
        FieldByName('PRFNUM').AsString:= Temp;
      end;

      Edit;
      FieldByName('PRFSTAT').AsInteger:= _intNotConfirmed;

      ApplyUpdates;
    end;

{    DelPrfDet;
    InsPrfDet;}
    FillDetailPrfNum(FDM_ExtSales.qrEProfDet);
    with FDM_ExtSales.qrEProfDet do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);

    if Temp <> '' then
    begin
      TmpStr:= ' ÇØáÇÚ ÌÏíÏ ÈÇ ÔãÇÑå'+ ' ' + Temp + ' ' + ' ËÈÊ ÑÏíÏ  ';
      MbMessage(TmpStr, mtInformation, [mbOk], mbOk);
    end;

    SelectEmpty(FDM_ExtSales.qrEProf, 'PROFORMAT_T');
    SelectEmpty(FDM_ExtSales.qrEProfDet, 'PROFORMAR_T');
    dbedProfNo.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEProf.DelPrfDet;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM PROFORMAR_T');
    Add('WHERE');
    Add('     PRFNUM = :PRFNUM');
    ParamByName('PRFNUM').AsString :=
        FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmEProf.InsPrfDet;
begin
  FDM_ExtSales.qrEProfDet.DisableControls;
  try
    FDM_ExtSales.qrEProfDet.First;

    while not FDM_ExtSales.qrEProfDet.Eof do
    begin
      with FDM_ExtSales.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;
        Add('INSERT INTO PROFORMAR_T');
        Add('  (PRFNUM, PROROW, GDS_CODE, PROQTY, PROPRICE, CU_CODE)');
        Add('VALUES');
        Add('  (:PRFNUM, :PROROW, :GDS_CODE, :PROQTY, :PROPRICE, :CU_CODE)');
        ParamByName('PRFNUM').AsString   := FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
        ParamByName('PROROW').AsString   := FDM_ExtSales.qrEProfDet.FieldByName('PROROW').AsString;
        ParamByName('GDS_CODE').AsString := FDM_ExtSales.qrEProfDet.FieldByName('GDS_CODE').AsString;
        ParamByName('PROQTY').AsString   := FDM_ExtSales.qrEProfDet.FieldByName('PROQTY').AsString;
        ParamByName('PROPRICE').AsString := FDM_ExtSales.qrEProfDet.FieldByName('PROPRICE').AsString;
        ParamByName('CU_CODE').AsString  := FDM_ExtSales.qrEProfDet.FieldByName('CU_CODE').AsString;
        ParamByName('CU_CODE').AsString  := CuCode;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_ExtSales.qrEProfDet.Next;
    end;
  finally
    FDM_ExtSales.qrEProfDet.EnableControls;
  end;
end;

procedure TFrmEProf.FOnStateChange(Sender: TObject);
begin
  with FDM_ExtSales do
    G_StateChange(qrEProf, qrEProfDet, btnPost, btnDelete);
end;

procedure TFrmEProf.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEProf.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_ExtSales.qrEProf, FDM_ExtSales.qrEProfDet, FDM);
end;

function TFrmEProf.CanModify: Boolean;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT PRFSTAT');
    Add('FROM PROFORMAT_T');
    Add('WHERE');
    Add('     PRFNUM = :PRFNUM');
    ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('PRFSTAT').AsInteger = _intNotConfirmed);
    Close;
  end;
end;

procedure TFrmEProf.DisablePrfControls;
begin
  dbedProfDte.Enabled:= False;
  dbedValidity.Enabled:= False;
  dbedPrepay.Enabled:= False;
  dbedOurRef.Enabled:= False;
  dbedDocument.Enabled:= False;
  dbedCuCode.Enabled:= False;
  SbCuCode.Enabled:= False;

  TQuery(dbgrProf.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= False;
end;

procedure TFrmEProf.EnablePrfControls;
begin
  dbedProfDte.Enabled:= True;
  dbedValidity.Enabled:= True;
  dbedPrepay.Enabled:= True;
  dbedOurRef.Enabled:= True;
  dbedDocument.Enabled:= True;

  dbedCuCode.Enabled:= True;
  SbCuCode.Enabled:= True;

  TQuery(dbgrProf.DataSource.DataSet).CachedUpdates:= True;

  btnPost.Enabled:= True;
  btnDelete.Enabled:= True;
end;

procedure TFrmEProf.btnControlClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistProf(dbedProfNo.Text) then
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
      Add('UPDATE PROFORMAT_T');
      Add('SET ');
      Add('   PRFSTAT = :PRFSTAT');
      Add('WHERE');
      Add('     PRFNUM = :PRFNUM');
      ParamByName('PRFSTAT').AsInteger:= _intConfirmed;
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= False;
  btnNoControl.Visible:= True;
  DisablePrfControls;

  dbedProfNoExit(nil);
end;

procedure TFrmEProf.btnNoControlClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistProf(dbedProfNo.Text) then
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
      Add('UPDATE PROFORMAT_T');
      Add('SET ');
      Add('   PRFSTAT = :PRFSTAT');
      Add('WHERE');
      Add('     PRFNUM = :PRFNUM');
      ParamByName('PRFSTAT').AsInteger:= _intNotConfirmed;
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnNoControl.Visible:= False;
  btnControl.Visible:= True;
  EnablePrfControls;

  dbedProfNoExit(nil);
end;

procedure TFrmEProf.CheckButton;
begin
  if (FDM_ExtSales.qrEProf.FieldByName('PRFSTAT').AsInteger = _intNotConfirmed) or
     (FDM_ExtSales.qrEProf.FieldByName('PRFSTAT').AsString = '') then
  begin
    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
    btnNoControl.Visible:= True;

    if not PrfInCustReq then
      btnNoControl.Enabled:= True
    else
      btnNoControl.Enabled:= False;
  end;
end;

procedure TFrmEProf.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEProf.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEProf, qrEProfDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEProf, 'PROFORMAT_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEProf.EnableControls;
  end;

  ShowDetail;

  if not CanModify then
    DisablePrfControls
  else
    EnablePrfControls;

  CheckButton;
end;

procedure TFrmEProf.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEProf.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEProf, qrEProfDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEProf, 'PROFORMAT_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEProf.EnableControls;
  end;

  ShowDetail;

  if not CanModify then
    DisablePrfControls
  else
    EnablePrfControls;

  CheckButton;
end;

procedure TFrmEProf.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEProf.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEProf, qrEProfDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEProf, 'PROFORMAT_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEProf.EnableControls;
  end;

  ShowDetail;

  if not CanModify then
    DisablePrfControls
  else
    EnablePrfControls;

  CheckButton;
end;

procedure TFrmEProf.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEProf.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEProf, qrEProfDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEProf, 'PROFORMAT_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEProf.EnableControls;
  end;

  ShowDetail;

  if not CanModify then
    DisablePrfControls
  else
    EnablePrfControls;

  CheckButton;
end;

function TFrmEProf.PrfInCustReq: Boolean;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT ORDNO');
      Add('FROM ORDERTIT_T');
      Add('WHERE');
      Add('     PRFNUM = :PRFNUM');
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;

      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmEProf.sbListClick(Sender: TObject);
var
  Code: string;
begin
  if HelpProf(Code) then
  begin
    dbedProfNo.SetFocus;
    with FDM_ExtSales.qrEProf do
    begin
      Edit;
      FieldByName('PRFNUM').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEProf.dbedProfNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

procedure TFrmEProf.btnDeleteClick(Sender: TObject);
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

    Code:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM PROFORMAR_T');
          Add('WHERE');
          Add('     PRFNUM = :PRFNUM');
          ParamByName('PRFNUM').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM PROFORMAT_T');
          Add('WHERE');
          Add('     PRFNUM = :PRFNUM');
          ParamByName('PRFNUM').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_ExtSales.qrEProf, 'PROFORMAT_T');
        SelectEmpty(FDM_ExtSales.qrEProfDet, 'PROFORMAR_T');
        dbedProfNo.SetFocus;
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

function TFrmEProf.ProCheckBeforeSave: Boolean;
begin
  {Result:= True;
  with FDM_ExtSales.qrEProf do
  begin
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
      dbedCustNo.SetFocus;
      Result:= False;
      Exit;
    end;
    if FieldByName('PRJCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedPrjCode.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CU_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCuCode.SetFocus;
      Result:= False;
      Exit;
    end;
  end;}
{
  with FDM_ExtSales.qrEProfDet do
  begin
    DisableControls;
    try
      First;
      while not EOF do
      begin
        if FieldByName('GDS_CODE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrProf.SetFocus;
          dbgrProf.SelectedIndex:= 1;
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

procedure TFrmEProf.CalcSum(Sender: TObject);
begin
//  edTotPrice.Text:= Trim(Format('%20.2n', [SeqControlProf.Sum['TOTCOST'] * 1.0]));
end;

procedure TFrmEProf.StatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNotConfirmed : Text:= _stNotConfirmed;
    _intConfirmed    : Text:= _stConfirmed;
  end;
end;

function TFrmEProf.IsCurrency: Boolean;
begin
  Result:= not (FDM_ExtSales.qrEProfDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmEProf.DetOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CU_CODE').AsString := CuCode;
  //DataSet.FieldByName('PRFNUM').AsString  := FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
end;

procedure TFrmEProf.DetBeforePost(DataSet: TDataSet);
begin
  if not PostFlag then
    Exit;
    
  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrProf.SetFocus;
      dbgrProf.SelectedField:= FieldByName('GDS_CODE');
      Abort;
    end;
  end;
  
end;

procedure TFrmEProf.GdsCodeChange(Sender: TField);
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
    Sender.DataSet.FieldByName('PROPRICE').AsFloat:= Rate;
  end;
(* Vakili 83-09-28 *)
end;

procedure TFrmEProf.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

//comment by eskandari
procedure TFrmEProf.FillDetailPrfNum(DataSet: TDataSet);
var
  FBeforeDelete,
  FBeforeInsert,
  FOnNewRecord,
  FAfterOpen,
  FBeforePost: TDataSetNotifyEvent;
begin
  FBeforeDelete := DataSet.BeforeDelete;
  FBeforeInsert := DataSet.BeforeInsert;
  FOnNewRecord  := DataSet.OnNewRecord;
  FAfterOpen    := DataSet.AfterOpen;
  FBeforePost   := DataSet.BeforePost;

  DataSet.BeforeDelete := nil;
  DataSet.BeforeInsert := nil;
  DataSet.OnNewRecord  := nil;
  DataSet.AfterOpen    := nil;
  DataSet.BeforePost   := nil;

  DataSet.DisableControls;
  try
    with DataSet do
    begin
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;

        Next;
      end;
    end;
  finally
    DataSet.BeforeDelete := FBeforeDelete;
    DataSet.BeforeInsert := FBeforeInsert;
    DataSet.OnNewRecord  := FOnNewRecord;
    DataSet.AfterOpen    := FAfterOpen;
    DataSet.BeforePost   := FBeforePost;

    DataSet.EnableControls;
  end;
end;

procedure TFrmEProf.SbcustClick(Sender: TObject);
var
Code : String;
begin
  if helpcustomer(Code) then
  begin
    dbedCustNo.SetFocus;
    with FDM_ExtSales.qrEProf do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:=Code;
    end;
    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TFrmEProf.SbPrjClick(Sender: TObject);
var
  Code:String;
begin
  if helpprj(Code) then
  begin
    with FDM_ExtSales.qrEProf do
    begin
      Edit;
      FieldByName('PRJCODE').AsString :=Code;
    end;
    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TFrmEProf.dbedCustNoExit(Sender: TObject);
begin
  with FDM_ExtSales.qrEProf do
  begin
    if not (FieldByName('CUSTNO').AsString = '') then
    begin
      if not ExistCustomer(FieldByName('CUSTNO').AsString) then
      begin
        MbError(InvalidCustCode);
        dbedcustno.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmEProf.dbedPrjCodeExit(Sender: TObject);
begin
  with FDM_ExtSales.qrEProf do
  begin
    if not (FieldByName('PRJCODE').AsString = '') then
    begin
      if not ExistProject(FieldByName('PRJCODE').AsString) then
      begin
        MbError(InvalidProject);
        dbedPrjCode.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmEProf.CF_MasterCalc(DataSet: TDataSet);
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    if not (DataSet.FieldByName('CUSTNO').Text = '') then
    begin
      Clear;
      Add('SELECT  C.COUNTRY_NAME                            ');
      Add('  FROM  IDCUSTOMER_T IC, COUNTRY C');
      Add('  WHERE CUSTNO = :PCUSTNO                         ');
      Add('  AND   IC.COUNTERY_CODE = C.COUNTERY_CODE        ');
      ParamByName('PCUSTNO').AsString:= DataSet.FieldByName('CUSTNO').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      DataSet.FieldByName('COUNTRY_NAME').AsString:= FieldByName('COUNTRY_NAME').AsString;
      Clear;
 Add('SELECT CUSTNAME');
 Add('FROM IDCUSTOMER_T');
 Add('WHERE CUSTNO = :C_NO');
 ParamByName('C_NO').AsString :=DataSet.FIELDBYNAME('CUSTNO').AsString;
 SQL:=MbSqlConvert(SQL);
 OPEN;

 DataSet.FieldByName('CF_CUSTNAME').AsString := FIELDBYNAME('CUSTNAME').AsString;
    end;
    if not (DataSet.FieldByName('PRJCODE').Text = '') then
    begin
    Clear;
 Add('SELECT PRJDESC');
 Add('FROM PROJECT_T');
 Add('WHERE PRJCODE = :P_CODE');
 ParamByName('P_CODE').AsString := DataSet.FIELDBYNAME('PRJCODE').AsString;
 SQL:=MbSqlConvert(SQL);
 Open;

 DataSet.FieldByName('CF_PRJDESC').AsString:= FIELDBYNAME('PRJDESC').AsString;
  end;
  end;
end;

procedure TFrmEProf.dbedCuCodeExit(Sender: TObject);
var
  BM: TBookMark;
  Code:string;
begin
  if dbedCuCode.Text = '' then
  begin
    MbError(NotDataComplete);
    dbedCuCode.SetFocus;
    Exit;
  end;

  if not ExistArz(dbedCuCode.Text) then
  begin
    MbError(InvalidArz);
    dbedCuCode.SetFocus;
    Exit;
  end;

  CuCode:= FDM_ExtSales.qrEProfDet.FieldByName('CU_CODE').AsString;

  {if TQuery(dbgrProf.DataSource.DataSet).CachedUpdates = False then Exit;
  if FDM_ExtSales.qrEProfDet.IsEmpty then Exit;
  if MyTemp = FDM_ExtSales.qrEProfDet.FieldByName('CU_CODE').AsString then Exit;

  with FDM_ExtSales.qrEProfDet do
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
  end; }
end;

procedure TFrmEProf.dbedCuCodeEnter(Sender: TObject);
begin
  CuCode:= '';
  MyTemp:= FDM_ExtSales.qrEProfDet.FieldByName('CU_CODE').AsString;
  if (Sender as TDBEdit).DataSource.DataSet.IsEmpty then
     (Sender as TDBEdit).DataSource.DataSet.Insert;
end;

procedure TFrmEProf.SbCuCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpArz(Code) then
  begin
    dbedCuCode.SetFocus;
    with FDM_ExtSales.qrEProfDet do
    begin
      Edit;
      FieldByName('CU_CODE').AsString:= Code;
    end;
  end;
end;

procedure TFrmEProf.CuCodeValidate(Sender: TField);
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

procedure TFrmEProf.Panel1Exit(Sender: TObject);
begin
  with FDM_ExtSales.qrEProf do
  begin
    if FieldByName('PRFDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedProfDte.SetFocus;
      //Result:= False;
      Exit;
    end;

    if FieldByName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustNo.SetFocus;
      //Result:= False;
      Exit;
    end;

    if FieldByName('PRJCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedPrjCode.SetFocus;
      //Result:= False;
      Exit;
    end;
  end;
end;

procedure TFrmEProf.bbPreviewClick(Sender: TObject);
begin
  if FDM_ExtSales.qrEProf.FieldByName('PRFSTAT').AsInteger =_intFSConfirmed then
  begin
   ShowDetail2;
    with FDM_ExtSales.qrRProf do
    begin
      if IsEmpty then
      begin
        MbPrompt(NoReport);
        Exit;
      end;
      if FileExists(ReportPath+'RPROF.RTM') then
      begin
        ppReportex.Template.FileName:= ReportPath+'RPROF.RTM';
        ppReportex.SaveAsTemplate:= True;
        ppReportex.Template.LoadFromFile;
      end;
      if Sender = bbPreview then
        ppReportex.DeviceType := 'Screen'
      else
        ppReportex.DeviceType := 'Printer';
         ppReportex.Print;
       end;
      end
  else
  begin
    MbError(CannotPrint);
    Exit;
  end;
end;

procedure TFrmEProf.spDesignClick(Sender: TObject);
begin
  ppDesignerEx.Report.Template.FileName:= ReportPath+'RPROF.RTM';
  if FileExists(ReportPath+'RPROF.RTM') then
  begin
    ppDesignerEx.Report.SaveAsTemplate:= True;
    ppDesignerEx.Report.Template.LoadFromFile;
  end;
  ppDesignerEx.ShowModal;

end;

procedure TFrmEProf.ShowDetail2;
begin
    with FDM_ExtSales.qrRProf, SQL do
    begin
      Clear;
      Add('SELECT   *                  ');
      Add('  FROM   PROFORMAR_T');
      Add(' WHERE   PRFNUM = :PRFNUM   ');
      Add('ORDER BY PROROW             ');
      ParamByName('PRFNUM').AsString:= FDM_ExtSales.qrEProf.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      CuCode:= FieldByName('CU_CODE').AsString;
    end;

end;

procedure TFrmEProf.CF_RepCalc(DataSet: TDataSet);
begin
    DataSet.FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(DataSet.FieldByName('GDS_CODE').AsString);
end;

end.
