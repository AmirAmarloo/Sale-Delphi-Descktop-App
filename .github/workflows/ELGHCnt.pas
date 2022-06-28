{Rahmani}

{$I Direct.Inc}
unit ELGHCnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, EMcnt,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,DMUContract,
  Menus,DbTables, ppEndUsr, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppBands,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, {$I MbUses.Inc};

type
  TFrmELGHCnt = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    BitBtnPost: TBitBtn;
    BitBtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    DbedCmplCode: TDBEdit;
    DbedCustName: TDBEdit;
    DbedRisrl: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    BtnDisConfirm: TBitBtn;
    BtnConfirm: TBitBtn;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DbedFUnt: TDBEdit;
    DbedPrj: TDBEdit;
    DbedLUnt: TDBEdit;
    DbgrComplement: TDBGrid;
    Label1: TLabel;
    Label3: TLabel;
    DbedDoc: TDBEdit;
    Label2: TLabel;
    dbedCntCode: TDBEdit;
    Label5: TLabel;
    DbedCmpDte: TDBEdit;
    DbedDte: TDBEdit;
    EdCntDte: TMaskEdit;
    DbedState: TDBEdit;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    spDesign: TSpeedButton;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    ppReportFCnt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText14: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape4: TppShape;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape8: TppShape;
    ppLine24: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine25: TppLine;
    ppLabel32: TppLabel;
    ppLine26: TppLine;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppBDEPipelineCnt: TppBDEPipeline;
    ppDesignerFCnt: TppDesigner;
    ppLabel16: TppLabel;
    ppDBText2: TppDBText;
    ppLine7: TppLine;
    ppLabel33: TppLabel;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppLine27: TppLine;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnPostClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure DbedCmpDteExit(Sender: TObject);
    procedure BtnDisConfirmClick(Sender: TObject);
    procedure BtnConfirmClick(Sender: TObject);
    procedure DbgrComplementColEnter(Sender: TObject);
    procedure DbgrComplementEnter(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
  private
    { Private declarations }
  FDM_Contract: TDM_Contract;
  ParentEMcnt : TFrmEMcnt;
  IsLock, Internal, FlagEvent : Boolean;
  CustCode, PrjCode, CNTDTE : String;
  CntCode, RirCode : String;

  IrirType : Integer;

  Procedure DsEComplementStateChange(Sender: TObject);
  procedure qrEComplement_MCalcFields(DataSet: TDataSet);
  procedure qrEComplement_DCalcFields(DataSet: TDataSet);
  procedure qrBeforeDelete(DataSet: TDataSet);
  procedure qrAfterDelete(DataSet: TDataSet);
  procedure qrEComplement_DCMPLYEARValidate(Sender: TField);
  procedure qrEComplement_DCMPLDAYValidate(Sender: TField);
  procedure qrEComplement_DBeforeInsert(DataSet: TDataSet);


  Function  MasterCtrlInfo : Boolean;
  Function  CtrlInformation : Boolean;
  Procedure PostRecord;
  Procedure DeleteRecord;
  Procedure DeleteDetail;
  Procedure FindCustPrj(CNTCOD : String);
  Procedure SelectDetailRow;
  Procedure SetBtnConfirm;
  Procedure EnableComponent(Flag : Boolean);
  Procedure UpDateState(BtnType : Integer);
  Function  Factor: Boolean;
  procedure CalcInfo(DataSet: TDataSet);
  function  SelectReportRecord:Boolean;
  Procedure ShowReport(Sender :TObject);
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmELGHCnt: TFrmELGHCnt;

implementation

uses MainUnit, Utility,UMessage,Functions, Help, Vars, DateUtil;

{$R *.DFM}

Procedure TFrmELGHCnt.DsEComplementStateChange(Sender: TObject);
begin
  G_StateChange(FDM_Contract.qrEComplement_M, FDM_Contract.qrEComplement_D, BitBtnPost, BitBtnDelete);
end;

procedure TFrmELGHCnt.qrEComplement_MCalcFields(DataSet: TDataSet);
begin
  FindCustPrj(Dataset.FieldByName('CNTCODE').AsString);
  Dataset.FieldByName('CF_CntDte').AsString   := CNTDTE;
  Dataset.FieldByName('CF_CustName').AsString := FindCusName(CustCode);
  Dataset.FieldByName('CF_PrjName').AsString := FindProjectDesc(PrjCode);
end;

procedure TFrmELGHCnt.qrEComplement_DCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('CF_Gdsname').AsString := FindGdsFDesc(Dataset.FieldByName('GDS_CODE').AsString);
  Dataset.FieldByName('CF_LatinName').AsString := FindGdsLDesc(Dataset.FieldByName('GDS_CODE').AsString);
end;

procedure TFrmELGHCnt.qrBeforeDelete(DataSet: TDataSet);
begin
  Internal := True;
end;

procedure TFrmELGHCnt.qrAfterDelete(DataSet: TDataSet);
begin
  If DataSet = FDM_Contract.qrEComplement_D then
    BitBtnPost.Enabled := (MabnaInfo.HasAccess(BitBtnDelete.Tag));
  Internal := False;
end;

procedure TFrmELGHCnt.qrEComplement_DCMPLYEARValidate(Sender: TField);
begin
  If Sender.AsString = '' Then
    Exit;
  If Sender.AsFloat > 99 Then
  begin
    MbError(RangeErr);
    Abort;
  end
  else If Copy(CNTDTE,0,4) > sender.AsString Then
  begin
    MbError('”«· ‰»«Ìœ «“ ”«· «·Õ«ﬁÌÂ ﬂÊçﬂ — »«‘œ');
    Abort;
  end;
end;

procedure TFrmELGHCnt.qrEComplement_DBeforeInsert(DataSet: TDataSet);
begin
  If FlagEvent Then
    Abort;
end;

procedure TFrmELGHCnt.qrEComplement_DCMPLDAYValidate(Sender: TField);
begin
  If Sender.AsString = '' Then
    Exit;
  If Sender.AsFloat > 99 Then
  begin
    MbError(RangeErr);
    Abort;
  end;
  If Sender.AsString < '1' Then
  begin
    MbError(RangeErr);
    Abort;
  end;
  If (FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsInteger < 7) And
     (FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsInteger >= 1) Then
    If (Sender.AsInteger > 31) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
  If (FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsInteger <= 11) And
     (FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsInteger > 6) Then
    If (Sender.AsInteger > 30) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
  If (FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsInteger = 12) Then
    If (MsIsLeapYear(FDM_Contract.qrEComplement_D.FieldByName('CMPLYEAR').AsInteger,True)) Then
    begin
      If (Sender.AsInteger > 31) Then
      begin
        MbError(RangeErr);
        Abort;
      end;
    end
    else If (Sender.AsInteger > 30) Then
      begin
        MbError(RangeErr);
        Abort;
      end;
end;

Function TFrmELGHCnt.MasterCtrlInfo : Boolean;
begin
  Result := True;
  If DbedCmplCode.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCmplCode.SetFocus;
    Result := False;
  end
  else If DbedCmpDte.Field.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCmpDte.SetFocus;
    Result := False;
  end;
end;

Function  TFrmELGHCnt.CtrlInformation : Boolean;
begin
  Result := True;
  With FDM_Contract.qrEComplement_D do
  begin
    If FieldByName('CMPLNUM').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrComplement.SetFocus;
      DbgrComplement.SelectedField := FieldByName('CMPLNUM');
      Result := False;
    end
    else If FieldByName('CMPLYEAR').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrComplement.SetFocus;
      DbgrComplement.SelectedField := FieldByName('CMPLYEAR');
      Result := False;
    end
    else If FieldByName('CMPLMON').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrComplement.SetFocus;
      DbgrComplement.SelectedField := FieldByName('CMPLMON');
      Result := False;
    end
    else If FieldByName('CMPLDAY').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrComplement.SetFocus;
      DbgrComplement.SelectedField := FieldByName('CMPLDAY');
      Result := False;
    end
  end;
end;

Procedure TFrmELGHCnt.PostRecord;
begin
  If IsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
    With FDM_Contract Do
    begin
      DeleteDetail;
      qrEComplement_M.Edit;
      qrEComplement_M.FieldByName('CMPSTATE').AsInteger := _DisConfirmVal;
      qrEComplement_M.ApplyUpdates;
      FDM_Contract.qrEComplement_D.DisableControls;
      Try
        FDM_Contract.qrEComplement_D.First;
        While Not FDM_Contract.qrEComplement_D.Eof do
        begin
          with FDM_Contract.qrETemp, SQL do
          begin
            DataBaseName:= MbDB.DataBaseName[FDB];
            Clear;
            Add('INSERT INTO '+SchemaName+'COMPLEMENR_T');
            Add('  (CNTCODE, RISRL, CMPLSEQ, GDS_CODE, CMPLYEAR, CMPLMON, CMPLDAY, CMPLNUM)');
            Add('VALUES');
            Add('  (:CNTCODE, :RISRL, :CMPLSEQ, :GDS_CODE, :CMPLYEAR, :CMPLMON, :CMPLDAY, :CMPLNUM)');
            ParamByName('CNTCODE').AsString  := FDM_Contract.qrEComplement_D.FieldByName('CNTCODE').AsString;
            ParamByName('RISRL').AsString   := FDM_Contract.qrEComplement_D.FieldByName('RISRL').AsString;
            ParamByName('CMPLSEQ').AsString := FDM_Contract.qrEComplement_D.FieldByName('CMPLSEQ').AsString;
            ParamByName('GDS_CODE').AsString   := FDM_Contract.qrEComplement_D.FieldByName('GDS_CODE').AsString;
            ParamByName('CMPLYEAR').AsString := FDM_Contract.qrEComplement_D.FieldByName('CMPLYEAR').AsString;
            ParamByName('CMPLMON').AsString  := FDM_Contract.qrEComplement_D.FieldByName('CMPLMON').AsString;
            ParamByName('CMPLDAY').AsString  := FDM_Contract.qrEComplement_D.FieldByName('CMPLDAY').AsString;
            ParamByName('CMPLNUM').AsString  := FDM_Contract.qrEComplement_D.FieldByName('CMPLNUM').AsString;
            SQL := MbSqlConvert(SQL);
            ExecSql;
          end;
          FDM_Contract.qrEComplement_D.Next;
        end;
      finally
        FDM_Contract.qrEComplement_D.EnableControls;
      end;
      MbDB.Commit(FDb);
{      SelectEmpty(FDM_Contract.qrEComplement_D,'RIDERDTL_T');
      SelectEmpty(FDM_Contract.qrEComplement_M,'RIDER_T');}
      DbedCmplCode.SetFocus;
      BitBtnPost.Enabled := False;
    end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      DbedCmplCode.SetFocus;
     end;
  end;
end;

Procedure TFrmELGHCnt.DeleteRecord;
begin
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
    With FDM_Contract,qrETemp  do
    begin
      DeleteDetail;
      qrEComplement_M.Delete;
      qrEComplement_M.ApplyUpdates;
      MbDB.Commit(FDb);
      SelectEmpty(FDM_Contract.qrEComplement_D,'COMPLEMENR_T');
      SelectEmpty(FDM_Contract.qrEComplement_M,'COMPLEMENT_T');
      qrEComplement_M.Edit;
      qrEComplement_M.FieldByName('CNTCODE').AsString := CntCode;
      qrEComplement_M.FieldByName('RISRL').AsString := RirCode;
      SelectDetailRow;
      DbedCmplCode.SetFocus;
    end;
  Except on e: Exception Do
   begin
     MbDB.RollBack(FDb);
     DbedCmplCode.SetFocus;
   end;
  end;
end;

Procedure TFrmELGHCnt.DeleteDetail;
begin
  With FDM_Contract,qrETemp  do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM '+SchemaName+'COMPLEMENR_T ');
    Sql.Add('WHERE  CNTCODE = :CNTCODE              ');
    Sql.Add(' AND   RISRL   = :RISRL                ');
    ParamByName('CNTCODE').AsString := CntCode;
    ParamByName('RISRL').AsString := RirCode;
    Sql := MbSqlConvert(Sql);
    ExecSQL;
  end;
end;

Function TFrmELGHCnt.Factor: Boolean;
begin
  With FDM_Contract.qrETemp,Sql do
  begin
    Close;
    Clear;
    Add('SELECT CNTCODE, RISRL           ');
    Add('  FROM '+SchemaName+'ITEMFACT_T ');
    Add(' WHERE CNTCODE = :CNTCODE       ');
    Add('   AND RISRL  = :RISRL          ');
    ParamByName('CNTCODE').AsString := CntCode;
    ParamByName('RISRL').AsString := RirCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    if IsEmpty then
    begin
      Close;
      Clear;
      Add('SELECT CNTCODE, RISRL              ');
      Add('  FROM '+SchemaName+'INVOICEPRDT_T ');
      Add(' WHERE CNTCODE = :CNTCODE          ');
      Add('   AND RISRL  = :RISRL             ');
      ParamByName('CNTCODE').AsString := CntCode;
      ParamByName('RISRL').AsString := RirCode;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result := Not IsEmpty;
    end
    else
      Result := Not IsEmpty;
    (*If IrirType = 2 Then //œ«Œ·Ì
    begin
      Add('SELECT CNTCODE, RISRL           ');
      Add('  FROM '+SchemaName+'ITEMFACT_T ');
      Add(' WHERE CNTCODE = :CNTCODE       ');
      Add('   AND RISRL  = :RISRL          ');
      ParamByName('CNTCODE').AsString := CntCode;
      ParamByName('RISRL').AsString := RirCode;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result := Not IsEmpty;
    end
    else If IrirType = 1 Then //Œ«—ÃÌ
    begin
      Add('SELECT CNTCODE, RISRL              ');
      Add('  FROM '+SchemaName+'INVOICEPRDT_T ');
      Add(' WHERE CNTCODE = :CNTCODE          ');
      Add('   AND RISRL  = :RISRL             ');
      ParamByName('CNTCODE').AsString := CntCode;
      ParamByName('RISRL').AsString := RirCode;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result := Not IsEmpty;
    end;*)
  end;
end;

Procedure TFrmELGHCnt.UpDateState(BtnType: Integer);
begin
  If BitBtnPost.Enabled Then
{  If (FDM_Contract.qrEComplement_M.Modified) or (FDM_Contract.qrEComplement_M.UpdatesPending) or
     (FDM_Contract.qrEComplement_M.State in dsEditModes) Or (FDM_Contract.qrEComplement_D.Modified) or
     (FDM_Contract.qrEComplement_D.UpdatesPending)or (FDM_Contract.qrEComplement_D.State in dsEditModes) Then
}  begin
    MbError(SaveData);
    BitBtnPost.SetFocus;
    Exit;
  end
  else
  begin
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    Try
    With FDM_Contract Do
    begin
      If Not (qrEComplement_M.State in dsEditModes) then
        qrEComplement_M.Edit;
      qrEComplement_M.FieldByName('CMPSTATE').AsInteger := BtnType;
      qrEComplement_M.ApplyUpdates;
      MbDB.Commit(FDb);
      AutoSelect(FDB, FDM_Contract.qrEComplement_M, 'COMPLEMENT_T', 0, IsLock, 'CNTCODE = '''+ CntCode +''' AND RISRL = ' + RirCode);
      AutoSelect(FDB, FDM_Contract.qrEComplement_D, 'COMPLEMENR_T', 0, IsLock, 'CNTCODE = '''+ CntCode +''' AND RISRL = ' + RirCode);
    end;
    Except on e: Exception Do
       begin
        MbDB.RollBack(FDb);
        MbError(ExpHandleM(E));
       end;
    end;
  end;
end;

Procedure TFrmELGHCnt.EnableComponent(Flag : Boolean);
begin
  DbedCmplCode.Enabled := Flag;
  DbedCmpDte.Enabled := Flag;
  DbedFUnt.Enabled := Flag;
  DbedLUnt.Enabled := Flag;
  DbedDoc.Enabled := Flag;  
end;

Procedure TFrmELGHCnt.SetBtnConfirm;
begin
  If FDM_Contract.qrEComplement_M.FieldByName('CMPSTATE').AsInteger = _ConfirmVal Then
  begin
    EnableComponent(False);
    DbgrComplement.ReadOnly := True;
    BtnConfirm.Visible  := False;
    BtnDisConfirm.Visible  := True;
    If Factor Then
      BtnDisConfirm.Enabled := False;
  end
  else
  begin
    EnableComponent(True);
    DbgrComplement.ReadOnly := False;
    BtnConfirm.Visible  := True;
    BtnDisConfirm.Visible  := False;
  end;
end;

Procedure TFrmELGHCnt.SelectDetailRow;
begin
  FlagEvent := False;
  Try
    With FDM_Contract.qrETemp,Sql do
    begin
      Close;
      Clear;
      Add('SELECT CNTCODE, RISRL, RDROW,   ');
      Add('       GDS_CODE, RDQTY          ');
      Add('  FROM '+SchemaName+'RIDERDTL_T ');
      Add(' WHERE CNTCODE = :CNTCODE       ');
      Add('   AND RISRL   = :RISRL         ');
      ParamByName('CNTCODE').AsString:= CntCode;
      ParamByName('RISRL').AsString:= RirCode;
      SQL:= MbSqlConvert(SQL);
      Open;
      First;
      FDM_Contract.qrEComplement_D.DisableControls;
      While Not EOF do
      begin
        FDM_Contract.qrEComplement_D.Insert;
        FDM_Contract.qrEComplement_D.FieldByName('CNTCODE').AsString:= FieldByName('CNTCODE').AsString;
        FDM_Contract.qrEComplement_D.FieldByName('RISRL').AsString:= FieldByName('RISRL').AsString;
        FDM_Contract.qrEComplement_D.FieldByName('GDS_CODE').AsString:= FieldByName('GDS_CODE').AsString;
        FDM_Contract.qrEComplement_D.FieldByName('CMPLNUM').AsString:= FieldByName('RDQTY').AsString;
        FDM_Contract.qrEComplement_D.FieldByName('CMPLSEQ').AsString:= FieldByName('RDROW').AsString;
        Next;
      end;
    end;
  Finally
    FDM_Contract.qrEComplement_D.First;
    FDM_Contract.qrEComplement_D.EnableControls;
    FlagEvent := True;    
  end;
end;

Procedure TFrmELGHCnt.FindCustPrj(CNTCOD : String);
begin
  With FDM_Contract.qrETemp,Sql do
  begin
    Close;
    Clear;
    Add('SELECT  CUSTNO CUSTNO, PRJCODE PRJCODE, CNTDTE');
    Add('  FROM  ' + SchemaName + 'IDCONTACT_T IDCON   ');
    Add(' WHERE  IDCON.CNTCODE = :CNTCODE              ');
    //Commented By Eskandari
    (*Add('SELECT  PRF.CUSTNO CUSTNO, PRF.PRJCODE PRJCODE, ');
    Add('        IDCON.CNTDTE CNTDTE, 1 ITYPE            ');
    Add('  FROM  ' + SchemaName + 'IDCONTACT_T IDCON,    ');
    Add('        ' + SchemaName + 'PROFORMAT_T PRF       ');
    Add(' WHERE  IDCON.CNTCODE = :CNTCODE                ');
    Add('  AND   IDCON.PRFNUM = PRF.PRFNUM               ');*)
    SQL:= MbSqlConvert(SQL);
    ParamByName('CNTCODE').AsString := CNTCOD;
    Open;
    PrjCode  := FieldByName('PRJCODE').AsString;
    CustCode := FieldByName('CUSTNO').AsString;
    CNTDTE   := FieldByName('CNTDTE').AsString;
    //Commented By Eskandari
    //IrirType := FieldByName('ITYPE').AsInteger;
  end;
end;

procedure TFrmELGHCnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmELGHCnt.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmELGHCnt.SpeedButton2Click(Sender: TObject);
begin
{ MainForm.acHGHCnt.Execute;
 FrmHGHCnt.ShowModal;}
end;

procedure TFrmELGHCnt.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmELGHCnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MbFM.ReleaseFM(FFrm);
  Action:= caFree;
end;

procedure TFrmELGHCnt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := CheckChanges(FDM_Contract.qrEComplement_M, FDM_Contract.qrEComplement_D,FDM);
end;

procedure TFrmELGHCnt.FormCreate(Sender: TObject);
begin
  FDM_Contract := TDM_Contract(MbDm.GetDM(FDM));
  ParentEMcnt := TFrmEMcnt(MbFm.GetFm(ParentFrm));
  SetFormColor(Self,_FormColor);
  SetStatusBar(stbMain);
  With FDM_Contract Do
  begin
    DsEComplement_M.OnStateChange  := Nil;
    DsEComplement_M.OnStateChange  := DsEComplementStateChange;
    qrEComplement_M.OnCalcFields   := qrEComplement_MCalcFields;

    DsEComplement_D.OnStateChange := Nil;
    DsEComplement_D.OnStateChange := DsEComplementStateChange;
    qrEComplement_D.OnCalcFields  := qrEComplement_DCalcFields;
    qrEComplement_D.BeforeDelete  := qrBeforeDelete;
    qrEComplement_D.AfterDelete   := qrAfterDelete;
    qrEComplement_DCMPLYEAR.OnValidate := qrEComplement_DCMPLYEARValidate;
    qrEComplement_DCMPLDAY.OnValidate := qrEComplement_DCMPLDAYValidate;
    qrEComplement_D.BeforeInsert  := qrEComplement_DBeforeInsert;

    FDM_Contract.qrRPrintLGHCnt.OnCalcFields:= CalcInfo;
  end;
end;

procedure TFrmELGHCnt.FormShow(Sender: TObject);
begin
  IsLock := False;
  FlagEvent := False;
  If MBFM.GetFM(ParentFrm) is TfrmEMcnt then
  begin
    CntCode := (MBFM.GetFM(ParentFrm) as TfrmEMcnt).PrnCntCode;
    RirCode := (MBFM.GetFM(ParentFrm) as TfrmEMcnt).PrnRirCode;
    EdCntDte.Text := (MBFM.GetFM(ParentFrm) as TfrmEMcnt).PrnDteCode;
  end;
  If Not AutoSelect(FDB, FDM_Contract.qrEComplement_M,'COMPLEMENT_T', 0, IsLock, 'RISRL = ' + RirCode +' AND CNTCODE = ''' + CntCode +'''') Then
  begin
    AutoSelect(FDB, FDM_Contract.qrEComplement_D,'COMPLEMENR_T', 0, IsLock, 'RISRL = ' + RirCode +' AND CNTCODE = ''' + CntCode+ '''');
    SetBtnConfirm;
  end
  else
  begin
    SelectEmpty(FDM_Contract.qrEComplement_M,'COMPLEMENT_T');
    FDM_Contract.qrEComplement_M.Edit;
    FDM_Contract.qrEComplement_M.FieldByName('CNTCODE').AsString := CntCode;
    FDM_Contract.qrEComplement_M.FieldByName('RISRL').AsString := RirCode;
    SelectEmpty(FDM_Contract.qrEComplement_D,'COMPLEMENR_T');
    SelectDetailRow;
    BtnConfirm.Visible  := True;
    BtnDisConfirm.Visible  := False;
  end;
{  SelectEmpty(FDM_Contract.qrEComplement_D,'COMPLEMENR_T');
  SelectEmpty(FDM_Contract.qrEComplement_M,'COMPLEMENT_T');}
  FlagEvent := True;
end;

procedure TFrmELGHCnt.BitBtnPostClick(Sender: TObject);
begin
  If Not MasterCtrlInfo Then
    Exit;
  If Not CtrlInformation Then
    Exit;
  PostRecord;
end;

procedure TFrmELGHCnt.BitBtnDeleteClick(Sender: TObject);
begin
  If FDM_Contract.qrEComplement_M.FieldByName('CMPSTATE').AsInteger = _ConfirmVal Then
  begin
    MbError(NoDelete);
    Exit;
  end;
  If IsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If MbMessage(DeleteConfirm ,mtWarning ,[mbYes,mbNo], mbNo)= mrYes then
    DeleteRecord;
end;

procedure TFrmELGHCnt.DbedCmpDteExit(Sender: TObject);
begin
  If DbedCmpDte.Field.Text = '' Then
    Exit;
  If Not MsDateIsValid1(DbedCmpDte.Text, False) Then
  begin
    MbError(InvalidDate);
    DbedCmpDte.SetFocus;
    Exit;
  end;
  If DbedCmpDte.Field.Text < CNTDTE Then
  begin
    MbError(' «—ÌŒ ﬁÿ⁄Ì  ‰»«Ìœ «“  «—ÌŒ «·Õ«ﬁÌÂ ﬂÊçﬂ — »«‘œ');
    DbedCmpDte.SetFocus;
    Exit;
  end;
end;

procedure TFrmELGHCnt.BtnDisConfirmClick(Sender: TObject);
begin
  UpDateState(_DisConfirmVal);
  SetBtnConfirm;
end;

procedure TFrmELGHCnt.BtnConfirmClick(Sender: TObject);
begin
  UpDateState(_ConfirmVal);
  SetBtnConfirm;
  If Factor Then
    BtnDisConfirm.Enabled := False;
end;

procedure TFrmELGHCnt.DbgrComplementColEnter(Sender: TObject);
begin
  If DbgrComplement.SelectedIndex In [0,1,2,3] Then
    DbgrComplement.SelectedIndex:= 4;
end;

procedure TFrmELGHCnt.DbgrComplementEnter(Sender: TObject);
begin
    DbgrComplement.SelectedIndex:= 4;
end;

procedure TFrmELGHCnt.bbPreviewClick(Sender: TObject);
begin
  ShowReport(bbPreview);
end;

procedure TFrmELGHCnt.bbPrintClick(Sender: TObject);
begin
  ShowReport(bbPreview);
end;

procedure TFrmELGHCnt.spDesignClick(Sender: TObject);
begin
  ppDesignerFCnt.Report.Template.FileName:= ReportPath+'RLGHCNT.RTM';
  if FileExists(ReportPath+'RLGHCNT.RTM') then
  begin
    ppDesignerFCnt.Report.SaveAsTemplate:= True;
    ppDesignerFCnt.Report.Template.LoadFromFile;
  end;
  ppDesignerFCnt.ShowModal;
end;

procedure TFrmELGHCnt.CalcInfo(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString  := FDM_Contract.qrEComplement_M.FieldByName('CF_CustName').AsString;
  DataSet.FieldByName('CF_PRJNAME').AsString   := FDM_Contract.qrEComplement_M.FieldByName('CF_PrjName').AsString;
  DataSet.FieldByName('CF_GHCNTDTE').AsString  := DataSet.FieldByName('CMPLYEAR').AsString+'/'+
                                                  DataSet.FieldByName('CMPLMON').AsString+'/'+
                                                  DataSet.FieldByName('CMPLDAY').AsString;
end;

function TFrmELGHCnt.SelectReportRecord: Boolean;
begin
  with FDM_Contract.qrRPrintLGHCnt, sql do
  begin
    Close;
    Clear;
    Add('SELECT R.CNTCODE, CNTDTE, CUSTNO, CMPLSEQ, GDS_CODE,    ');
    Add('       CMPLNUM, CMPLYEAR, CMPLMON, CMPLDAY, PRJCODE,    ');
    Add('       R.RISRL, R.RIDATE, CT.CMPLCODE, CMPLDATE         ');
    Add('  FROM PSSALES.COMPLEMENT_T CT, PSSALES.COMPLEMENR_T CR,');
    Add('       PSSALES.IDCONTACT_T IC, PSSALES.RIDER_T R        ');
    Add(' WHERE R.CNTCODE  = :CNTCODE                            ');
    Add('   AND R.RISRL    = :RISRL                              ');
    Add('   AND R.CNTCODE  = IC.CNTCODE                          ');
    Add('   AND R.CNTCODE  = CT.CNTCODE                          ');
    Add('   AND R.RISRL    = CT.RISRL                            ');
    Add('   AND CT.CNTCODE = CR.CNTCODE                          ');
    Add('   AND CT.RISRL   = CR.RISRL                            ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('CNTCODE').AsString := dbedCntCode.Text;
    ParamByName('RISRL').AsString := DbedRisrl.Text;
    Open;
    Result := IsEmpty;
  end;
end;

procedure TFrmELGHCnt.ShowReport(Sender: TObject);
begin
  if FDM_Contract.qrEComplement_M.FieldByName('CMPSTATE').AsInteger = _intNotConfirmed then
  begin
    MbError(CannotPrint);
    Exit;
  end;

  if SelectReportRecord then
  begin
    MbPrompt(NoReport);
    Exit;
  end;

  if FileExists(ReportPath+'RLGHCNT.RTM') then
  begin
    ppReportFCnt.Template.FileName:= ReportPath+'RLGHCNT.RTM';
    ppReportFCnt.SaveAsTemplate:= True;
    ppReportFCnt.Template.LoadFromFile;
  end;

  if Sender = bbPreview then
    ppReportFCnt.DeviceType := 'Screen'
  else
    ppReportFCnt.DeviceType := 'Printer';
  ppReportFCnt.Print;
end;

end.
