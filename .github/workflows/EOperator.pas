 {$I Direct.Inc}
unit EOperator;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,DMUParam, DB,
  Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, Menus, {$I MbUses.inc};

type
  TfrmEOperator = class(TMbForm)
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    stbCrr: TStatusBar;
    BtnDelete: TBitBtn;
    Panel1: TPanel;
    DbgrOperator: TDBGrid;
    BtnPost: TBitBtn;
    sbCancel: TSpeedButton;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure DbgrOperatorEditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
  private
    { Private declarations }
    FDM_Param : TDM_Param;
    FSeqControl: TCuDBGrid;
    Internal,IsLock : Boolean;
    procedure DsEOperatorStateChange(Sender: TObject);
    procedure qrBeforeDelete(DataSet: TDataSet);
    procedure qrAfterDelete(DataSet: TDataSet);
    procedure qrEOperatorBeforeScroll(DataSet: TDataSet);
    procedure qrEOperatorNewRecord(DataSet: TDataSet);
    Procedure qrEOperatorBeforePost(DataSet: TDataSet);
    Procedure qrEOperatorMs_IdNoValidate(Sender: TField);

    Function  CtrlInformation : Boolean;
    procedure InitSequence;    
  public
    { Public declarations }
  end;

{var
  frmEOperator: TfrmEOperator;}

implementation

uses  Utility, UMessage, Help, DMUDataBase, Function;
{$R *.DFM}

procedure TfrmEOperator.DsEOperatorStateChange(Sender: TObject);
begin
  G_StateChange(FDM_Param.qrEOperator, FDM_Param.qrEOperator, btnPost, btnDelete);
end;
//******************************************************************************
procedure TfrmEOperator.qrBeforeDelete(DataSet: TDataSet);
begin
  Internal := True;
end;
//******************************************************************************
procedure TfrmEOperator.qrAfterDelete(DataSet: TDataSet);
begin
  If DataSet = FDM_Param.qrEOperator then
    BtnPost.Enabled := (MabnaInfo.HasAccess(BtnDelete.Tag));
  Internal := False;
end;
//******************************************************************************
procedure TfrmEOperator.qrEOperatorBeforeScroll(DataSet: TDataSet);
begin
  If Internal then Exit;
  If RowDuplicate(DbgrOperator, ['MS_IDNO']) then
  begin
    MbError(DuplicateRow);
    DbgrOperator.SelectedIndex := 0;
    Abort;
  end;
end;
//******************************************************************************
procedure TfrmEOperator.qrEOperatorNewRecord(DataSet: TDataSet);
begin
  DbgrOperator.SelectedIndex := 0;
end;
//******************************************************************************
Procedure TfrmEOperator.qrEOperatorBeforePost(DataSet: TDataSet);
begin
  If DataSet.FieldByName('MS_IDNO').AsString = '' Then
  begin
    MbError(NotCompleteInfo);
    DbgrOperator.SelectedIndex := 0;
    Abort;
  end;
  If DataSet.FieldByName('USR_USERNAME').AsString = '' Then
  begin
    MbError(NotCompleteInfo);
    DbgrOperator.SelectedIndex := 1;
    Abort;
  end;
end;
//******************************************************************************
Procedure TfrmEOperator.qrEOperatorMs_IdNoValidate(Sender: TField);
begin
  If Sender.AsString = '' Then Exit;
  If Not PrsExist (Sender.AsString) Then
  begin
    MbError(InvalidCode);
    Abort;
  end;
  If Sender.Value > '999999999' Then
  begin
    MbError(NumberOutOfBound);
    Abort;
  end;
end;
//******************************************************************************
Function  TfrmEOperator.CtrlInformation : Boolean;
begin
  Result := True;
  If DbgrOperator.DataSource.Dataset.FieldByName('MS_IDNO').AsString = '' Then
  begin
    DbgrOperator.SelectedIndex := 0;
    MbError(NotCompleteInfo);
    Result := False;
    Exit;
  end;
  If DbgrOperator.DataSource.Dataset.FieldByName('USR_USERNAME').AsString = '' Then
  begin
    DbgrOperator.SelectedIndex := 1;
    MbError(NotCompleteInfo);
    Result := False;
    Exit;
  end;
end;
//******************************************************************************
procedure TfrmEOperator.DbgrOperatorEditButtonClick(Sender: TObject);
  Var Code : String;
begin
  If DbgrOperator.SelectedField.FieldName = 'MS_IDNO' Then
  begin
    If PrsHelp(Code) then
    begin
      with DbgrOperator.DataSource.DataSet do
        begin
          Edit;
          FieldByName('MS_IDNO').AsString := Code;
        end;
    end;
  end;
end;
//******************************************************************************
procedure TfrmEOperator.FormCreate(Sender: TObject);
begin
  FDM_Param := TDM_Param(MbDm.GetDM(FDM));
  SetStatusBar(stbCrr);
  With FDM_Param Do
    begin
      DsEOperator.OnStateChange      := Nil;
      DsEOperator.OnStateChange      := DsEOperatorStateChange;
      qrEOperator.BeforeDelete       := qrBeforeDelete;
      qrEOperator.AfterDelete        := qrAfterDelete;
      qrEOperator.BeforePost         := qrEOperatorBeforePost;
      qrEOperator.BeforeScroll       := qrEOperatorBeforeScroll;
      qrEOperator.OnNewRecord        := qrEOperatorNewRecord;
      qrEOperatorMs_IdNo.OnValidate := qrEOperatorMs_IdNoValidate;
    end;
  InitSequence;    
end;
//******************************************************************************
procedure TfrmEOperator.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MbFM.ReleaseFM(FFrm);
  Action := caFree;
end;
//******************************************************************************
procedure TfrmEOperator.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := CheckChanges(FDM_Param.qrEOperator, FDM_Param.qrEOperator,FDb);
end;
//******************************************************************************
procedure TfrmEOperator.FormShow(Sender: TObject);
begin
  IsLock := False;
  Internal := False;
  AutoSelect(FDB, FDM_Param.qrEOperator, 'USERS', 0, IsLock, '' ,' ORDER BY MS_IDNO');
  DbgrOperator.SelectedIndex := 0;
end;
//******************************************************************************
procedure TfrmEOperator.BtnPostClick(Sender: TObject);
begin
  If Not CtrlInformation then exit;
  If IsLock Then
   begin
     Mberror(RecInUseError);
     Exit;
   end;
  If RowDuplicate(DbgrOperator, ['MS_IDNO']) then
  begin
    DbgrOperator.SelectedIndex := 0;  
    MbError(DuplicateRow);
    Exit;
  end;
  If Not MbDB.InTransaction[FDb] Then
    MbDB.StartTransaction(FDb);
  Try
  With FDM_Param.qrEOperator Do
  begin
    ApplyUpdates;
    MbDB.Commit(FDb);
    AutoSelect(FDB, FDM_Param.qrEOperator, 'USERS', 0,IsLock,'' ,' ORDER BY MS_IDNO');
    DbgrOperator.SelectedIndex := 0;
    btnPost.Enabled := False;
  end;
  Except on e: Exception Do
     begin
      MbDB.RollBack(FDb);
      MbError(ExpHandleM(E));
     end;
  end;
end;
//******************************************************************************
procedure TfrmEOperator.BtnDeleteClick(Sender: TObject);
begin
  If IsLock Then
   begin
     Mberror(RecInUseError);
     Exit;
   end;
  If MbMessage(DoDelCnfrm ,mtWarning ,[mbYes,mbNo], mbNo)= mrYes then
  begin
    If Not MbDB.InTransaction[FDb] Then
      MbDB.StartTransaction(FDb);
    Try
      With FDM_Param do
      begin
        qrTmp.Close;
        qrTmp.Sql.Clear;
        qrTmp.Sql.Add('DELETE FROM PKINVENTORY.USERS ');
        qrTmp.Sql := MbSqlConvert(qrTmp.Sql);
        qrTmp.ExecSQL;
        MbDB.Commit(FDb);
        SelectEmpty(FDM_Param.qrEOperator,'USERS');
        DbgrOperator.SelectedIndex := 0;
      end;
    Except on e: Exception Do
     begin
       MbDB.RollBack(FDb);
       MbError(ExpHandleM(E));
     end;
    end;
  end;
end;
//******************************************************************************
procedure TfrmEOperator.N1Click(Sender: TObject);
begin
  With DbgrOperator.DataSource.DataSet Do
    begin
      Open;
      Insert;
    end;
end;
//******************************************************************************
procedure TfrmEOperator.N2Click(Sender: TObject);
begin
  With DbgrOperator.DataSource.DataSet Do
    begin
      Open;
      Delete;
      BtnPost.Enabled := (MabnaInfo.HasAccess(BtnDelete.Tag));
    end;
end;
//******************************************************************************
procedure TfrmEOperator.sbCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEOperator.InitSequence;
begin
  FSeqControl:= TCuDBGrid.Create(Self, DbgrOperator, '');
end;

end.
