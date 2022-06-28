{Rahmani}
{$I Direct.Inc}
unit EMCnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,DMUContract,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEMCnt = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BitBtnPost: TBitBtn;
    BitBtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    DbedCntCode: TDBEdit;
    DbedCuName: TDBEdit;
    DbedRir: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    SphCnt: TSpeedButton;
    Panel2: TPanel;
    Label7: TLabel;
    BtnDisConfirm: TBitBtn;
    BtnConfirm: TBitBtn;
    Label11: TLabel;
    DbedPrjName: TDBEdit;
    DbgrRider: TDBGrid;
    Label1: TLabel;
    Label8: TLabel;
    DbedDesc: TDBEdit;
    SpeedButton3: TSpeedButton;
    BtnFinal: TButton;
    DbedCuCode: TDBEdit;
    DbedDte: TDBEdit;
    DbedCntDte: TDBEdit;
    Label2: TLabel;
    DbedState: TDBEdit;
    Label3: TLabel;
    DbedArz: TDBEdit;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    edTotCost: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SphCntClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbgrRiderEditButtonClick(Sender: TObject);
    procedure DbedCntCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbgrRiderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPostClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure DbedCntCodeExit(Sender: TObject);
    procedure DbedRirExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BtnConfirmClick(Sender: TObject);
    procedure BtnDisConfirmClick(Sender: TObject);
    procedure BtnFinalClick(Sender: TObject);
    procedure DbgrRiderColEnter(Sender: TObject);
    procedure DbgrRiderEnter(Sender: TObject);
    procedure DbedDteExit(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FDM_Contract: TDM_Contract;
    IsLock, Internal : Boolean;
    CustCode, PrjCode, CNTDTE : String;
//    SeqControl: TMbDbGridControl;
    SeqControl: TCuDBGrid;
    GdsFlag : Boolean;
    FSerial : Integer;
    Procedure DsERiderStateChange(Sender: TObject);
    procedure qrERider_MCalcFields(DataSet: TDataSet);
    procedure qrERider_DCalcFields(DataSet: TDataSet);
    procedure qrBeforeDelete(DataSet: TDataSet);
    procedure qrBeforePost(DataSet: TDataSet);
    procedure qrAfterDelete(DataSet: TDataSet);
    procedure qrERider_DNewRecord(DataSet: TDataSet);
    procedure qrERider_DBeforeScroll(DataSet: TDataSet);
    procedure qrERider_DGDS_CODEValidate(Sender: TField);
    procedure qrERider_DGDS_CODEChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);

    Function  MasterCtrlInfo : Boolean;
    Function  CtrlInformation : Boolean;
    Procedure PostRecord;
    Procedure DeleteRecord;
    Procedure DeleteDetail;
    Procedure FindCustPrj(CNTCODE : String);
    Procedure SelectDetRec(CNTCODE,RISRL : String);
    Procedure EnableComponent(Flag : Boolean);
    function UpDateState(BtnType : Integer; Cnt,Rsrl : String):Boolean;
    procedure SeqIntiate;
    procedure CalcSum(Sender: TObject);
    Procedure SetBtnConfirm;
    function  Complitment : Boolean;
    function  IsCurrency: Boolean;
    function  CntHasHav : Boolean;
    procedure OperateOnOrdDelvAfterConfirm;
    procedure OperateOnOrdDelvAfterCancle;
    function  GetOrdDelNoFrmCnt : Integer;
  public
    { Public declarations }
    DbHandle: TMbHandle;
    PrnCntCode,PrnRirCode, PrnDteCode : String;
  end;

var
  FrmEMCnt: TFrmEMCnt;

implementation

uses MainUnit, Utility,UMessage,Functions, Help, Vars, ECnt;


{$R *.DFM}


procedure TFrmEMCnt.SeqIntiate;
begin
{  SeqControl:= TMbDbGridControl.Create(Self, DbgrRider, 'RDROW');
  SeqControl.AddSum('CF_Price');
  SeqControl.OnSumChanged:= CalcSum;}
  SeqControl:= TCuDBGrid.Create(Self, dbgrRider, 'RDROW', True, True, False);
  SeqControl.AddSum(['CF_Price']);
  SeqControl.SetSumControl['CF_Price']:= edTotCost;
  SeqControl.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmEMCnt.CalcSum(Sender: TObject);
begin
//  DbedPrice.Text := SetEditText(SeqControl.Sum['CF_Price']);
end;

function TFrmEMCnt.Complitment : Boolean;
begin
  With FDM_Contract.qrETemp,Sql do
  begin
    Close;
    Clear;
    Add('SELECT CNTCODE, RISRL  FROM '+ SchemaName+ 'COMPLEMENT_T ');
    Add(' WHERE CNTCODE = :CNTCODE                           ');
    Add('  AND  RISRL = :RISRL                               ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('CNTCODE').AsString := DbedCntCode.Text;
    ParamByName('RISRL').AsString := DbedRir.Text;
    Open;
    Result := Not IsEmpty;
  end;
end;

Procedure TFrmEMCnt.SetBtnConfirm;
begin
  If FDM_Contract.qrERider_M.FieldByName('RIDSTAT').AsInteger = _ConfirmVal Then
  begin
    EnableComponent(False);
    DbgrRider.ReadOnly := True;
    DbgrRider.PopUpMenu := Nil;
    BtnFinal.Enabled := True;
    BtnConfirm.Visible  := False;
    BtnDisConfirm.Visible  := True;
  end
  else
  begin
    EnableComponent(True);
    DbgrRider.ReadOnly := False;
    DbgrRider.PopUpMenu := PMen;
    BtnFinal.Enabled := False;
    BtnConfirm.Visible  := True;
    BtnDisConfirm.Visible  := False;
  end;
end;

Procedure TFrmEMCnt.DsERiderStateChange(Sender: TObject);
begin
  G_StateChange(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D, BitBtnPost, BitBtnDelete);
end;

procedure TFrmEMCnt.qrERider_MCalcFields(DataSet: TDataSet);
begin
  FindCustPrj(Dataset.FieldByName('CNTCODE').AsString);
  Dataset.FieldByName('CF_CustCode').AsString := CustCode;
  Dataset.FieldByName('CF_CntDte').AsString   := CNTDTE;
  Dataset.FieldByName('CF_CustName').AsString := FindCusName(CustCode);
  Dataset.FieldByName('CF_PrjName').AsString := FindProjectDesc(PrjCode);
end;

procedure TFrmEMCnt.qrERider_DCalcFields(DataSet: TDataSet);
begin
  if SeqControl.CanCalculate then
  begin
    Dataset.FieldByName('CF_Gdsname').AsString := FindGdsFDesc(Dataset.FieldByName('GDS_CODE').AsString);
    Dataset.FieldByName('CF_LatinName').AsString := FindGdsLDesc(Dataset.FieldByName('GDS_CODE').AsString);
  end;

  Dataset.FieldByName('CF_PRICE').AsFloat := Dataset.FieldByName('RDQTY').AsFloat * Dataset.FieldByName('RDPRICE').AsFloat;
end;

procedure TFrmEMCnt.qrBeforeDelete(DataSet: TDataSet);
begin
  Internal := True;
end;

procedure TFrmEMCnt.qrAfterDelete(DataSet: TDataSet);
begin
  If DataSet = FDM_Contract.qrERider_D then
    BitBtnPost.Enabled := (MabnaInfo.HasAccess(BitBtnDelete.Tag));
  Internal := False;
end;

procedure TFrmEMCnt.qrERider_DNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('CNTCODE').AsString := FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString;

  if not (FDM_Contract.qrERider_M.FieldByName('RISRL').AsString = '') then
    Dataset.FieldByName('RISRL').AsString:= FDM_Contract.qrERider_M.FieldByName('RISRL').AsString;
end;

procedure TFrmEMCnt.qrERider_DGDS_CODEValidate(Sender: TField);
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

procedure TFrmEMCnt.qrERider_DBeforeScroll(DataSet: TDataSet);
begin
//  SeqControl.SetSums;
//  DbedPrice.Text := SetEditText(SeqControl.Sum['CF_Price']);
end;

Function  TFrmEMCnt.MasterCtrlInfo : Boolean;
begin
  Result := True;
  If DbedCntCode.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCntCode.SetFocus;
    Result := False;
  end
  else If DbedRir.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedRir.SetFocus;
    Result := False;
  end
  else If DbedDte.Field.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedDte.SetFocus;
    Result := False;
  end;
end;

Function  TFrmEMCnt.CtrlInformation : Boolean;
begin
  Result := True;
  With FDM_Contract.qrERider_D do
  begin
    If FieldByName('GDS_CODE').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrRider.SetFocus;
      DbgrRider.SelectedField := FieldByName('GDS_CODE');
      Result := False;
    end
  end;
end;

Procedure TFrmEMCnt.EnableComponent(Flag : Boolean);
begin
  DbedDte.Enabled := Flag;
  DbedDesc.Enabled := Flag;
end;

function TFrmEMCnt.UpDateState(BtnType : Integer; Cnt,Rsrl : String):Boolean;
begin
  If (FDM_Contract.qrERider_M.Modified) or (FDM_Contract.qrERider_M.UpdatesPending) or
     (FDM_Contract.qrERider_M.State in dsEditModes) Or (FDM_Contract.qrERider_D.Modified) or
     (FDM_Contract.qrERider_D.UpdatesPending)or (FDM_Contract.qrERider_D.State in dsEditModes) Then
  begin
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
      If Not (qrERider_M.State in dsEditModes) then
        qrERider_M.Edit;
      qrERider_M.FieldByName('RIDSTAT').AsInteger := BtnType;
      qrERider_M.ApplyUpdates;
      //Õ–›  €ÌÌ—«  œ— ”›«—‘  ÕÊÌ· «ÌÃ«œ ‘œÂ
      if BtnType = _ConfirmVal then
        OperateOnOrdDelvAfterConfirm
     //«⁄„«·  €ÌÌ—«  œ— ”›«—‘  ÕÊÌ· «ÌÃ«œ ‘œÂ
      else if BtnType = _DisConfirmVal then
        OperateOnOrdDelvAfterCancle;
      MbDB.Commit(FDb);
      AutoSelect(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 0, IsLock, 'CNTCODE = '''+ Cnt +''' AND RISRL = ' + Rsrl);
      AutoSelect(FDB, FDM_Contract.qrERider_D, 'RIDERDTL_T', 0, IsLock, 'CNTCODE = '''+ Cnt +''' AND RISRL = ' + Rsrl);
      Result := True;
    end;
    Except on e: Exception Do
       begin
        MbDB.RollBack(FDb);
        Result := False;
        MbError(ExpHandleM(E));
       end;
    end;
  end;
end;

Procedure TFrmEMCnt.PostRecord;
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
      qrERider_M.Edit;
      qrERider_M.FieldByName('RIDSTAT').AsInteger := _DisConfirmVal;
      qrERider_M.ApplyUpdates;
      FDM_Contract.qrERider_D.DisableControls;
      Try
        FDM_Contract.qrERider_D.First;
        While Not FDM_Contract.qrERider_D.Eof do
        begin
          with FDM_Contract.qrETemp, SQL do
          begin
            DataBaseName:= MbDB.DataBaseName[FDB];
            Clear;
            Add('INSERT INTO '+SchemaName+'RIDERDTL_T');
            Add('  (CNTCODE, RISRL, RDROW, CU_CODE, GDS_CODE, RDDESC, RDQTY, RDPRICE)');
            Add('VALUES');
            Add('  (:CNTCODE, :RISRL, :RDROW, :CU_CODE, :GDS_CODE, :RDDESC, :RDQTY, :RDPRICE)');
            ParamByName('CNTCODE').AsString  := FDM_Contract.qrERider_D.FieldByName('CNTCODE').AsString;
            ParamByName('RISRL').AsString   := FDM_Contract.qrERider_D.FieldByName('RISRL').AsString;
            ParamByName('CU_CODE').AsString := FDM_Contract.qrERider_D.FieldByName('CU_CODE').AsString;
            ParamByName('GDS_CODE').AsString   := FDM_Contract.qrERider_D.FieldByName('GDS_CODE').AsString;
            ParamByName('RDDESC').AsString := FDM_Contract.qrERider_D.FieldByName('RDDESC').AsString;
            ParamByName('RDQTY').AsString  := FDM_Contract.qrERider_D.FieldByName('RDQTY').AsString;
            ParamByName('RDPRICE').AsString  := FDM_Contract.qrERider_D.FieldByName('RDPRICE').AsString;
            ParamByName('RDROW').AsString  := FDM_Contract.qrERider_D.FieldByName('RDROW').AsString;
            SQL := MbSqlConvert(SQL);
            ExecSql;
          end;
          FDM_Contract.qrERider_D.Next;
        end;
      finally
        FDM_Contract.qrERider_D.EnableControls;
      end;
      MbDB.Commit(FDb);
      SelectEmpty(FDM_Contract.qrERider_D,'RIDERDTL_T');
      SelectEmpty(FDM_Contract.qrERider_M,'RIDER_T');
      DbedCntCode.SetFocus;
      BitBtnPost.Enabled := False;
    end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      DbedCntCode.SetFocus;
     end;
  end;
end;


Procedure TFrmEMCnt.DeleteDetail;
begin
  With FDM_Contract,qrETemp  do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM '+SchemaName+'RIDERDTL_T ');
    Sql.Add('WHERE  CNTCODE = :CNTCODE            ');
    Sql.Add(' AND   RISRL   = :RISRL              ');
    ParamByName('CNTCODE').AsString := DbedCntCode.Text;
    ParamByName('RISRL').AsString := DbedRir.Text;
    Sql := MbSqlConvert(Sql);
    ExecSQL;
  end;
end;

Procedure TFrmEMCnt.DeleteRecord;
begin
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
    With FDM_Contract,qrETemp  do
    begin
      DeleteDetail;
      qrERider_M.Delete;
      qrERider_M.ApplyUpdates;
      MbDB.Commit(FDb);
      SelectEmpty(FDM_Contract.qrERider_D,'RIDERDTL_T');
      SelectEmpty(FDM_Contract.qrERider_M,'RIDER_T');
      DbedCntCode.SetFocus;
    end;
  Except on e: Exception Do
   begin
     MbDB.RollBack(FDb);
     DbedCntCode.SetFocus;
   end;
  end;
end;

Procedure TFrmEMCnt.SelectDetRec(CNTCODE, RISRL : String);
begin
  With FDM_Contract.qrERider_D,Sql do
  begin
    Close;
    Clear;
    Add('SELECT '''+CNTCODE+''' CNTCODE,'+ RISRL+' RISRL,  ');
    Add('       CNTROW RDROW, CU_CODE,         ');
(* Vakili 83-08-03 *)
//    Add('       GDS_CODE, TO_CHAR(NULL) RDDESC,         ');
    Add('       GDS_CODE, '' '' RDDESC,         ');
(* Vakili 83-08-03 *)
    Add('       CNTQTY RDQTY, CNTPRICE RDPRICE ');
    Add(' FROM  IDCONTACR_T  ');
    Add('WHERE  CNTCODE = :CNTCOD              ');
    ParamByName('CNTCOD').AsString := CNTCODE;
//    ParamByName('RISR').AsString := RISRL;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

Procedure TFrmEMCnt.FindCustPrj(CNTCODE : String);
begin
  With FDM_Contract.qrETemp,Sql do
  begin
    Close;
    Clear;
    Add('SELECT  PRF.CUSTNO CUSTNO, PRF.PRJCODE PRJCODE,    ');
    Add('        IDCON.CNTDTE CNTDTE                        ');
    Add('  FROM  IDCONTACT_T IDCON,       ');
    Add('        PROFORMAT_T PRF          ');
    Add(' WHERE  IDCON.CNTCODE = :CNTCODE                   ');
    Add('  AND   IDCON.PRFNUM IS NOT NULL                   ');
    Add('  AND   IDCON.PRFNUM = PRF.PRFNUM(+)               ');

    Add('UNION                                              ');

    Add('SELECT  IDCON.CUSTNO CUSTNO, IDCON.PRJCODE PRJCODE,');
    Add('        IDCON.CNTDTE CNTDTE                        ');
    Add('  FROM  IDCONTACT_T IDCON        ');
    Add(' WHERE  IDCON.CNTCODE = :CNTCODE                   ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('CNTCODE').AsString := CNTCODE;
    Open;
    PrjCode  := FieldByName('PRJCODE').AsString;
    CustCode := FieldByName('CUSTNO').AsString;
    CNTDTE   := FieldByName('CNTDTE').AsString;
  end;
end;

procedure TFrmEMCnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEMCnt.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEMCnt.SphCntClick(Sender: TObject);
var
  Code: string;
begin
  If HelpCnt(Code) Then
  begin
    DbedCntCode.SetFocus;
    with FDM_Contract.qrERider_M do
    begin
      Edit;
      FieldByName('CNTCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEMCnt.SpeedButton3Click(Sender: TObject);
var
  Code: string;
begin
  If HelpMCnt(Code,DbedCntCode.Text) Then
  begin
    DbedRir.SetFocus;
    with FDM_Contract.qrERider_M do
    begin
      Edit;
      FieldByName('RISRL').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEMCnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MbFM.ReleaseFM(FFrm);
  Action:= caFree;
end;

procedure TFrmEMCnt.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := CheckChanges(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D,FDM);
end;

procedure TFrmEMCnt.FormCreate(Sender: TObject);
begin
  FDM_Contract := TDM_Contract(MbDm.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
  With FDM_Contract Do
  begin
    DsERider_M.OnStateChange  := Nil;
    DsERider_M.OnStateChange  := DsERiderStateChange;
    qrERider_M.OnCalcFields   := qrERider_MCalcFields;

    DsERider_D.OnStateChange := Nil;
    DsERider_D.OnStateChange := DsERiderStateChange;
    qrERider_D.OnCalcFields  := qrERider_DCalcFields;
    qrERider_D.BeforeDelete  := qrBeforeDelete;
    qrERider_D.BeforePost  := qrBeforePost;
    qrERider_D.AfterDelete   := qrAfterDelete;
    qrERider_D.OnNewRecord   := qrERider_DNewRecord;
    qrERider_D.BeforeScroll  := qrERider_DBeforeScroll;
    qrERider_D.AfterOpen:= DetAfterOpen;
    qrERider_DGDS_CODE.OnValidate := qrERider_DGDS_CODEValidate;
    qrERider_DGDS_CODE.OnChange := qrERider_DGDS_CODEChange;
  end;
  SeqIntiate;
end;

procedure TFrmEMCnt.FormShow(Sender: TObject);
begin
  SelectEmpty(FDM_Contract.qrERider_D,'RIDERDTL_T');
  SelectEmpty(FDM_Contract.qrERider_M,'RIDER_T');
  IsLock := False;
  If MBFM.GetFM(ParentFrm) is TfrmECnt then
    with FDM_Contract.qrERider_M do
    begin
      Edit;
      FieldByName('CNTCODE').AsString := TfrmECnt(MBFM.GetFM(ParentFrm)).dbedCntCode.Text;
    end;
end;

procedure TFrmEMCnt.DbgrRiderEditButtonClick(Sender: TObject);
Var
  Code : String;
begin
  If FDM_Contract.qrERider_M.FieldByName('RIDSTAT').AsInteger = _ConfirmVal Then
    Exit;
  If DbgrRider.SelectedField.FieldName = 'GDS_CODE' Then
  begin
    If HelpGds(Code, _General, '') Then
    begin
      with DbgrRider.DataSource.DataSet do
        begin
          Edit;
          FieldByName('GDS_CODE').AsString := Code;
        end;
    end;
  end;
{  else If DbgrRider.SelectedField.FieldName = 'CU_CODE' Then
  begin
    If HelpArz(Code) Then
    begin
      with DbgrRider.DataSource.DataSet do
        begin
          Edit;
          FieldByName('CU_CODE').AsString := Code;
        end;
    end;
  end   }
end;

procedure TFrmEMCnt.DbedCntCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    SphCntClick(Sender);
end;

procedure TFrmEMCnt.DbgrRiderKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    DbgrRiderEditButtonClick(Sender);
end;

procedure TFrmEMCnt.BitBtnPostClick(Sender: TObject);
begin
  If Not MasterCtrlInfo Then
    Exit;
{  If Not CtrlInformation Then
    Exit;}
  PostRecord;
end;

procedure TFrmEMCnt.BitBtnDeleteClick(Sender: TObject);
begin
  If FDM_Contract.qrERider_M.FieldByName('RIDSTAT').AsInteger = _ConfirmVal Then
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

procedure TFrmEMCnt.DbedCntCodeExit(Sender: TObject);
Var CState: Integer;
    Cnt : String;
begin
  If DbedCntCode.Text = '' Then
    Exit;
  Cnt := DbedCntCode.Text;
  If Not ExistCnt(DbedCntCode.Text) Then
  begin
    MbError(InvalidCode);
    DbedCntCode.SetFocus;
    Exit;
  end;
  If Not FindCntState(DbedCntCode.Text,CState)  Then
  begin
    MbError('»—«Ì «Ì‰ ‘„«—Â ﬁ—«—œ«œ ﬁÿ⁄Ì  ’«œ— ‰‘œÂ «” ');
    DbedCntCode.SetFocus;
    Exit;
  end
  else If CState <> _ConfirmVal Then
  begin
    MbError('ﬁÿ⁄Ì  ‘„«—Â ﬁ—«—œ«œ  «ÌÌœ ‰‘œÂ „Ì »«‘œ');
    DbedCntCode.SetFocus;
    Exit;
  end;

  SelectEmpty(FDM_Contract.qrERider_M,'RIDER_T');
  FDM_Contract.qrERider_M.Edit;
  DbedCntCode.Field.Text := Cnt;
  SelectDetRec(DbedCntCode.Text,IntToStr(0));
end;

procedure TFrmEMCnt.DbedRirExit(Sender: TObject);
begin
  If DbedRir.Text = '' Then
    Exit;
  If Not AutoSelect(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 2, IsLock) Then
  begin
    AutoSelect(FDB, FDM_Contract.qrERider_D,'RIDERDTL_T', 0, IsLock, ' CNTCODE = ''' +FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString+'''  AND RISRL = ' +FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    SetBtnConfirm;
  end
  else
  begin
    //»—«Ì ﬁ—«—œ«œ ÕÊ«·Â ’«œ— ‘œÂ «„ò«‰  ⁄ÌÌ‰ «·Õ«ﬁÌÂ ‰œ«—Ì„
    if CntHasHav then
    begin
      MbError('»—«Ì «Ì‰ ﬁ—«—œ«œ ÕÊ«·Â  ⁄—Ì› ‘œÂ «”  Ê «„ò«‰  ⁄—Ì› «·Õ«ﬁÌÂ ‰œ«—Ì„');
      DbedCntCode.SetFocus;
    end;

    SelectDetRec(FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString, FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    EnableComponent(True);
    DbgrRider.ReadOnly := False;
    DbgrRider.PopUpMenu := PMen;
    BtnFinal.Enabled := False;
    BtnConfirm.Visible  := True;
    BtnDisConfirm.Visible  := False;
    DbedDte.SetFocus;
//    SelectEmpty(FDM_Contract.qrERider_M,'RIDER_T');
  end;
end;

procedure TFrmEMCnt.N1Click(Sender: TObject);
begin
//  Exit;
  DbgrRider.DataSource.DataSet.Insert;
end;

procedure TFrmEMCnt.N2Click(Sender: TObject);
begin
  DbgrRider.DataSource.DataSet.Delete;
end;

procedure TFrmEMCnt.BtnConfirmClick(Sender: TObject);
begin
  //»—«Ì ﬁ—«—œ«œ ÕÊ«·Â ’«œ— ‘œÂ «„ò«‰  ⁄ÌÌ‰ «·Õ«ﬁÌÂ ‰œ«—Ì„
  if CntHasHav then
  begin
    MbError('»—«Ì «Ì‰ ﬁ—«—œ«œ ÕÊ«·Â  ⁄—Ì› ‘œÂ «”  Ê «„ò«‰  «ÌÌœ «·Õ«ﬁÌÂ ‰œ«—Ì„');
    Exit;
  end
  else
  if UpDateState(_ConfirmVal,FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString, FDM_Contract.qrERider_M.FieldByName('RISRL').AsString ) then
  begin
    EnableComponent(False);
    DbgrRider.ReadOnly  := True;
    DbgrRider.PopUpMenu := Nil;
    BtnConfirm.Visible  := False;
    BtnDisConfirm.Visible  := True;
    BtnFinal.Enabled := True;
  end;
end;

procedure TFrmEMCnt.BtnDisConfirmClick(Sender: TObject);
begin
  If Complitment Then
  begin
    MbError('»Â ⁄·  À»  ﬁÿ⁄Ì  «·Õ«ﬁÌÂ «„ﬂ«‰ ⁄œ„  «ÌÌœ ÊÃÊœ ‰œ«—œ');
    Exit;
  end;
  if UpDateState(_DisConfirmVal,FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString, FDM_Contract.qrERider_M.FieldByName('RISRL').AsString ) then
  begin
    EnableComponent(True);
    DbgrRider.ReadOnly := False;
    DbgrRider.PopUpMenu := PMen;
    BtnConfirm.Visible  := True;
    BtnDisConfirm.Visible  := False;
    BtnFinal.Enabled := False;
  end;
end;

procedure TFrmEMCnt.BtnFinalClick(Sender: TObject);
begin
  If (FDM_Contract.qrERider_M.Modified) Or  (FDM_Contract.qrERider_M.UpdatesPending) Or
     (FDM_Contract.qrERider_M.State In dsEditModes) Or
     (FDM_Contract.qrERider_D.Modified) Or  (FDM_Contract.qrERider_D.UpdatesPending) Or
     (FDM_Contract.qrERider_D.State In dsEditModes)  Then
  begin
    MbError(SaveData);
    BitBtnPost.SetFocus;
    Exit;
  end
  else
  begin
    PrnCntCode := DbedCntCode.Text;
    PrnRirCode := DbedRir.Text;
    PrnDteCode := DbedDte.Text;
    MainForm.acELGHCnt.Execute;
  end;
end;

procedure TFrmEMCnt.DbgrRiderColEnter(Sender: TObject);
begin
  If DbgrRider.SelectedIndex = 0 Then
    DbgrRider.SelectedIndex:= 1
  else If (DbgrRider.SelectedIndex = 2) Or (DbgrRider.SelectedIndex = 3) Then
    DbgrRider.SelectedIndex:= 4
  else If (DbgrRider.SelectedIndex = 7) Then
    DbgrRider.SelectedIndex:= 6
end;

procedure TFrmEMCnt.DbgrRiderEnter(Sender: TObject);
begin
  If DbedCntCode.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCntCode.SetFocus;
  end
  else If DbedRir.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedRir.SetFocus;
  end;
  DbgrRider.SelectedIndex:= 1;
end;

procedure TFrmEMCnt.DbedDteExit(Sender: TObject);
begin
  If DbedDte.Field.Text = '' Then
    Exit;
  If Not MsDateIsValid1(DbedDte.Text, False) Then
  begin
    MbError(InvalidDate);
    DbedDte.SetFocus;
    Exit;
  end;
end;

procedure TFrmEMCnt.sbFirstClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  DbedRir.SetFocus;  
  If CheckChanges(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 2, Ord(_First), IsLock);
    If Not FDM_Contract.qrERider_M.IsEmpty Then
    begin
      SetBtnConfirm;
      AutoSelect(FDB, FDM_Contract.qrERider_D,'RIDERDTL_T', 0, IsLock, 'CNTCODE = ''' +FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString+''' AND RISRL = ' +FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEMCnt.sbPrevClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  DbedRir.SetFocus;  
  If CheckChanges(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 2, Ord(_Prev), IsLock);
    If Not FDM_Contract.qrERider_M.IsEmpty Then
    begin
      SetBtnConfirm;
      AutoSelect(FDB, FDM_Contract.qrERider_D,'RIDERDTL_T', 0, IsLock, 'CNTCODE = ''' +FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString+''' AND RISRL = ' +FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEMCnt.sbNextClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  DbedRir.SetFocus;  
  If CheckChanges(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 2, Ord(_Next), IsLock);
    If Not FDM_Contract.qrERider_M.IsEmpty Then
    begin
      SetBtnConfirm;
      AutoSelect(FDB, FDM_Contract.qrERider_D,'RIDERDTL_T', 0, IsLock, 'CNTCODE = ''' +FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString+''' AND RISRL = ' +FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEMCnt.sbLastClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  DbedRir.SetFocus;
  If CheckChanges(FDM_Contract.qrERider_M, FDM_Contract.qrERider_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_Contract.qrERider_M, 'RIDER_T', 2, Ord(_Last), IsLock);
    If Not FDM_Contract.qrERider_M.IsEmpty Then
    begin
      SetBtnConfirm;
      AutoSelect(FDB, FDM_Contract.qrERider_D,'RIDERDTL_T', 0, IsLock, 'CNTCODE = ''' +FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString+''' AND RISRL =' +FDM_Contract.qrERider_M.FieldByName('RISRL').AsString);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEMCnt.FormDestroy(Sender: TObject);
begin
//  SeqControl.Free;
end;

function TFrmEMCnt.IsCurrency: Boolean;
begin
  Result:= not (FDM_Contract.qrERider_D.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmEMCnt.qrBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrRider.SetFocus;
      dbgrRider.SelectedField:= FieldByName('GDS_CODE');
      Abort;
    end;
  end;
end;

procedure TFrmEMCnt.qrERider_DGDS_CODEChange(Sender: TField);
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
  begin
    GdsFlag:= True;
    if IsCurrency then
      Rate:= Rate / StrToFloatDef(GetTaseer(Sender.DataSet.FieldByName('CU_CODE').AsString), 1)
    else
      Rate:= Round(Rate);

    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('RDPRICE').AsFloat:= Rate;
  end;
(* Vakili 83-09-28 *)
end;

procedure TFrmEMCnt.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

function TFrmEMCnt.CntHasHav: Boolean;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT COUNT(*) CNT  ');
    Add('  FROM HAVALEH       ');
    Add(' WHERE SALES = :SALES');
    SQL:= MbSqlConvert(SQL);
    ParamByName('SALES').AsString := FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString;
    Open;
    Result := not(FieldByName('CNT').AsInteger = 0);
  end;
end;

function TFrmEMCnt.GetOrdDelNoFrmCnt: Integer;
var MyQuery :TQuery ;
begin
  MyQuery := TQuery.Create(Self);
  try
    with MyQuery, SQL do
    begin
      DataBaseName := Mbdb.DatabaseName[FDB];
      Close;
      Clear;
      Add('SELECT ORD_DELV_NO     ');
      Add('  FROM IDCONTACT_T     ');
      Add(' WHERE CNTCODE = :CNT  ');
      SQL:= MbSqlConvert(SQL);
      ParamByName('CNT').AsString := DbedCntCode.Text;
      Open;
      Result := FieldByName('ORD_DELV_NO').AsInteger;
    end;
  finally
    MyQuery.Free;
  end;
end;

procedure TFrmEMCnt.OperateOnOrdDelvAfterConfirm;
var OrdDelvNo : integer;
begin
(*
  with FDM_Contract.qrETemp, SQL do
  begin
    OrdDelvNo := GetOrdDelNoFrmCnt;

    Clear;
    Add('SELECT DOC_M_SERIAL                 ');
    Add('  FROM INVENTORY.DOC_M            ');
    Add(' WHERE FRM_CODE     = :FRM_CODE     ');
    Add('   AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('   AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('   AND DOC_M_CODE   = :DOC_M_CODE   ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger    := OrdDelvNo;
    SQL:= MbSqlConvert(SQL);
    Open;
    FSerial:= FieldByName('DOC_M_SERIAL').AsInteger;

    Clear;
    Add('DELETE  INVENTORY.DOC_D            ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ExecSQL;

    Clear;
    Add('INSERT INTO  INVENTORY.DOC_D(DOC_M_SERIAL, GDS_CODE,  ');
    Add('                               DOC_M_YEAR, DOC_D_REQQTY)');
    Add('  (SELECT  :DOC_M_SERIAL, GDS_CODE, :DOC_M_YEAR, RDQTY  ');
    Add('     FROM  RIDERDTL_T                           ');
    Add('     WHERE CNTCODE = :CNTCODE                           ');
    Add('       AND RISRL   = :RISRL)                            ');
    ParamByName('DOC_M_SERIAL').AsInteger:= FSerial;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('CNTCODE').AsString      := FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString;
    ParamByName('RISRL').AsString        := FDM_Contract.qrERider_M.FieldByName('RISRL').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
*)  
end;

procedure TFrmEMCnt.OperateOnOrdDelvAfterCancle;
var OrdDelvNo : integer;
begin
(*
  with FDM_Contract.qrETemp, SQL do
  begin
    OrdDelvNo := GetOrdDelNoFrmCnt;

    Clear;
    Add('SELECT DOC_M_SERIAL                 ');
    Add('  FROM INVENTORY.DOC_M            ');
    Add(' WHERE FRM_CODE     = :FRM_CODE     ');
    Add('   AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('   AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('   AND DOC_M_CODE   = :DOC_M_CODE   ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger    := OrdDelvNo;
    SQL:= MbSqlConvert(SQL);
    Open;
    FSerial:= FieldByName('DOC_M_SERIAL').AsInteger;

    Clear;
    Add('DELETE  INVENTORY.DOC_D            ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ExecSQL;

    Clear;
    Add('INSERT INTO  INVENTORY.DOC_D(DOC_M_SERIAL, GDS_CODE,  ');
    Add('                               DOC_M_YEAR, DOC_D_REQQTY)');
    Add('  (SELECT  :DOC_M_SERIAL, GDS_CODE, :DOC_M_YEAR, CNTQTY ');
    Add('     FROM  IDCONTACR_T                          ');
    Add('     WHERE CNTCODE = :CNTCODE)                          ');
    ParamByName('DOC_M_SERIAL').AsInteger:= FSerial;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('CNTCODE').AsString      := FDM_Contract.qrERider_M.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
*)  
end;

end.
