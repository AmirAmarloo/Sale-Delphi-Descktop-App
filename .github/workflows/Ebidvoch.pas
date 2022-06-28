//HABIBI
{$I Direct.Inc}
unit Ebidvoch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Db,DMUDataEntry,
  DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  Menus, ExtDlgs, {$I MbUses.inc};

type
  TfrmEbidvoch = class(TMbForm)
    pgMain: TPageControl;
    tbsCust: TTabSheet;
    tbsAdve: TTabSheet;
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton2: TSpeedButton;
    dbedNo: TDBEdit;
    dbedVal: TDBEdit;
    Panel4: TPanel;
    sbLast1: TSpeedButton;
    sbNext1: TSpeedButton;
    sbPrev1: TSpeedButton;
    sbFirst1: TSpeedButton;
    sbExit1: TSpeedButton;
    StatusBar1: TStatusBar;
    btnSave: TBitBtn;
    btnDel: TBitBtn;
    Panel5: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    dbedTel: TDBEdit;
    dbedCountry: TDBEdit;
    dbedAdd: TDBEdit;
    dbedPost: TDBEdit;
    dbedCode: TDBEdit;
    dbgrVoch: TDBGrid;
    Label21: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    dbedCoNo: TDBEdit;
    dbedCoVal: TDBEdit;
    dbgrCoVoch: TDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbedCoTel: TDBEdit;
    dbedCoCountry: TDBEdit;
    dbedCoAdd: TDBEdit;
    dbedCoPost: TDBEdit;
    dbedCoCode: TDBEdit;
    dbedCoDate: TDBEdit;
    dbedDate: TDBEdit;
    dbcbStat: TDBComboBox;
    Label23: TLabel;
    dbedCus: TDBEdit;
    dbedCusDesc: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label15: TLabel;
    dbedPrjDesc: TDBEdit;
    dbedPrj: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    dbedCoCusNo: TDBEdit;
    dbedCoCusDesc: TDBEdit;
    SpeedButton9: TSpeedButton;
    Label16: TLabel;
    dbedCoPrj: TDBEdit;
    dbedCoPrjDesc: TDBEdit;
    SpeedButton5: TSpeedButton;
    dbcdCoStat: TDBComboBox;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PCoMen: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure DBEdit3Change(Sender: TObject);
    procedure pgMainChange(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbExit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbedNoExit(Sender: TObject);
    procedure dbedNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure tbsAdveShow(Sender: TObject);
    procedure pgMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure dbgrVochEditButtonClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure sbLast1Click(Sender: TObject);
    procedure sbNext1Click(Sender: TObject);
    procedure sbPrev1Click(Sender: TObject);
    procedure sbFirst1Click(Sender: TObject);
    procedure dbedCoNoExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure dbgrCoVochEditButtonClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure tbsCustShow(Sender: TObject);
    procedure dbgrCoVochEnter(Sender: TObject);
    procedure dbedDateExit(Sender: TObject);
    procedure dbgrVochEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure dbedCoDateExit(Sender: TObject);
    procedure dbgrCoVochColEnter(Sender: TObject);
    procedure dbgrVochColEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FDM_DataEntry: TDM_DataEntry;
    BINUM :String[15];
    COBINUM :String[15];
    FIsLock ,Internal,FlagHelp: Boolean;

    SeqControl: TMbDbGridControl;
    SeqControlCo: TMbDbGridControl;

    procedure InitSeqCntrl;
    procedure PostVochCust;
    procedure DelVochCust;
    Procedure DsEVochCusStateChange(Sender: TObject);
    procedure qrAfterDelete(DataSet: TDataSet);
    procedure qrBeforeDelete(DataSet: TDataSet);
    procedure qrAfterDeleteCo(DataSet: TDataSet);
//=========================================«”‰«œ„‰«ﬁ’Â=======================================
//MASTER
    procedure qrEVochCus_MCalcFields(DataSet: TDataSet);
    Function  MasterCtrlInfo : Boolean;
    procedure qrEVochCus_MBISTATUSSetText(Sender: TField;const Text: String);
    procedure qrEVochCus_MBISTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure qrEVochCus_MNewRecord(DataSet: TDataSet);
    procedure qrEVochCus_MCUSTNOValidate(Sender: TField);
    procedure qrEVochCus_MPRJCODEValidate(Sender: TField);
    procedure qrEVochCus_MBeforePost(DataSet: TDataSet);
//Detail
    Function  CtrlInformation : Boolean;
    procedure qrEVochCus_DCalcFields(DataSet: TDataSet);
    procedure qrEVochCus_DNewRecord(DataSet: TDataSet);
    procedure qrEVochCus_DGDS_CODEValidate(Sender: TField);
    procedure qrEVochCus_DBIQTYValidate(Sender: TField);
    procedure qrEVochCus_DBIDLVDTEValidate(Sender: TField);
//=========================================«”‰«œ‘—ﬂ =========================================
//MASTER
    Procedure DsEVochCompStateChange(Sender: TObject);
    procedure qrEVochComp_MCalcFields(DataSet: TDataSet);
    Function  CoMasterCtrlInfo : Boolean;
    procedure qrEVochComp_MBISTATUSSetText(Sender: TField;const Text: String);
    procedure qrEVochComp_MBISTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure qrEVochComp_MNewRecord(DataSet: TDataSet);
    procedure qrEVochComp_MCUSTNOValidate(Sender: TField);
    procedure qrEVochComp_MBeforePost(DataSet: TDataSet);
    procedure qrEVochComp_MPRJCODEValidate(Sender: TField);
//Detail
    Function  CtrlInformationCo : Boolean;
    procedure qrEVochComp_DCalcFields(DataSet: TDataSet);
    procedure qrEVochComp_DNewRecord(DataSet: TDataSet);
    procedure qrEVochComp_DGDS_CODEValidate(Sender: TField);
    procedure qrEVochComp_DBIQTYValidate(Sender: TField);
    procedure qrEVochComp_DBIDLVDTEValidate(Sender: TField);

    procedure DeleteRecord(FBidNum: String;FType: Integer);
    procedure InsertRecordVch;
    procedure InsertRecordCoVch;

  public
    { Public declarations }
  end;

var
  frmEbidvoch: TfrmEbidvoch;

implementation

uses Utility, Vars, UMessage, Functions, Help, MainUnit,HCustom, HBidVch;

{$R *.DFM}

procedure TfrmEbidvoch.qrEVochComp_MPRJCODEValidate(Sender: TField);
begin
 If (dbedCoPrj.Text) = '' Then Exit;
 If Not ExistProject(dbedCoPrj.Text) Then
 Begin
  MbError(InvalidProject);
  dbedCoPrj.SetFocus;
 End;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MPRJCODEValidate(Sender: TField);
begin
 If (dbedPrj.Text) = '' Then Exit;
 If Not ExistProject(dbedPrj.Text) Then
 Begin
  MbError(InvalidProject);
  dbedPrj.SetFocus;
 End;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_DBIDLVDTEValidate(Sender: TField);
begin
    if (not MsDateIsValid1(Sender.AsString, False)) Then
    begin
      MbMessage(InvalidDate, mtError, [mbOk], mbOk);
      Abort;
    end;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_DBIDLVDTEValidate(Sender: TField);
begin
    if (not MsDateIsValid1(Sender.AsString, False)) Then
    begin
      MbMessage(InvalidDate, mtError, [mbOk], mbOk);
      Abort;
    end;
end;
//=============================================================================
procedure TfrmEbidvoch.InitSeqCntrl;
begin
  SeqControl := TMbDbGridControl.Create(Self, dbgrVoch, 'BIROW');
  SeqControlCo := TMbDbGridControl.Create(Self, dbgrCoVoch, 'BIROW');
end;

procedure TfrmEbidvoch.qrEVochComp_DGDS_CODEValidate(Sender: TField);
begin
  If Sender.AsString = '' Then Exit;
  if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
  end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_DNewRecord(DataSet: TDataSet);
begin
  DataSet.Edit;
  DataSet.FieldByName('BINUM').AsString   :=  COBINUM;
  DataSet.FieldByName('BIDTYPE').AsInteger := _intCustomers;
  DataSet.Post;
end;
//=============================================================================
Function  TfrmEbidvoch.CtrlInformationCo : Boolean;
Begin
  Result := True;
  With FDM_DataEntry.qrEVochComp_D Do
  Begin
    try
      DisableControls;
      First;
    while not Eof do
    begin
     If FieldByName('GDS_CODE').AsString = '' Then
      begin
        MbError(NotDataComplete);
        DbgrCoVoch.SetFocus;
        DbgrCoVoch.SelectedIndex := 1;
        Result := False;
        Break;
      end
      else If FieldByName('BIQTY').AsString = '' Then
       begin
        MbError(NotDataComplete);
        DbgrCoVoch.SetFocus;
        DbgrCoVoch.SelectedIndex := 5;
        Result := False;
        Break;
       end  ;
      Next;
    end;
    Finally
      EnableControls;
   End;
  End;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MCUSTNOValidate(Sender: TField);
begin
 With FDM_DataEntry.qrEVochComp_M Do Begin
   If (dbedCoCusNo.Text) = '' Then Exit;
   If Not ExistCustomer(dbedCoCusNo.Text) Then
   Begin
    MbError(InvalidCustCode);
    dbedCoCusNo.SetFocus;
    Abort;
   End;
  if not ExistRCust(FDM_DataEntry.qrEVochComp_M.FieldByName('CUSTNO').AsString,1) then
    begin
      MbError(InvalidCustom);
      Abort;
  end;
 end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrAfterDeleteCo(DataSet: TDataSet);
begin
  If DataSet = FDM_DataEntry.qrEVochComp_D then
    BtnPost.Enabled := (MabnaInfo.HasAccess(BtnDelete.Tag));
end;
//=============================================================================
Procedure TfrmEbidvoch.DsEVochCompStateChange(Sender: TObject);
begin
  G_StateChange(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D, BtnPost, BtnDelete);
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('BISTATUS').AsInteger := 2;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MBISTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNGift   : Text:= _stNGift;
    _intGift    : Text:= _stGift;
  end;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MBISTATUSSetText(Sender: TField;const Text: String);
Begin
  if Text = _stNGift then
    Sender.AsInteger:= _intNGift;
  if Text = _stGift then
    Sender.AsInteger:= _intGift;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MCalcFields(DataSet: TDataSet);
Var
  CoTel, CoCustPost, CoAddr, CoSeco,CoCountry : String;
Begin
  Dataset.FieldByName('CF_CUSNAME').AsString := FindCusName(Dataset.FieldByName('CUSTNO').AsString);
  Dataset.FieldByName('CF_PRJDESC').AsString := FindProjectDesc(Dataset.FieldByName('PRJCODE').AsString);
  If Exist_Cust(Dataset.FieldByName('CUSTNO').AsString, CoTel, CoCustPost, CoAddr, CoSeco,CoCountry) Then
   Begin
    Dataset.FieldByName('CF_TEL').AsString     := CoTel;
    Dataset.FieldByName('CF_POST').AsString    := CoCustPost;
    Dataset.FieldByName('CF_ADD').AsString     := CoAddr;
    Dataset.FieldByName('CF_CODE').AsString    := CoSeco;
    Dataset.FieldByName('CF_COUNTRY').AsString := FindCountryName(CoCountry);
   End;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_DCalcFields(DataSet: TDataSet);
Begin
  With FDM_DataEntry.qrTmp Do Begin
    Close ;
    Sql.Clear;
    Sql.Add('SELECT GDS_DESCF,GDS_DESCL,GDS_PRTNO');
    Sql.Add('FROM PSSALES.GOODS');
    Sql.Add('WHERE');
    Sql.Add('     GDS_CODE = :GDS_CODE');
    ParamByName('GDS_CODE').AsString := Dataset.FieldByName('GDS_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    If Not IsEmpty Then
    Begin
      Dataset.FieldByName('CF_FDESC').AsString := FieldByName('GDS_DESCF').AsString;
      Dataset.FieldByName('CF_LDESC').AsString := FieldByName('GDS_DESCL').AsString;
      Dataset.FieldByName('CF_PRTNO').AsString := FieldByName('GDS_PRTNO').AsString;
    End;
  End;
End;
//=============================================================================
Function TfrmEbidvoch.CoMasterCtrlInfo : Boolean;
begin
  Result := True;
  If DbedCoNo.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCoNo.SetFocus;
    Result := False;
    Exit;
  end
  else If dbcdCoStat.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbcdCoStat.SetFocus;
    Result := False;
    Exit;
  end
  else If DbedCoDate.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedCoDate.SetFocus;
    Result := False;
    Exit;
  end
  else If DbedCoPrj.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedPrj.SetFocus;
    Result := False;
    Exit;
  end;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MBISTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNGift   : Text:= _stNGift;
    _intGift    : Text:= _stGift;
  end;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MBISTATUSSetText(Sender: TField;const Text: String);
Begin
  if Text = _stNGift then
    Sender.AsInteger:= _intNGift;
  if Text = _stGift then
    Sender.AsInteger:= _intGift;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_DGDS_CODEValidate(Sender: TField);
begin
  If Sender.AsString = '' Then Exit;
  if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
    end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_DBIQTYValidate(Sender: TField);
begin
 if Sender.Value = Null then Exit;
 if (Sender.AsFloat > 9999999999) then
    begin
      MbError(RangeErr);
      Abort;
    end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_DBIQTYValidate(Sender: TField);
begin
 if Sender.Value = Null then Exit;
 if (Sender.AsFloat > 9999999999) then
    begin
      MbError(RangeErr);
      Abort;
    end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MCUSTNOValidate(Sender: TField);
begin
 With FDM_DataEntry.qrEVochCus_M Do Begin
   If (dbedCus.Text) = '' Then Exit;
   If Not ExistCustomer(dbedCus.Text) Then
   Begin
    MbError(InvalidCustCode);
    dbedCus.SetFocus;
    Abort;
   End;
    if not ExistRCust(FDM_DataEntry.qrEVochCus_M.FieldByName('CUSTNO').AsString,2) then
      begin
        MbError(InvalidCust);
        Abort;
    end;
 end;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_DNewRecord(DataSet: TDataSet);
begin
  DataSet.Edit;
  DataSet.FieldByName('BINUM').AsString   :=  BINUM;
  DataSet.FieldByName('BIDTYPE').AsInteger := _intCompetitors;
  DataSet.Post;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('BISTATUS').AsInteger := 1;
end;
//=============================================================================
Function  TfrmEbidvoch.CtrlInformation : Boolean;
Begin
  Result := True;
  With FDM_DataEntry.qrEVochCus_D Do
  Begin
    try
      DisableControls;
      First;
    while not Eof do
    begin
     If FieldByName('GDS_CODE').AsString = '' Then
      begin
        MbError(NotDataComplete);
        DbgrVoch.SetFocus;
        DbgrVoch.SelectedIndex := 1;
        Result := False;
        Break;
      end
      else If FieldByName('BIQTY').AsString = '' Then
       begin
        MbError(NotDataComplete);
        DbgrVoch.SetFocus;
        DbgrVoch.SelectedIndex := 5;
        Result := False;
        Break;
       end  ;
      Next;
    end;
    Finally
      EnableControls;
   End;
  End;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MBeforePost(DataSet: TDataSet);
begin
    FDM_DataEntry.qrEVochCus_M.FieldByName('BIDTYPE').AsInteger := 2;
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochComp_MBeforePost(DataSet: TDataSet);
begin
    FDM_DataEntry.qrEVochComp_M.FieldByName('BIDTYPE').AsInteger := 1;
end;
//=============================================================================
Function TfrmEbidvoch.MasterCtrlInfo : Boolean;
begin
  Result := True;
  If DbedNo.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedNo.SetFocus;
    Result := False;
    Exit;
  end
  else If DbcbStat.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbcbStat.SetFocus;
    Result := False;
    Exit;
  end
  else If DbedDate.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedDate.SetFocus;
    Result := False;
    Exit;
  end
  else If DbedPrj.Text = '' Then
  begin
    MbError(NotDataComplete);
    DbedPrj.SetFocus;
    Result := False;
    Exit;
  end;
end;
//=============================================================================
Procedure TfrmEbidvoch.DsEVochCusStateChange(Sender: TObject);
begin
  G_StateChange(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D, BtnSave, BtnDel);
end;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_DCalcFields(DataSet: TDataSet);
Begin
  With FDM_DataEntry.qrTmp Do Begin
    Close ;
    Sql.Clear;
    Sql.Add('SELECT GDS_DESCF,GDS_DESCL,GDS_PRTNO');
    Sql.Add('FROM PSSALES.GOODS');
    Sql.Add('WHERE');
    Sql.Add('     GDS_CODE = :GDS_CODE');
    ParamByName('GDS_CODE').AsString := Dataset.FieldByName('GDS_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    If Not IsEmpty Then
    Begin
      Dataset.FieldByName('CF_FDESC').AsString := FieldByName('GDS_DESCF').AsString;
      Dataset.FieldByName('CF_LDESC').AsString := FieldByName('GDS_DESCL').AsString;
      Dataset.FieldByName('CF_PRTNO').AsString := FieldByName('GDS_PRTNO').AsString;
    End;
  End;
End;
//=============================================================================
procedure TfrmEbidvoch.qrEVochCus_MCalcFields(DataSet: TDataSet);
Var
  Tel, CustPost, Addr, Seco,Country : String;
Begin
  Dataset.FieldByName('CF_CUSNAME').AsString := FindCusName(Dataset.FieldByName('CUSTNO').AsString);
  Dataset.FieldByName('CF_PRJDESC').AsString := FindProjectDesc(Dataset.FieldByName('PRJCODE').AsString);
  If Exist_Cust(Dataset.FieldByName('CUSTNO').AsString, Tel, CustPost, Addr, Seco,Country) Then
   Begin
    Dataset.FieldByName('CF_TEL').AsString     := Tel;
    Dataset.FieldByName('CF_POST').AsString    := CustPost;
    Dataset.FieldByName('CF_ADD').AsString     := Addr;
    Dataset.FieldByName('CF_CODE').AsString    := Seco;
    Dataset.FieldByName('CF_COUNTRY').AsString := FindCountryName(Country);
   End;
End;
//=============================================================================
procedure TfrmEbidvoch.qrAfterDelete(DataSet: TDataSet);
begin
  If DataSet = FDM_DataEntry.qrEVochCus_D then
    BtnSave.Enabled := (MabnaInfo.HasAccess(BtnDel.Tag));
end;
//=============================================================================
procedure TfrmEbidvoch.qrBeforeDelete(DataSet: TDataSet);
begin
 Internal := True;
end;
//=============================================================================
procedure TfrmEbidvoch.DBEdit3Change(Sender: TObject);
begin
//
end;

procedure TfrmEbidvoch.pgMainChange(Sender: TObject);
begin
//
end;

procedure TfrmEbidvoch.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEbidvoch.sbExit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmEbidvoch.FormShow(Sender: TObject);
begin
  pgMain.ActivePage := tbsAdve;
  MbDB.StartTransaction(FDb);
end;

procedure TfrmEbidvoch.SpeedButton8Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code,2) then
  begin
    dbedCus.SetFocus;
    with FDM_DataEntry.qrEVochCus_M do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEbidvoch.SpeedButton9Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code,1) then
  begin
    dbedCoCusNo.SetFocus;
    with FDM_DataEntry.qrEVochComp_M do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEbidvoch.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpBidVch(Code,1) then
  begin
    dbedCoNo.SetFocus;
    with FDM_DataEntry.qrEVochComp_M do
    begin
      Edit;
      FieldByName('BINUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEbidvoch.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpBidVch(Code,2) then
  begin
    dbedNo.SetFocus;
    with FDM_DataEntry.qrEVochCus_M do
    begin
      Edit;
      FieldByName('BINUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEbidvoch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 SeqControl.Free;
 SeqControlCo.Free;
 Action := CAFree;
end;

procedure TfrmEbidvoch.FormCreate(Sender: TObject);
begin
  FDM_DataEntry := TDM_DataEntry(MbDm.GetDM(FDM));
//  SetStatusBar(stbCrr);
  With FDM_DataEntry Do
  begin
    dsEVochCus_M.OnStateChange := Nil;
    DsEVochCus_M.OnStateChange := DsEVochCusStateChange;
    qrEVochCus_M.OnCalcFields  := qrEVochCus_MCalcFields;
    qrEVochCus_M.OnNewRecord   := qrEVochCus_MNewRecord;
    qrEVochCus_MBISTATUS.OnGetText     := qrEVochCus_MBISTATUSGetText;
    qrEVochCus_MBISTATUS.OnSetText     := qrEVochCus_MBISTATUSSetText;
    qrEVochCus_MCUSTNO.OnValidate      := qrEVochCus_MCUSTNOValidate;
    qrEVochCus_MPRJCODE.OnValidate      := qrEVochCus_MPRJCODEValidate;
    qrEVochCus_M.BeforePost      := qrEVochCus_MBeforePost;

    DsEVochCus_D.OnStateChange := Nil;
    DsEVochCus_D.OnStateChange := DsEVochCusStateChange;
    qrEVochCus_D.OnCalcFields  := qrEVochCus_DCalcFields;
    qrEVochCus_D.OnNewRecord   := qrEVochCus_DNewRecord;
    qrEVochCus_D.AfterDelete   := qrAfterDelete;
    qrEVochCus_D.BeforeDelete  := qrBeforeDelete;
    qrEVochCus_DGDS_CODE.OnValidate    := qrEVochCus_DGDS_CODEValidate;
    qrEVochCus_DBIQTY.OnValidate    := qrEVochCus_DBIQTYValidate;
    qrEVochCus_DBIDLVDTE.OnValidate    := qrEVochCus_DBIDLVDTEValidate;
//=============================«”‰«œ‘—ﬂ ================================
    dsEVochComp_M.OnStateChange := Nil;
    DsEVochComp_M.OnStateChange := DsEVochCompStateChange;
    qrEVochComp_M.OnCalcFields  := qrEVochComp_MCalcFields;
    qrEVochComp_M.OnNewRecord   := qrEVochComp_MNewRecord;
    qrEVochComp_MBISTATUS.OnGetText     := qrEVochComp_MBISTATUSGetText;
    qrEVochComp_MBISTATUS.OnSetText     := qrEVochComp_MBISTATUSSetText;
    qrEVochComp_MCUSTNO.OnValidate      := qrEVochComp_MCUSTNOValidate;
    qrEVochComp_M.BeforePost            := qrEVochComp_MBeforePost;
    qrEVochComp_MPRJCODE.OnValidate     := qrEVochComp_MPRJCODEValidate;

    DsEVochComp_D.OnStateChange := Nil;
    DsEVochComp_D.OnStateChange := DsEVochCompStateChange;
    qrEVochComp_D.OnCalcFields  := qrEVochComp_DCalcFields;
    qrEVochComp_D.OnNewRecord   := qrEVochComp_DNewRecord;
    qrEVochComp_D.AfterDelete   := qrAfterDeleteCo;
    qrEVochComp_D.BeforeDelete  := qrBeforeDelete;
    qrEVochComp_DGDS_CODE.OnValidate    := qrEVochComp_DGDS_CODEValidate;
    qrEVochComp_DBIQTY.OnValidate    := qrEVochComp_DBIQTYValidate;
    qrEVochComp_DBIDLVDTE.OnValidate    := qrEVochComp_DBIDLVDTEValidate;

  End;
  InitSeqCntrl;
  SetFormColor(Self,_FormColor);
end;

procedure TfrmEbidvoch.dbedNoExit(Sender: TObject);
begin
  FIsLock := False;
  If DbedNo.Text = '' Then Exit;
  BINUM := DbedNo.Text;
  MbDB.RollBack(FDb);
  If AutoSelect(FDB, FDM_DataEntry.qrEVochCus_M, 'BIDVCHTIT_T', 1, FIsLock,'BIDTYPE in(2,3)') then
    SelectEmpty(FDM_DataEntry.qrEVochCus_D,'BIDVCHDTL_T')
  Else
    AutoSelect(FDB, FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochCus_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 2,3)' );
end;

procedure TfrmEbidvoch.dbedNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
     SpeedButton2Click(Sender);
end;

procedure TfrmEbidvoch.PostVochCust;
Begin
  MasterCtrlInfo;
  If Not CtrlInformation Then
    Exit;
  If FIsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
  With FDM_DataEntry Do
  begin
    If Not (qrEVochCus_D.State in dsEditModes) then
      qrEVochCus_D.Edit;
    qrEVochCus_D.Post;
    qrEVochCus_M.ApplyUpdates;
//    qrEVochCus_D.ApplyUpdates;
    DeleteRecord(dbedNo.Text,_intCompetitors);
    InsertRecordVch;
    MbDB.Commit(FDb);
    SelectEmpty(FDM_DataEntry.qrEVochCus_D,'BIDVCHDTL_T');
    SelectEmpty(FDM_DataEntry.qrEVochCus_M,'BIDVCHTIT_T');
    DbedNo.SetFocus;
    BtnSave.Enabled := False;
  end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      MbError(ExpHandleM(E));
     end;
  end;
End;
procedure TfrmEbidvoch.btnSaveClick(Sender: TObject);
begin
   PostVochCust;
end;

procedure TfrmEbidvoch.tbsAdveShow(Sender: TObject);
begin
  FIsLock := False;
  SelectEmpty(FDM_DataEntry.qrEVochCus_M,'BIDVCHTIT_T');
  SelectEmpty(FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T');
  dbedNo.SetFocus;
end;

procedure TfrmEbidvoch.pgMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : AllowChange := CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D, FDM);
    1 : AllowChange := CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D, FDM);
  End;

end;

procedure TfrmEbidvoch.dbgrVochEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  If DbgrVoch.SelectedField.FieldName = 'GDS_CODE' Then
  begin
    if HelpGds(Code) then
    begin
      with DbgrVoch.DataSource.DataSet do
        begin
          Edit;
          FieldByName('GDS_CODE').AsString := Code;
          DbgrVoch.SelectedIndex := DbgrVoch.SelectedIndex + 4;
        end;
    end;
  end ;
end;

procedure TfrmEbidvoch.SpeedButton4Click(Sender: TObject);
var
  Code: string;
begin
  if HelpPrj(Code) then
  begin
    dbedPrj.SetFocus;
    with FDM_DataEntry.qrEVochCus_M do
    begin
      Edit;
      FieldByName('PRJCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;
procedure TfrmEbidvoch.DelVochCust;
Begin
  If FIsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If MbMessage(DeleteConfirm ,mtWarning ,[mbYes,mbNo], mbNo)= mrYes then
  begin
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    Try
      With FDM_DataEntry  do
      begin
        qrTmp.Close;
        qrTmp.Sql.Clear;
        qrTmp.Sql.Add('DELETE FROM '+SchemaName+'BIDVCHDTL_T ');
        qrTmp.Sql.Add('WHERE  BINUM = :NO ');
        qrTmp.Sql.Add('AND    BIDTYPE = :DTYPE ');
        qrTmp.ParamByName('DTYPE').AsInteger := 2;
        qrTmp.ParamByName('NO').AsString := BINUM;
        qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
        qrTmp.ExecSQL;
        qrEVochCus_M.Delete;
        qrEVochCus_M.ApplyUpdates;
        MbDB.Commit(FDb);
        SelectEmpty(FDM_DataEntry.qrEVochCus_D,'BIDVCHDTL_T');
        SelectEmpty(FDM_DataEntry.qrEVochCus_M,'BIDVCHTIT_T');
        DbedNo.SetFocus;
      end;
    Except on e: Exception Do
     begin
       MbDB.RollBack(FDb);
     end;
    end;
  end;
End;
procedure TfrmEbidvoch.btnDelClick(Sender: TObject);
begin
  case pgMain.ActivePage.PageIndex  of
   1: DelVochCust;
  End;

end;

procedure TfrmEbidvoch.sbLast1Click(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochCus_M, 'BIDVCHTIT_T', 1, Ord(_Last), FIsLock,'BIDTYPE IN(2,3)');
    If Not FDM_DataEntry.qrEVochCus_M.IsEmpty Then
    Begin
     AutoSelect(FDB, FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochCus_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 2,3)' );
     ProcButtons(SbFirst1,SbPrev1,SbNext1,SbLast1,ResultNavigate);
    End;
  end;
end;

procedure TfrmEbidvoch.sbNext1Click(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochCus_M, 'BIDVCHTIT_T', 1, Ord(_Next), FIsLock,'BIDTYPE IN(2,3)');
    If Not FDM_DataEntry.qrEVochCus_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochCus_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 2,3)' );
       ProcButtons(SbFirst1,SbPrev1,SbNext1,SbLast1,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.sbPrev1Click(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochCus_M, 'BIDVCHTIT_T', 1, Ord(_Prev), FIsLock,'BIDTYPE IN(2,3)');
    If Not FDM_DataEntry.qrEVochCus_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochCus_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 2,3)' );
       ProcButtons(SbFirst1,SbPrev1,SbNext1,SbLast1,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.sbFirst1Click(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochCus_M, 'BIDVCHTIT_T', 1, Ord(_First), FIsLock,'BIDTYPE IN(2,3)');
    If Not FDM_DataEntry.qrEVochCus_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochCus_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochCus_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 2,3)' );
       ProcButtons(SbFirst1,SbPrev1,SbNext1,SbLast1,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.dbedCoNoExit(Sender: TObject);
begin
  FIsLock := False;
  If DbedCoNo.Text = '' Then Exit;
  COBINUM := DbedCoNo.Text;
  MbDB.RollBack(FDb);
  If AutoSelect(FDB, FDM_DataEntry.qrEVochComp_M, 'BIDVCHTIT_T', 1, FIsLock,'BIDTYPE in(1,3)') then
    SelectEmpty(FDM_DataEntry.qrEVochComp_D,'BIDVCHDTL_T')
  Else
    AutoSelect(FDB, FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T', 0, FIsLock,
               'BINUM = ' + FDM_DataEntry.qrEVochComp_M.FieldByName('BINUM').AsString +
               'AND BIDTYPE in( 1,3)' );

end;

procedure TfrmEbidvoch.SpeedButton5Click(Sender: TObject);
var
  Code: string;
begin
  if HelpPrj(Code) then
  begin
    dbedCoPrj.SetFocus;
    with FDM_DataEntry.qrEVochComp_M do
    begin
      Edit;
      FieldByName('PRJCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEbidvoch.dbgrCoVochEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  If DbgrCoVoch.SelectedField.FieldName = 'GDS_CODE' Then
  begin
    if HelpGds(Code) then
    begin
      with DbgrCoVoch.DataSource.DataSet do
        begin
          Edit;
          FieldByName('GDS_CODE').AsString := Code;
          DbgrCoVoch.SelectedIndex := DbgrCoVoch.SelectedIndex + 4;
        end;
    end;
  end
end;

procedure TfrmEbidvoch.btnPostClick(Sender: TObject);
begin
  CoMasterCtrlInfo;
  If Not CtrlInformationCo Then
    Exit;
  If FIsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
  With FDM_DataEntry Do
  begin
    If Not (qrEVochComp_D.State in dsEditModes) then
      qrEVochComp_D.Edit;
    qrEVochComp_D.Post;
    qrEVochComp_M.ApplyUpdates;
//    qrEVochComp_D.ApplyUpdates;

    DeleteRecord(dbedCoNo.Text,_intCustomers);
    InsertRecordCoVch;
    MbDB.Commit(FDb);
    SelectEmpty(FDM_DataEntry.qrEVochComp_D,'BIDVCHDTL_T');
    SelectEmpty(FDM_DataEntry.qrEVochComp_M,'BIDVCHTIT_T');
    DbedCoNo.SetFocus;
    BtnPost.Enabled := False;
  end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      MbError(ExpHandleM(E));
     end;
  end;

end;

procedure TfrmEbidvoch.btnDeleteClick(Sender: TObject);
begin
  If FIsLock Then
  begin
    Mberror(LockRecord);
    Exit;
  end;
  If MbMessage(DeleteConfirm ,mtWarning ,[mbYes,mbNo], mbNo)= mrYes then
  begin
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    Try
      With FDM_DataEntry  do
      begin
        qrTmp.Close;
        qrTmp.Sql.Clear;
        qrTmp.Sql.Add('DELETE FROM '+SchemaName+'BIDVCHDTL_T ');
        qrTmp.Sql.Add('WHERE  BINUM   = :NO ');
        qrTmp.Sql.Add('AND    BIDTYPE = :DTYPE ');
        qrTmp.ParamByName('NO').AsString := CoBINUM;
        qrTmp.ParamByName('DTYPE').AsInteger := 1;
        qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
        qrTmp.ExecSQL;
        qrEVochComp_M.Delete;
        qrEVochComp_M.ApplyUpdates;
        MbDB.Commit(FDb);
        SelectEmpty(FDM_DataEntry.qrEVochComp_D,'BIDVCHDTL_T');
        SelectEmpty(FDM_DataEntry.qrEVochComp_M,'BIDVCHTIT_T');
        DbedCoNo.SetFocus;
      end;
    Except on e: Exception Do
     begin
       MbDB.RollBack(FDb);
     end;
    end;
  end;

end;

procedure TfrmEbidvoch.sbLastClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochComp_M, 'BIDVCHTIT_T', 1, Ord(_Last), FIsLock,'BIDTYPE IN(1,3)');
    If Not FDM_DataEntry.qrEVochComp_M.IsEmpty Then
    Begin
     AutoSelect(FDB, FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T', 0, FIsLock,
                'BINUM = ' + FDM_DataEntry.qrEVochComp_M.FieldByName('BINUM').AsString +
                'AND BIDTYPE in( 1,3)' );
     ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
    End;
  end;
end;

procedure TfrmEbidvoch.sbNextClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochComp_M, 'BIDVCHTIT_T', 1, Ord(_Next), FIsLock,'BIDTYPE IN(1,3)');
    If Not FDM_DataEntry.qrEVochComp_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T', 0, FIsLock,
                  'BINUM = ' + FDM_DataEntry.qrEVochComp_M.FieldByName('BINUM').AsString +
                  'AND BIDTYPE in( 1,3)' );
       ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.sbPrevClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochComp_M, 'BIDVCHTIT_T', 1, Ord(_Prev), FIsLock,'BIDTYPE IN(1,3)');
    If Not FDM_DataEntry.qrEVochComp_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T', 0, FIsLock,
                  'BINUM = ' + FDM_DataEntry.qrEVochComp_M.FieldByName('BINUM').AsString +
                  'AND BIDTYPE in( 1,3)' );
       ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.sbFirstClick(Sender: TObject);
Var ResultNavigate : Integer;
begin
  FIsLock := False;
  If CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D,FDM) Then
  begin
    ResultNavigate := AutoNavigate(FDB, FDM_DataEntry.qrEVochComp_M, 'BIDVCHTIT_T', 1, Ord(_First), FIsLock,'BIDTYPE IN(1,3)');
    If Not FDM_DataEntry.qrEVochComp_M.IsEmpty Then
     Begin
       AutoSelect(FDB, FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T', 0, FIsLock,
                  'BINUM = ' + FDM_DataEntry.qrEVochComp_M.FieldByName('BINUM').AsString +
                  'AND BIDTYPE in( 1,3)' );
       ProcButtons(SbFirst,SbPrev,SbNext,SbLast,ResultNavigate);
     End;
  end;
end;

procedure TfrmEbidvoch.tbsCustShow(Sender: TObject);
begin
  FIsLock := False;
  SelectEmpty(FDM_DataEntry.qrEVochComp_M,'BIDVCHTIT_T');
  SelectEmpty(FDM_DataEntry.qrEVochComp_D, 'BIDVCHDTL_T');
  dbedCoNo.SetFocus;
end;

procedure TfrmEbidvoch.dbgrCoVochEnter(Sender: TObject);
begin
  with FDM_DataEntry.dsEVochComp_D do
  begin
    if not(State in [dsEdit,dsInsert]) then
      Edit;
  end;
  dbgrCoVoch.SelectedIndex := 1;
end;

procedure TfrmEbidvoch.DeleteRecord(FBidNum: String;FType: Integer);
begin
  with FDM_DataEntry.qrTmp do
  begin
    Sql.Clear;
    Sql.Add('DELETE FROM PSSALES.BIDVCHDTL_T ');
    Sql.Add('WHERE  BINUM   = :BINUM         ');
    Sql.Add('AND    BIDTYPE = :BIDTYPE       ');
    ParamByName('BINUM').AsString    :=  FBidNum;
    ParamByName('BIDTYPE').AsInteger :=  FType;
    Sql := MBSqlConvert(Sql);
    ExecSql;
  end;
end;

procedure TfrmEbidvoch.InsertRecordVch;
begin
  with FDM_DataEntry.qrEVochCus_D do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with  FDM_DataEntry.qrTmp do
        begin
          Sql.Clear;
          Sql.Add('INSERT INTO PSSALES.BIDVCHDTL_T                         ');
          Sql.Add('(BIDTYPE, BINUM, BIROW, GDS_CODE, BIQTY, BIDLVDTE)      ');
          Sql.Add('VALUES                                                  ');
          Sql.Add('(:BIDTYPE, :BINUM, :BIROW, :GDS_CODE, :BIQTY, :BIDLVDTE)');
          ParamByName('BINUM').AsString    :=  FDM_DataEntry.qrEVochCus_D.FieldByName('BINUM').AsString;
          ParamByName('BIDTYPE').AsString  :=  FDM_DataEntry.qrEVochCus_D.FieldByName('BIDTYPE').AsString;
          ParamByName('BIROW').AsString    :=  FDM_DataEntry.qrEVochCus_D.FieldByName('BIROW').AsString;
          ParamByName('GDS_CODE').AsString :=  FDM_DataEntry.qrEVochCus_D.FieldByName('GDS_CODE').AsString;
          ParamByName('BIQTY').AsString    :=  FDM_DataEntry.qrEVochCus_D.FieldByName('BIQTY').AsString;
          ParamByName('BIDLVDTE').AsString :=  FDM_DataEntry.qrEVochCus_D.FieldByName('BIDLVDTE').AsString;
          Sql := MBSqlConvert(Sql);
          ExecSql;
        end;
        Next;
      end;
    Finally
      EnableControls;
    end;
  end;
end;

procedure TfrmEbidvoch.InsertRecordCoVch;
begin
  with FDM_DataEntry.qrEVochComp_D do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with  FDM_DataEntry.qrTmp do
        begin
          Sql.Clear;
          Sql.Add('INSERT INTO PSSALES.BIDVCHDTL_T                         ');
          Sql.Add('(BIDTYPE, BINUM, BIROW, GDS_CODE, BIQTY, BIDLVDTE)      ');
          Sql.Add('VALUES                                                  ');
          Sql.Add('(:BIDTYPE, :BINUM, :BIROW, :GDS_CODE, :BIQTY, :BIDLVDTE)');
          ParamByName('BINUM').AsString    :=  FDM_DataEntry.qrEVochComp_D.FieldByName('BINUM').AsString;
          ParamByName('BIDTYPE').AsString  :=  FDM_DataEntry.qrEVochComp_D.FieldByName('BIDTYPE').AsString;
          ParamByName('BIROW').AsString    :=  FDM_DataEntry.qrEVochComp_D.FieldByName('BIROW').AsString;
          ParamByName('GDS_CODE').AsString :=  FDM_DataEntry.qrEVochComp_D.FieldByName('GDS_CODE').AsString;
          ParamByName('BIQTY').AsString    :=  FDM_DataEntry.qrEVochComp_D.FieldByName('BIQTY').AsString;
          ParamByName('BIDLVDTE').AsString :=  FDM_DataEntry.qrEVochComp_D.FieldByName('BIDLVDTE').AsString;
          Sql := MBSqlConvert(Sql);
          ExecSql;
        end;
        Next;
      end;

    Finally
      EnableControls;
    end;
  end;
end;

procedure TfrmEbidvoch.dbedDateExit(Sender: TObject);

function IsYearCorrect: Boolean;
var
  Temp1, Temp2: string[2];
begin
  Temp1:= FDM_DataEntry.qrEVochCus_M.FieldByName('BIDATE').AsString;
  Temp2:= Temp1[1] + Temp1[2];

  if StrToInt(Temp2) = System_YY then
    Result:= True
  else
    Result:= False;
end;

begin
  if not (FDM_DataEntry.qrEVochCus_M.FieldByName('BIDATE').AsString = '') then
    if (not MsDateIsValid1(dbedDate.Text, False)) or
       (not IsYearCorrect) then
    begin
      MbMessage(InvalidDate, mtError, [mbOk], mbOk);
      dbedDate.SetFocus;
      dbedDate.SelStart:= 0;
      Abort;
    end;
end;

procedure TfrmEbidvoch.dbgrVochEnter(Sender: TObject);
begin
  with FDM_DataEntry.dsEVochCus_D do
  begin
    if not(State in [dsEdit,dsInsert]) then
      Edit;
  end;
  dbgrVoch.SelectedIndex := 1;
end;

procedure TfrmEbidvoch.N1Click(Sender: TObject);
begin
  DbgrVoch.DataSource.DataSet.Insert;
end;

procedure TfrmEbidvoch.N2Click(Sender: TObject);
begin
  DbgrVoch.DataSource.DataSet.Delete;
end;

procedure TfrmEbidvoch.N3Click(Sender: TObject);
begin
  DbgrCoVoch.DataSource.DataSet.Insert;
end;

procedure TfrmEbidvoch.N4Click(Sender: TObject);
begin
  DbgrCoVoch.DataSource.DataSet.Delete;
end;

procedure TfrmEbidvoch.dbedCoDateExit(Sender: TObject);

function IsYearCorrect: Boolean;
var
  Temp1, Temp2: string[2];
begin
  Temp1:= FDM_DataEntry.qrEVochComp_M.FieldByName('BIDATE').AsString;
  Temp2:= Temp1[1] + Temp1[2];

  if StrToInt(Temp2) = System_YY then
    Result:= True
  else
    Result:= False;
end;

begin
  if not (FDM_DataEntry.qrEVochComp_M.FieldByName('BIDATE').AsString = '') then
    if (not MsDateIsValid1(dbedCoDate.Text, False)) or
       (not IsYearCorrect) then
    begin
      MbMessage(InvalidDate, mtError, [mbOk], mbOk);
      dbedCoDate.SetFocus;
      dbedCoDate.SelStart:= 0;
      Abort;
    end;
end;

procedure TfrmEbidvoch.dbgrCoVochColEnter(Sender: TObject);
begin
  if dbgrCoVoch.SelectedIndex = 0 then
    dbgrCoVoch.SelectedIndex := 1;
  if dbgrCoVoch.SelectedIndex = 2 then
    dbgrCoVoch.SelectedIndex := 5;
  if dbgrCoVoch.SelectedIndex = 4 then
    dbgrCoVoch.SelectedIndex := 1;

end;

procedure TfrmEbidvoch.dbgrVochColEnter(Sender: TObject);
begin
  if dbgrVoch.SelectedIndex = 0 then
    dbgrVoch.SelectedIndex := 1;
  if dbgrVoch.SelectedIndex = 2 then
    dbgrVoch.SelectedIndex := 5;
  if dbgrVoch.SelectedIndex = 4 then
    dbgrVoch.SelectedIndex := 1;
end;

procedure TfrmEbidvoch.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : CanClose := CheckChanges(FDM_DataEntry.qrEVochComp_M, FDM_DataEntry.qrEVochComp_D, FDM);
    1 : CanClose := CheckChanges(FDM_DataEntry.qrEVochCus_M, FDM_DataEntry.qrEVochCus_D, FDM);
  end;
end;

end.
