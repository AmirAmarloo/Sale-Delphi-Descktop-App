{$I Direct.Inc}
unit EPerToChannle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBTables, DB, Grids,
  DBGrids,
  {$I MbUses.Inc};

type
  TfrmEPerToChannle = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    qrTemp: TQuery;
    ComboBox1: TComboBox;
    qrEPerToChannle: TQuery;
    usEPerToChannle: TUpdateSQL;
    dsEPerToChannle: TDataSource;
    qrEPerToChannleUSER_NAME: TStringField;
    qrEPerToChannleCH_CODE: TStringField;
    DBGrid1: TDBGrid;
    qrEPerToChannleCF_ChannleName: TStringField;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure qrEPerToChannleCalcFields(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure qrEPerToChannleNewRecord(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure qrEPerToChannleCH_CODEValidate(Sender: TField);
  private
    { Private declarations }
    procedure InsertInToTempUser(Val1, Val2: String);
  public
    { Public declarations }
  end;

var
  frmEPerToChannle: TfrmEPerToChannle;

implementation

uses Utility, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEPerToChannle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEPerToChannle.FormShow(Sender: TObject);
begin
  OpenUserDef;
  SelectEmpty(qrEPerToChannle, 'PERCHANNLE_T');
end;

procedure TfrmEPerToChannle.FormCreate(Sender: TObject);
var
  TmpFile: TMbAccessFile;
  TmpAccess: TMbProgUser;
  Finished: Boolean;
begin
  MyDropTable('TMPUSER_TMP');
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('CREATE TABLE TMPUSER_TMP');
    SQL.Add('(USER_NAME VARCHAR2(100) NULL,');
    SQL.Add(' USER_ID VARCHAR2(100) NULL)');
    ExecSQL;
  end;
  TmpFile := nil;        { File Handle Mabna.Usr }
  TmpFile := MabnaInfo.CreateMbAccessFile;
  Try
    TmpAccess := TMbProgUser.Create(TmpFile,nil);
    Try
      with TmpAccess do
      begin
        ProgId := MabnaInfo.ProgramID;
        Finished := not FindFirst;
        while not Finished do
        begin
//          cbUser.Items.Add(TmpAccess.LogonName);
//          cbUserId.Items.Add(IntToStr(TmpAccess.UserID));
          InsertInToTempUser(TmpAccess.LogonName, IntToStr(TmpAccess.UserID));
          Finished := not FindNext;
        end;
      end;
    Finally
      if TmpAccess <> nil then TmpAccess.Free;
    end;
  Finally
    if TmpFile <> nil then TmpFile.Free;
  end;
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT * FROM TMPUSER_TMP');
    SQL.Add('WHERE USER_NAME IS NOT NULL');
    Open;
    while not Eof do
    begin
      ComboBox1.Items.Add(FieldByName('USER_NAME').AsString);
      Next;
    end;
  end;

//  SetFormColor(Self,_FormColor);
end;

procedure TfrmEPerToChannle.InsertInToTempUser(Val1, Val2: String);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO TMPUSER_TMP');
    SQL.Add('(USER_NAME, USER_ID)');
    SQL.Add('VALUES');
    SQL.Add('(:USER_NAME, :USER_ID)');
    ParamByName('USER_NAME').AsString := Val1;
    ParamByName('USER_ID').AsString := Val2;
    ExecSQL;
  end;
end;

procedure TfrmEPerToChannle.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEPerToChannle.qrEPerToChannleCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_ChannleName').AsString := GetChannleName(DataSet.FieldByName('CH_CODE').AsString);
end;

procedure TfrmEPerToChannle.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpSalesChannle(Code) then
  begin
    with qrEPerToChannle do
    begin
      Edit;
      FieldByName('CH_CODE').AsString:= Code;
    end;
  end;
end;

procedure TfrmEPerToChannle.ComboBox1Change(Sender: TObject);
begin
  with qrEPerToChannle do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERCHANNLE_T');
    SQL.Add('WHERE USER_NAME = :USER_NAME');
    ParamByName('USER_NAME').AsString := ComboBox1.Text;
    Open;
  end;
end;

procedure TfrmEPerToChannle.qrEPerToChannleNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('USER_NAME').AsString := ComboBox1.Text;
end;

procedure TfrmEPerToChannle.BtnPostClick(Sender: TObject);
begin
  qrEPerToChannle.ApplyUpdates;
end;

procedure TfrmEPerToChannle.BtnDelClick(Sender: TObject);
begin
  qrEPerToChannle.Delete;
  qrEPerToChannle.ApplyUpdates;
end;

procedure TfrmEPerToChannle.qrEPerToChannleCH_CODEValidate(Sender: TField);
begin
  if Sender.AsString = '' then Exit;
  if GetChannleName(Sender.AsString) = '' then
  begin
    MbError(NoExistRecord);
    Abort;
  end;
end;

end.
