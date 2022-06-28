{Rahmani}
{$I Direct.Inc}
unit EIntServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,DMUIntSales,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEIntServ = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BitBtnPost: TBitBtn;
    BitBtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    SphPrcno: TSpeedButton;
    DbedPRCNO: TDBEdit;
    DbgrProc: TDBGrid;
    DbgrValidity: TDBGrid;
    DbedCust: TDBEdit;
    Label6: TLabel;
    DbedCustName: TDBEdit;
    SphCust: TSpeedButton;
    Label5: TLabel;
    DbedDesc: TDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    DbedPrcDte: TDBEdit;
    EdPrice: TEdit;
    RgState: TRadioGroup;
    dbrgState: TDBRadioGroup;
    Panel3: TPanel;
    edNetPrice: TEdit;
    Label14: TLabel;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Splitter1: TSplitter;
    btnPrint: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SphPrcnoClick(Sender: TObject);
    procedure SphCustClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbedPRCNOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbedCustKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPostClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure DbedPrcDteExit(Sender: TObject);
    procedure DbedPRCNOExit(Sender: TObject);
    procedure DbedCustExit(Sender: TObject);
    procedure DbgrProcColEnter(Sender: TObject);
    procedure DbgrProcEnter(Sender: TObject);
    procedure DbgrValidityColEnter(Sender: TObject);
    procedure DbgrValidityEnter(Sender: TObject);
    procedure DbgrProcEditButtonClick(Sender: TObject);
    procedure DbgrValidityEditButtonClick(Sender: TObject);
    procedure DbgrProcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbgrValidityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    FDM_IntSales: TDM_IntSales;
    IsLock, Internal ,FlagEvent, FlagValid :Boolean;

    SeqControl: TMbDbGridControl;
    FAddGrid: TCuDBGrid;
    MaxPrcno, Price, Kindprice : String;
    Addition, SubVal :Double;

    Procedure DsEProdFactStateChange(Sender: TObject);
    procedure qrEProdFact_MCalcFields(DataSet: TDataSet);
    procedure qrEProdFact_MPRCSTATGetText(Sender: TField;
                                 var Text: String; DisplayText: Boolean);
    procedure qrEProdFact_MPRCSTATSetText(Sender: TField; const Text: String);

    procedure qrBeforeDelete(DataSet: TDataSet);
    procedure qrAfterDelete(DataSet: TDataSet);
    procedure qrEProdFact_DNewRecord(DataSet: TDataSet);
    procedure qrEProdFact_DAfterPost(DataSet: TDataSet);

    Procedure DsEValidityStateChange(Sender: TObject);
    procedure qrEValidityCalcFields(DataSet: TDataSet);
    procedure qrEValidityNewRecord(DataSet: TDataSet);
    procedure qrEValidityADCODEValidate(Sender: TField);
    procedure qrEValidityADVALValidate(Sender: TField);
    procedure qrEValidityADVALChange(Sender: TField);
    procedure AddAfterOpen(DataSet: TDataSet);
    procedure AddBeforePost(DataSet: TDataSet);
    procedure AddAfterDelete(DataSet: TDataSet);
    procedure AddAfterScroll(DataSet: TDataSet);

    Function  MasterCtrlInfo : Boolean;
    Function  CtrlInformation : Boolean;
    Procedure PostRecord;
    Procedure DeleteRecord;
    Procedure DeleteDetail;
    Procedure DeleteValidity;
    Procedure InsrtDetail;
    Procedure InsertValidity;
    procedure SeqIntiate;
    procedure InitAddGrid;
    procedure CalcSum(Sender: TObject);
    Function  SelectMaxRec : String;
    Procedure EnabledComponent(Flag : Boolean);
    Function  CalcSumValue : Double;
    function  CalculateNetCost(const AKind: Integer): Double;
    function  GetPercentPrice(AdCode: string; APrice: Double): Double;
    procedure SRV_CODEChange(Sender: TField);
    procedure ShowAddSub;
  public
    { Public declarations }
    DbHandle: TMbHandle;
    FFactNo : String;
  end;

var
  FrmEIntServ: TFrmEIntServ;

implementation

uses MainUnit, Utility,UMessage,Functions, Help, Vars;

{$R *.DFM}

Function TFrmEIntServ.CalcSumValue : Double;
Var
 LastPoint : TBookmark;
begin
  With DbgrValidity.DataSource.DataSet do
  begin
    DisableControls;
//    FlagEvent := False;
    Try
      First;
      Addition := 0;
      SubVal := 0;
      LastPoint := GetBookmark;
      While Not Eof  Do
      begin
        If FieldByName('CF_Kind').AsString = _stAdd Then
          Addition := Addition + FieldByName('ADVAL').AsFloat
        else If FieldByName('CF_Kind').AsString = _stSub Then
          SubVal := SubVal + FieldByName('ADVAL').AsFloat;
        Next;
      end;
    Finally
    begin
      EnableControls;
      GotoBookmark(LastPoint);
      If Not (FDM_IntSales.qrEValidity.State In dsEditModes) Then
        FDM_IntSales.qrEValidity.Edit;
      FlagEvent := True;
    end;
    end;
  end;
end;

Procedure TFrmEIntServ.DsEProdFactStateChange(Sender: TObject);
begin
  with FDM_IntSales do
    G_StateChange([qrEProdFact_M, qrEProdFact_D], BitBtnPost, BitBtnDelete, btnPrint);
end;

Procedure TFrmEIntServ.DsEValidityStateChange(Sender: TObject);
begin
  with FDM_IntSales do
    G_StateChange([qrEValidity, qrEValidity], BitBtnPost, BitBtnDelete, btnPrint);
end;

procedure TFrmEIntServ.qrEValidityCalcFields(DataSet: TDataSet);
begin
  if FAddGrid.CanCalculate then
  begin
    If Not FlagEvent Then
      Exit;
    Dataset.FieldByName('CF_PricKind').AsString := FindAddKind(Dataset.FieldByName('ADCODE').AsString);
    Price := FindAddPrice(Dataset.FieldByName('ADCODE').AsString, StrToFloatDef(GetEditText(edPrice.Text),0));
    Dataset.FieldByName('CF_Name').AsString := FindAddFName(Dataset.FieldByName('ADCODE').AsString);
    Dataset.FieldByName('CF_Kind').AsString := FindAddType(Dataset.FieldByName('ADCODE').AsString);
  end;
end;

procedure TFrmEIntServ.qrEValidityNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsInteger := 0;
    FieldByName('ADNUM2').AsInteger := 0;
    FieldByName('ADNUM3').AsInteger := 0;
    FieldByName('ADNUM4').AsInteger := 0;
    FieldByName('ADNUM5').AsString  := FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString;
  end;
end;

procedure TFrmEIntServ.qrEValidityADCODEValidate(Sender: TField);
var
  Temp: string;
  D: Double;
begin
  If Not FlagValid Then
    Exit;

  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if not (ExistAddCode(Sender.AsString)) then
    begin
      MbError(InvalidAddSub);
      Abort;
    end;

    with FDM_IntSales.qrEValidity do
    begin
      FieldByName('ADVAL').AsString:= '';
      Temp:= FindAddPrice(Sender.AsString, StrToFloatDef(StringReplace(edPrice.Text, ',', '', [rfReplaceAll]), 0));
      if not (Temp = '') then
      begin
        D:= StrToFloatDef(Temp , 0);
        FieldByName('ADVAL').AsFloat:= Round(D);
      end;
    end;
  end;

  FlagValid := False;
  Kindprice := FindAddType(Sender.AsString);
  FlagValid := True;
end;

procedure TFrmEIntServ.qrEValidityADVALChange(Sender: TField);
begin
//  CalcSumValue;
//  edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);
end;

procedure TFrmEIntServ.qrEValidityADVALValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 9999999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
  end;
end;

procedure TFrmEIntServ.qrEProdFact_MCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('CF_CustName').AsString := FindCusName(Dataset.FieldByName('CUSTNO').AsString);
end;

procedure TFrmEIntServ.qrEProdFact_MPRCSTATGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
{  83/07/28 banaee
  Case Sender.AsInteger Of
    _ConfirmVal    : RgState.ItemIndex := 1;
    _DisConfirmVal : RgState.ItemIndex := 0;
    _CancelVal     : RgState.ItemIndex := 2;
  end;}
  if Sender.Value = NULL then Exit;
    Text := dbrgState.Items[Sender.Value-1];
end;

procedure TFrmEIntServ.qrEProdFact_MPRCSTATSetText(Sender: TField; const Text: String);
begin {added banaee 83/07/28}
{
  If Text = _ConfirmStr Then
    Sender.AsInteger := _ConfirmVal
  else If Text = _DisConfirmStr Then
    Sender.AsInteger := _DisConfirmVal
  else If Text = _CancelStr Then
    Sender.AsInteger := _CancelVal
}
  Sender.Value := dbrgState.ItemIndex+1 ;
end;

procedure TFrmEIntServ.qrBeforeDelete(DataSet: TDataSet);
begin
  Internal := True;
end;

procedure TFrmEIntServ.qrAfterDelete(DataSet: TDataSet);
begin
  If DataSet = FDM_IntSales.qrEProdFact_D then
    BitBtnPost.Enabled := (MabnaInfo.HasAccess(BitBtnDelete.Tag));
  Internal := False;
end;

procedure TFrmEIntServ.qrEProdFact_DNewRecord(DataSet: TDataSet);
begin
  If Not (Dataset.State In DsEditModes) Then
    Dataset.Edit;
  Dataset.FieldByName('PRCNO').AsString := FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString;
end;

procedure TFrmEIntServ.qrEProdFact_DAfterPost(DataSet: TDataSet);
begin
  SeqControl.SetSums;
  edPrice.Text := SetEditText(SeqControl.Sum['PRDPRICE']);
  If Not FDM_IntSales.qrEValidity.IsEmpty Then
  begin
//    CalcSumValue;
//    edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);
  end;
end;

Function  TFrmEIntServ.MasterCtrlInfo : Boolean;
begin
  Result := True;
  If DbedPrcDte.Field.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedPrcDte.SetFocus;
    Result := False;
  end
  else If DbedCust.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCust.SetFocus;
    Result := False;
  end
{  else If RgState.ItemIndex < 0  Then
  begin
    MbError(NotDataComplete);
    RgState.SetFocus;
    Result := False;
  end}
end;

Function  TFrmEIntServ.CtrlInformation : Boolean;
begin
  Result := True;
  With FDM_IntSales.qrEProdFact_D do
  begin
    If FieldByName('PRDPRICE').AsString = '' Then
    begin
      MbError(NotDataComplete);
      DbgrProc.SetFocus;
      DbgrProc.SelectedField := FieldByName('PRDPRICE');
      Result := False;
    end
  end;
end;

Procedure TFrmEIntServ.PostRecord;
  Var Error : Boolean;
      TmpStr : String;
begin
  If IsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
    With FDM_IntSales Do
    begin
      If Not (qrEProdFact_M.State in dsEditModes) then
        qrEProdFact_M.Edit;
//    qrEProdFact_M.FieldByName('PRCSTAT').AsInteger := RgState.ItemIndex + 1; banaee 83/07/28
      Error:= False;
      If DbedPRCNO.Text = '' Then
        MaxPrcno := SelectMaxRec
      else
        MaxPrcno := DbedPRCNO.Text;
      If DbedPRCNO.Text = '' Then
      begin
        repeat
          qrEProdFact_M.FieldByName('PRCNO').AsString := MaxPrcno;
          Try
            qrEProdFact_M.ApplyUpdates ;
            Error := False;
          except
            on E: Exception do
            begin
              If Pos('ORA-00001',E.Message) > 0 then
              begin
                Error := True;
              end
              else
              begin
                Error:= False;
              end;
            end;
          end;
          If Not Error Then
          begin
            TmpStr:= ' «ÿ·«⁄ ÃœÌœ »« ‘„«—Â'+ ' ' + MaxPrcno + ' ' + ' À»  ê—œÌœ  ';
            MbMessage(TmpStr, mtInformation, [mbOk], mbOk);
          end
          else
            MaxPrcno := SelectMaxRec;
        until Not Error;
      end
      else
        qrEProdFact_M.ApplyUpdates;
      DeleteDetail;
      InsrtDetail;

      //InsertValidity;
      with FDM_IntSales.qrEValidity do
      begin
        CalculateNetCost(_OnSave);
        ApplyUpdates;
      end;

      MbDB.Commit(FDb);
      SelectEmpty(FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T');
      SelectEmpty(FDM_IntSales.qrEProdFact_M,'PRODUCTFACT_T');
      SelectEmpty(FDM_IntSales.qrEValidity,'VALIDITY_T');
      DbedPRCNO.SetFocus;
      BitBtnPost.Enabled := False;
      EdPrice.Text := '';
      edNetPrice.Text := '';
    end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      DbedPRCNO.SetFocus;
     end;
  end;
end;

Procedure TFrmEIntServ.DeleteDetail;
begin
  With FDM_IntSales,qrETemp  do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM PRODUCTFACR_T ');
    Sql.Add('WHERE  PRCNO = :PRCNO            ');
    ParamByName('PRCNO').AsString := DbedPRCNO.Text;
    Sql := MbSqlConvert(Sql);
    ExecSQL;
  end;
end;

Procedure TFrmEIntServ.DeleteValidity;
begin
  With FDM_IntSales,qrETemp  do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM VALIDITY_T ');
    Sql.Add('WHERE  ADNUM5 = :ADNUM5            ');
    ParamByName('ADNUM5').AsString := DbedPRCNO.Text;
    Sql := MbSqlConvert(Sql);
    ExecSQL;
  end;
end;

Procedure TFrmEIntServ.InsrtDetail;
begin
  FDM_IntSales.qrEProdFact_D.DisableControls;
  Try
    FDM_IntSales.qrEProdFact_D.First;
    While Not FDM_IntSales.qrEProdFact_D.Eof do
    begin
      with FDM_IntSales.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;
        Add('INSERT INTO PRODUCTFACR_T                ');
        Add('       (PRCNO, PRDROW, SRVCODE, PRDPRICE, SRVDESC)     ');
        Add('VALUES (:PRCNO, :PRDROW, :SRVCODE, :PRDPRICE, :SRVDESC)');
        ParamByName('PRCNO').AsString   := MaxPrcno;
        ParamByName('PRDROW').AsString  := FDM_IntSales.qrEProdFact_D.FieldByName('PRDROW').AsString;
        ParamByName('SRVCODE').AsString := FDM_IntSales.qrEProdFact_D.FieldByName('SRVCODE').AsString;
        ParamByName('PRDPRICE').AsString:= FDM_IntSales.qrEProdFact_D.FieldByName('PRDPRICE').AsString;
        ParamByName('SRVDESC').AsString := FDM_IntSales.qrEProdFact_D.FieldByName('SRVDESC').AsString;
        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;
      FDM_IntSales.qrEProdFact_D.Next;
    end;
  finally
    FDM_IntSales.qrEProdFact_D.EnableControls;
  end;
end;

Procedure TFrmEIntServ.InsertValidity;
begin
  FDM_IntSales.qrEValidity.DisableControls;
  Try
    DeleteValidity;
    FDM_IntSales.qrEValidity.First;
    While Not FDM_IntSales.qrEValidity.Eof do
    begin
      with FDM_IntSales.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;
        Add('INSERT INTO VALIDITY_T');
        Add('  (ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL)');
        Add('VALUES');
        Add('  (:ADCODE, :ADNUM1, :ADNUM2, :ADNUM3, :ADNUM4, :ADNUM5, :ADVAL)');
        ParamByName('ADNUM5').AsString  := MaxPrcno;
        ParamByName('ADNUM1').AsInteger := 0;
        ParamByName('ADNUM2').AsInteger := 0;
        ParamByName('ADNUM3').AsInteger := 0;
        ParamByName('ADNUM4').AsInteger := 0;
        ParamByName('ADCODE').AsString  := FDM_IntSales.qrEValidity.FieldByName('ADCODE').AsString;
        ParamByName('ADVAL').AsString   := FDM_IntSales.qrEValidity.FieldByName('ADVAL').AsString;
        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;
      FDM_IntSales.qrEValidity.Next;
    end;
  finally
    FDM_IntSales.qrEValidity.EnableControls;
  end;
end;

Procedure TFrmEIntServ.DeleteRecord;
begin
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
    With FDM_IntSales,qrETemp  do
    begin
      DeleteDetail;
      DeleteValidity;
      qrEProdFact_M.Delete;
      qrEProdFact_M.ApplyUpdates;
      MbDB.Commit(FDb);
      SelectEmpty(FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T');
      SelectEmpty(FDM_IntSales.qrEProdFact_M,'PRODUCTFACT_T');
      SelectEmpty(FDM_IntSales.qrEValidity,'VALIDITY_T');
      DbedPRCNO.SetFocus;
      EdPrice.Text := '';
      edNetPrice.Text := '';
    end;
  Except on e: Exception Do
   begin
     MbDB.RollBack(FDb);
     DbedPRCNO.SetFocus;
   end;
  end;
end;

procedure TFrmEIntServ.SeqIntiate;
begin
  SeqControl:= TMbDbGridControl.Create(Self, DbgrProc, 'PRDROW');
  SeqControl.AddSum('PRDPRICE');
  SeqControl.OnSumChanged:= CalcSum;
end;

procedure TFrmEIntServ.CalcSum(Sender: TObject);
begin
  edPrice.Text := SetEditText(SeqControl.Sum['PRDPRICE']);
end;

Function TFrmEIntServ.SelectMaxRec : String;
begin
  With FDM_IntSales,qrETemp,Sql do
  begin
    Close;
    Clear;
    Add('SELECT NVL(MAX(PRCNO),0)+1 PRCNO FROM '+ SchemaName+ 'PRODUCTFACT_T ');
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('PRCNO').AsString;
  end;
end;

Procedure TFrmEIntServ.EnabledComponent(Flag : Boolean);
begin
  DbedPrcDte.Enabled := Flag;
  DbedCust.Enabled := Flag;
  DbedDesc.Enabled := Flag;
  SphCust.Enabled := Flag;
end;

procedure TFrmEIntServ.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEIntServ.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEIntServ.SphPrcnoClick(Sender: TObject);
var
  Code: string;
begin
  If HelpIntServ(Code) Then
  begin
    DbedPRCNO.SetFocus;
    with FDM_IntSales.qrEProdFact_M do
    begin
      Edit;
      FieldByName('PRCNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
{ MainForm.acHIntServ.Execute;
 FrmHIntServ.ShowModal;}
end;

procedure TFrmEIntServ.SphCustClick(Sender: TObject);
var
  Code: string;
begin
  If HelpCustomer(Code) Then
  begin
    DbedCust.SetFocus;
    with FDM_IntSales.qrEProdFact_M do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEIntServ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SeqControl.Free;
  MbFM.ReleaseFM(FFrm);
  Action:= caFree;
end;

procedure TFrmEIntServ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := CheckChanges(FDM_IntSales.qrEProdFact_M, FDM_IntSales.qrEProdFact_D,FDM) And
              CheckChanges(FDM_IntSales.qrEValidity, FDM_IntSales.qrEValidity,FDM);
end;

procedure TFrmEIntServ.FormCreate(Sender: TObject);
begin
  FDM_IntSales := TDM_IntSales(MbDm.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
  With FDM_IntSales Do
  begin
    DsEProdFact_M.OnStateChange  := Nil;
    DsEProdFact_M.OnStateChange  := DsEProdFactStateChange;
    qrEProdFact_M.OnCalcFields   := qrEProdFact_MCalcFields;
    qrEProdFact_MPRCSTAT.onGetText := qrEProdFact_MPRCSTATGetText;
    qrEProdFact_MPRCSTAT.onSetText := qrEProdFact_MPRCSTATSetText;

    DsEValidity.OnStateChange   := Nil;
    DsEValidity.OnStateChange   := DsEValidityStateChange;
    qrEValidity.OnCalcFields    := qrEValidityCalcFields;
    qrEValidity.OnNewRecord     := qrEValidityNewRecord;
    qrEValidityADCODE.OnValidate:= qrEValidityADCODEValidate;
    qrEValidityADVAL.OnValidate := qrEValidityADVALValidate;
    qrEValidityADVAL.OnChange   := qrEValidityADVALChange;
    qrEValidity.AfterOpen       := AddAfterOpen;
    qrEValidity.BeforePost      := AddBeforePost;
    qrEValidity.AfterDelete     := AddAfterDelete;
    qrEValidity.AfterScroll     := AddAfterScroll;


    DsEProdFact_D.OnStateChange:= Nil;
    DsEProdFact_D.OnStateChange:= DsEProdFactStateChange;
    qrEProdFact_D.BeforeDelete := qrBeforeDelete;
    qrEProdFact_D.AfterDelete  := qrAfterDelete;
    qrEProdFact_D.OnNewRecord  := qrEProdFact_DNewRecord;
    qrEProdFact_D.AfterPost    := qrEProdFact_DAfterPost;
    qrEProdFact_D.FieldByName('SRVCODE').OnChange:= SRV_CODEChange;
  end;

  SeqIntiate;
  InitAddGrid;
end;

procedure TFrmEIntServ.FormShow(Sender: TObject);
begin
  SelectEmpty(FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T');
  SelectEmpty(FDM_IntSales.qrEProdFact_M,'PRODUCTFACT_T');
  SelectEmpty(FDM_IntSales.qrEValidity,'VALIDITY_T');
  IsLock := False;
  FlagValid := True;
  FlagEvent := True;
end;

procedure TFrmEIntServ.DbedPRCNOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    SphPrcnoClick(Sender);
end;

procedure TFrmEIntServ.DbedCustKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    SphCustClick(Sender);
end;

procedure TFrmEIntServ.BitBtnPostClick(Sender: TObject);
begin
  If Not MasterCtrlInfo Then
    Exit;
  If Not CtrlInformation Then
    Exit;
  PostRecord;
end;

procedure TFrmEIntServ.BitBtnDeleteClick(Sender: TObject);
begin
  If IsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If MbMessage(DeleteConfirm ,mtWarning ,[mbYes,mbNo], mbNo)= mrYes then
    DeleteRecord;
end;

procedure TFrmEIntServ.sbFirstClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  If CheckChanges(FDM_IntSales.qrEProdFact_M, FDM_IntSales.qrEProdFact_D,FDM) Then
    If  CheckChanges(FDM_IntSales.qrEValidity, FDM_IntSales.qrEValidity,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_IntSales.qrEProdFact_M, 'PRODUCTFACT_T', 1, Ord(_First), IsLock);
    If Not FDM_IntSales.qrEProdFact_M.IsEmpty Then
    begin
//      RgState.ItemIndex := FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger -1; banaee 83/07/28
      AutoSelect(FDB, FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T', 0, IsLock, 'PRCNO = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      ShowAddSub;
      //AutoSelect(FDB, FDM_IntSales.qrEValidity,'VALIDITY_T', 0, IsLock, 'ADNUM5 = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
     If Not FDM_IntSales.qrEValidity.IsEmpty Then
//       CalcSumValue;
//     edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEIntServ.sbPrevClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  If CheckChanges(FDM_IntSales.qrEProdFact_M, FDM_IntSales.qrEProdFact_D,FDM) Then
    If  CheckChanges(FDM_IntSales.qrEValidity, FDM_IntSales.qrEValidity,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_IntSales.qrEProdFact_M, 'PRODUCTFACT_T', 1, Ord(_Prev), IsLock);
    If Not FDM_IntSales.qrEProdFact_M.IsEmpty Then
    begin
//      RgState.ItemIndex := FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger -1;  banaee 83/07/28
      AutoSelect(FDB, FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T', 0, IsLock, 'PRCNO = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      //AutoSelect(FDB, FDM_IntSales.qrEValidity,'VALIDITY_T', 0, IsLock, 'ADNUM5 = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      ShowAddSub;
     If Not FDM_IntSales.qrEValidity.IsEmpty Then
//       CalcSumValue;
//     edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);       
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEIntServ.sbNextClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  If CheckChanges(FDM_IntSales.qrEProdFact_M, FDM_IntSales.qrEProdFact_D,FDM) Then
    If  CheckChanges(FDM_IntSales.qrEValidity, FDM_IntSales.qrEValidity,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_IntSales.qrEProdFact_M, 'PRODUCTFACT_T', 1, Ord(_Next), IsLock);
    If Not FDM_IntSales.qrEProdFact_M.IsEmpty Then
    begin
//      RgState.ItemIndex := FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger -1;  banaee 83/07/28
      AutoSelect(FDB, FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T', 0, IsLock, 'PRCNO = ' + FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      //AutoSelect(FDB, FDM_IntSales.qrEValidity,'VALIDITY_T', 0, IsLock, 'ADNUM5 = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      ShowAddSub;
     If Not FDM_IntSales.qrEValidity.IsEmpty Then
//       CalcSumValue;
//     edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);       
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEIntServ.sbLastClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  IsLock := False;
  If CheckChanges(FDM_IntSales.qrEProdFact_M, FDM_IntSales.qrEProdFact_D,FDM) Then
    If  CheckChanges(FDM_IntSales.qrEValidity, FDM_IntSales.qrEValidity,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_IntSales.qrEProdFact_M, 'PRODUCTFACT_T', 1, Ord(_Last), IsLock);
    If Not FDM_IntSales.qrEProdFact_M.IsEmpty Then
    begin
//      RgState.ItemIndex := FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger -1;  banaee 83/07/28
      AutoSelect(FDB, FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T', 0, IsLock, 'PRCNO = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      //AutoSelect(FDB, FDM_IntSales.qrEValidity,'VALIDITY_T', 0, IsLock, 'ADNUM5 = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
      ShowAddSub;
     If Not FDM_IntSales.qrEValidity.IsEmpty Then
//       CalcSumValue;
//     edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);
    end;
    ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
  end;
end;

procedure TFrmEIntServ.DbedPrcDteExit(Sender: TObject);
begin
  If DbedPrcDte.Field.Text = '' Then
    Exit;
  If Not MsDateIsValid1(DbedPrcDte.Text, False) Then
  begin
    MbError(InvalidDate);
    DbedPrcDte.SetFocus;
    Exit;
  end;

  if not CheckInvoiceDate(DbedPrcDte.Text) then
  begin
    MbError(' «—ÌŒ „Ê—œ ‰Ÿ— «“  «—ÌŒ ¬Œ—Ì‰ ”‰œ ﬂÊçﬂ — «” ');
    DbedPrcDte.SetFocus;
    Exit;
  end;
end;

procedure TFrmEIntServ.DbedPRCNOExit(Sender: TObject);
begin
  If DbedPRCNO.Text = '' Then
    Exit;
  FFactNo := DbedPRCNO.Text;

  If Not AutoSelect(FDB, FDM_IntSales.qrEProdFact_M,'PRODUCTFACT_T', 1, IsLock) Then
  begin
    AutoSelect(FDB, FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T', 0, IsLock, 'PRCNO = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString);
    //AutoSelect(FDB, FDM_IntSales.qrEValidity,'VALIDITY_T', 0, IsLock, 'ADNUM5 = ' +FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString, 'ORDER BY ADCODE');
    ShowAddSub;
    If Not FDM_IntSales.qrEValidity.IsEmpty Then
    begin
//      CalcSumValue;
//    edNetPrice.Text := FloatToStr(StrToFloatDef(GetEditText(EdPrice.Text),0) + Addition - SubVal);
//    RgState.ItemIndex := FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger -1;
      If FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger = _ConfirmVal Then
      begin
        EnabledComponent(False);
        DbgrProc.ReadOnly := True;
        DbgrProc.PopupMenu:= nil;
        DbgrValidity.ReadOnly := True;
      end
      else
      begin
        EnabledComponent(True);
        DbgrProc.ReadOnly := False;
        DbgrValidity.ReadOnly := False;
        DbgrProc.PopupMenu:= PMen;
      end;
    end;
  end
  else
  begin
    EnabledComponent(True);
    DbgrProc.ReadOnly := False;
    DbgrValidity.ReadOnly := False;
    DbgrProc.PopupMenu:= PMen;
    SelectEmpty(FDM_IntSales.qrEProdFact_D,'PRODUCTFACR_T');
    SelectEmpty(FDM_IntSales.qrEProdFact_M,'PRODUCTFACT_T');
    SelectEmpty(FDM_IntSales.qrEValidity,'VALIDITY_T');
    MbError(EmptyFactor);
    Exit;
  end;
end;

procedure TFrmEIntServ.DbedCustExit(Sender: TObject);
begin
  If (DbedCust.Text = '') Then
    Exit;
  If Not ExistCustomer(DbedCust.Text) Then
  begin
    MbError(InvalidCode);
    DbedCust.SetFocus;
    Exit;
  end;
end;

procedure TFrmEIntServ.DbgrProcColEnter(Sender: TObject);
begin
  If DbgrProc.SelectedIndex = 0 Then
    DbgrProc.SelectedIndex:= 1;
end;

procedure TFrmEIntServ.DbgrProcEnter(Sender: TObject);
begin
  If (Sender as TDBGrid).DataSource.DataSet.IsEmpty then
    (Sender as TDBGrid).DataSource.DataSet.Insert;
  DbgrProc.SelectedIndex:= 1;
end;

procedure TFrmEIntServ.DbgrValidityColEnter(Sender: TObject);
begin
  with FDM_IntSales.qrEValidity do
  begin
    if (dbgrValidity.SelectedField = FieldByName('CF_Name')) or
       (dbgrValidity.SelectedField = FieldByName('CF_Kind')) then
      dbgrValidity.SelectedField:= FieldByName('ADVAL');

    if dbgrValidity.SelectedField = FieldByName('CF_PricKind') then
      dbgrValidity.SelectedField:= FieldByName('ADCODE');

    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('CF_PricKind').AsString = _stPercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

procedure TFrmEIntServ.DbgrValidityEnter(Sender: TObject);
begin
  DbgrValidity.SelectedIndex:= 0;
end;

procedure TFrmEIntServ.DbgrProcEditButtonClick(Sender: TObject);
Var
  Code : String;
begin
  If FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger = _ConfirmVal Then
    Exit;
  If DbgrProc.SelectedField.FieldName = 'SRVCODE' Then
  begin
    If HelpServ(Code) Then
    begin
      with DbgrProc.DataSource.DataSet do
        begin
          Edit;
          FieldByName('SRVCODE').AsString := Code;
        end;
    end;
  end
end;

procedure TFrmEIntServ.DbgrValidityEditButtonClick(Sender: TObject);
Var
  Code : String;
begin
  If FDM_IntSales.qrEProdFact_M.FieldByName('PRCSTAT').AsInteger = _ConfirmVal Then
    Exit;
  If DbgrValidity.SelectedField.FieldName = 'ADCODE' Then
  begin
    If HelpKasr(Code) Then
    begin
      with DbgrValidity.DataSource.DataSet do
        begin
          Edit;
          FieldByName('ADCODE').AsString := Code;
        end;
    end;
  end
end;

procedure TFrmEIntServ.DbgrProcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    DbgrProcEditButtonClick(Sender);
end;

procedure TFrmEIntServ.DbgrValidityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
    DbgrValidityEditButtonClick(Sender);
end;

procedure TFrmEIntServ.InitAddGrid;
begin
  FAddGrid:= TCuDBGrid.Create(Self, dbgrValidity, '', True, True, False);
  FAddGrid.SetRowDuplicate(['ADCODE']);
  FAddGrid.RowLimit := 3;
end;

procedure TFrmEIntServ.AddAfterDelete(DataSet: TDataSet);
begin
  BitBtnPost.Enabled:= True and MabnaInfo.HasAccess(BitBtnPost.Tag);
end;

procedure TFrmEIntServ.AddAfterOpen(DataSet: TDataSet);
begin
  edNetPrice.Text:= Format('%.n', [CalculateNetCost(_OnOpen)]);
end;

procedure TFrmEIntServ.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('CF_PricKind').AsString = _stPercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

procedure TFrmEIntServ.AddBeforePost(DataSet: TDataSet);
var
  Temp: string;
begin
  with DataSet do
  begin
    if FieldByName('ADCODE').Value = Null then
    begin
      MbError(NotDataComplete);
      dbgrValidity.SetFocus;
      dbgrValidity.SelectedIndex:= 0;
      Abort;
    end;

    if (FieldByName('ADVAL').AsString = '') then
    begin
      MbError(NotDataComplete);
      dbgrValidity.SetFocus;
      dbgrValidity.SelectedIndex:= 4;
      Abort;
    end;
  end;
end;

function TFrmEIntServ.CalculateNetCost(const AKind: Integer): Double;
var
  BM: TBookMark;
  iAfterScroll,
  iBeforePost: TDataSetNotifyEvent;
  Temp, Debate, KasrVal: Double;
begin
  BM:= FDM_IntSales.qrEValidity.GetBookMark;
  iAfterScroll:= FDM_IntSales.qrEValidity.AfterScroll;
  iBeforePost:= FDM_IntSales.qrEValidity.BeforePost;

  FDM_IntSales.qrEValidity.AfterScroll:= nil;
  FDM_IntSales.qrEValidity.BeforePost:= nil;
  FDM_IntSales.qrEValidity.DisableControls;
  try
    with FDM_IntSales.qrEValidity do
    begin
      if AKind = _OnSave then
      begin
        First;
        KasrVal:= 0;
        while not Eof do
        begin
          if FieldByName('CF_Kind').AsString = _stSub then
            KasrVal:= KasrVal + FieldByName('ADVAL').AsFloat;

          Next;
        end;

//        Debate:= SeqControlRes.GetSum('TOTCOST') - KasrVal;
        Debate:= StrToFloatDef(StringReplace(edPrice.Text, ',', '', [rfReplaceAll]), 0) - KasrVal;

        First;
        while not Eof do
        begin
          Edit;

          FieldByName('ADNUM5').AsString := FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString;

          if FieldByName('CF_PricKind').AsString = _stPercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, StrToFloatDef(StringReplace(edPrice.Text, ',', '', [rfReplaceAll]), 0));

          Next;
        end;

        Result:= -1;
      end;


      
      if AKind = _OnOpen then
      begin
        if edPrice.Text = '' then
          Exit;

        Temp:= StrToFloatDef(StringReplace(edPrice.Text, ',', '', [rfReplaceAll]), 0);
        First;
        while not Eof do
        begin
          if FieldByName('CF_Kind').AsString = _stAdd then
            Temp:= Temp + FieldByName('ADVAL').AsFloat
          else
          if FieldByName('CF_Kind').AsString = _stSub then
            Temp:= Temp - FieldByName('ADVAL').AsFloat;

          Next;
        end;

        Result:= Temp;
      end;
    end;
  finally
    if FDM_IntSales.qrEValidity.State in dsEditModes then
      FDM_IntSales.qrEValidity.Post;

    FDM_IntSales.qrEValidity.GotoBookMark(BM);
    if not (BM = nil) then
      FDM_IntSales.qrEValidity.FreeBookMark(BM);

    FDM_IntSales.qrEValidity.AfterScroll:= iAfterScroll;
    FDM_IntSales.qrEValidity.BeforePost:= iBeforePost;
    FDM_IntSales.qrEValidity.EnableControls;
  end;
end;

function TFrmEIntServ.GetPercentPrice(AdCode: string;
  APrice: Double): Double;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT VALDEF');
    Add('FROM ADDSUB_T');
    Add('WHERE');
    Add('     ADCODE = :ADCODE');
    ParamByName('ADCODE').AsString:= AdCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('VALDEF').AsFloat / 100) * APrice;
    Close;
  end;
end;

procedure TFrmEIntServ.N2Click(Sender: TObject);
begin
  FDM_IntSales.qrEProdFact_D.Delete;
end;

procedure TFrmEIntServ.N1Click(Sender: TObject);
begin
  FDM_IntSales.qrEProdFact_D.Insert;
end;

procedure TFrmEIntServ.SRV_CODEChange(Sender: TField);
begin
  with Sender.DataSet do
  begin
    Edit;
    FieldByName('SRVDESC').AsString:= FindSRVCODE(Sender.AsString);
  end;
end;

procedure TFrmEIntServ.ShowAddSub;
begin
  FDM_IntSales.qrEValidity.DisableControls;
  try
    with FDM_IntSales.qrEValidity, SQL do
    begin
      Clear;
      Add('SELECT *');
      Add('FROM VALIDITY_T');
      Add('WHERE');
      Add('     ADNUM5 = :ADNUM5');
      Add('ORDER BY ADCODE');
      ParamByName('ADNUM5').AsString:= FDM_IntSales.qrEProdFact_M.FieldByName('PRCNO').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_IntSales.qrEValidity.First;
    FDM_IntSales.qrEValidity.EnableControls;
  end;

end;

procedure TFrmEIntServ.btnPrintClick(Sender: TObject);
begin
  with FDM_IntSales.qrETemp , SQL do
  begin
    Close;
    Clear;
    Add('SELECT PRCSTAT       ');
    Add('  FROM PRODUCTFACT_T ');
    Add(' WHERE PRCNO =:PRCNO ');
    ParamByName('PRCNO').AsString:= DbedPRCNO.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    if FieldByName('PRCSTAT').AsInteger = 1 then
    begin
      MbError('«„ﬂ«‰ ç«Å ›«ﬂ Ê— ‰Â«ÌÌ ‰‘œÂ ÊÃÊœ ‰œ«—œ.');
      Exit;
    end;
  end;
  MainForm.acPPrintSrvFactor.Execute;
end;

end.
