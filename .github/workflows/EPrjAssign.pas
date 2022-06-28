{$I Direct.Inc}
unit EPrjAssign;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Mask,
  Menus,DbTables,DMUDataEntry, {$I MbUses.Inc};

type
  TFrmEPrjAssign = class(TMbForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label28: TLabel;
    SpeedButton10: TSpeedButton;
    Label27: TLabel;
    SpeedButton9: TSpeedButton;
    BtnPost: TBitBtn;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    EdCusNo: TEdit;
    EdPrjNo: TEdit;
    EdCusDesc: TEdit;
    EdPrjDesc: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbListClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedPrjNoExit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure EdCusNoExit(Sender: TObject);
    procedure EdPrjNoExit(Sender: TObject);
    procedure EdCusNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPrjNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   FDM_DataEntry: TDM_DataEntry;
   CusNo : String[6];
   FIsLock ,Internal,FlagHelp: Boolean;
   function CtrlInf: Boolean;
   procedure UpDatePrj;
   procedure SelectPrj;
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

{var
  FrmECustom: TFrmECustom;}

implementation

uses HCustom, HCountry, MainUnit, HMoin, HTaf, HPrj, Help, Functions,
  Utility, UMessage;

{$R *.DFM}


//=============================================================================
function TFrmEPrjAssign.CtrlInf: Boolean;
begin
  Result:= True;
  with FDM_DataEntry.qrEEntPrj do
  begin
    if edCusNo.Text = '' then
    begin
      MbError(NotDataComplete);
      edCusNo.SetFocus;
      Result:= False;
      Exit;
    end;
  End;
End;
//=============================================================================
procedure TFrmEPrjAssign.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEPrjAssign.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEPrjAssign.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEPrjAssign.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := CAFree;
end;

procedure TFrmEPrjAssign.sbListClick(Sender: TObject);
begin
 MainForm.acHMoin.Execute;
 FrmHMoin.ShowModal;
end;

procedure TFrmEPrjAssign.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHTaf.Execute;
 FrmHTaf.ShowModal;
end;

procedure TFrmEPrjAssign.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEPrjAssign.SpeedButton10Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    edCusNo.SetFocus;
    edCusNo.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEPrjAssign.SpeedButton9Click(Sender: TObject);
var
  Code: string;
begin
  if HelpPrj(Code) then
  begin
    edPrjNo.SetFocus;
    edPrjNo.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEPrjAssign.FormCreate(Sender: TObject);
begin
  FDM_DataEntry := TDM_DataEntry(MbDm.GetDM(FDM));
//  SetStatusBar(stbCrr);
  SetFormColor(Self,_FormColor);
end;

procedure TFrmEPrjAssign.FormShow(Sender: TObject);
begin
//  SelectEmpty(FDM_DataEntry.qrEEntPrj,'IDCUSTOMER_T');
//  FlagHelp := True;
end;

procedure TFrmEPrjAssign.dbedPrjNoExit(Sender: TObject);
begin
end;

//==============================================================================
procedure TFrmEPrjAssign.UpDatePrj;
begin
  with FDM_DataEntry.qrTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE SALES.IDCUSTOMER_T ');
    Sql.Add('SET PRJCODE = :PRJCODE      ');
    Sql.Add('WHERE CUSTNO = :CUSTNO      ');
    ParamByName('PRJCODE').AsString := edPrjNo.Text;
    ParamByName('CUSTNO').AsString  := edCusNo.Text ;
    Sql := MbSqlConvert(Sql);
    try
      ExecSQL;
      MbDB.Commit(FDB);
    except
      Raise;
    end;
    Close;
  end;
end;
//==============================================================================
procedure TFrmEPrjAssign.SelectPrj;
begin
  with FDM_DataEntry.qrTmp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PRJCODE FROM SALES.IDCUSTOMER_T ');
    Sql.Add('WHERE CUSTNO = :CUSTNO                   ');
    ParamByName('CUSTNO').AsString  := edCusNo.Text ;
    Sql := MbSqlConvert(Sql);
    Open;
    If NOT ISEmpty Then
    Begin
     EdPrjNo.Text := FDM_DataEntry.qrTmp.FieldByName('PRJCODE').AsString;
    End;
     edPrjDesc.Text := MbDb2St(FindProjectDesc(edPRJNo.Text),MbCurrentCharSetCode);
  end;
end;
//==============================================================================
procedure TFrmEPrjAssign.BtnPostClick(Sender: TObject);
begin
  if not CtrlInf then
    Exit;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    UpDatePrj;
    MbDB.Commit(FDB);
    EdCusNo.Clear;
    EdPrjNo.Clear;
    EdCusDesc.Clear;
    EdPrjDesc.Clear;
    EdCusNo.SetFocus;
  except on E: Exception do
     begin
       MbDB.RollBack(FDB);
       MbError(ExpHandleM(e));
     end;
  end;
End;

procedure TFrmEPrjAssign.EdCusNoExit(Sender: TObject);
begin
  If edCusNo.Text = '' Then  edCusDesc.Text := '';
  SelectPrj;
  if not (edCusNo.Text = '') then
  begin
    if not ExistCustomer(edCusNo.Text) then
    begin
      MbError(InvalidCode);
      edCusNo.SetFocus;
      Abort;
    end;
  End;
  edCusDesc.Text := MbDb2St(FindCusName(edCusNo.Text),MbCurrentCharSetCode);
end;

procedure TFrmEPrjAssign.EdPrjNoExit(Sender: TObject);
begin
  If edPrjNo.Text = '' Then  edPrjDesc.Text := '';
  if not (edPrjNo.Text = '') then
  begin
    if not ExistProject(edPrjNo.Text) then
    begin
      MbError(InvalidCode);
      edPrjNo.SetFocus;
      Abort;
    end;
  End;
  edPrjDesc.Text := MbDb2St(FindProjectDesc(edPRJNo.Text),MbCurrentCharSetCode);
end;

procedure TFrmEPrjAssign.EdCusNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
     SpeedButton10Click(Sender);
end;

procedure TFrmEPrjAssign.EdPrjNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
     SpeedButton9Click(Sender);
end;

end.
