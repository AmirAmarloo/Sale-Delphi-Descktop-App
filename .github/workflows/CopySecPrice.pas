{$I Direct.Inc}
unit CopySecPrice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, DB, DBTables,
  {$I MbUses.Inc};

type
  TfrmCopySecPrice = class(TMbForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit2: TMaskEdit;
    qrCopy: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCopySecPrice: TfrmCopySecPrice;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, ESecGoodPrc;

{$R *.dfm}

procedure TfrmCopySecPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCopySecPrice.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCopySecPrice.MaskEdit2Exit(Sender: TObject);
begin
  if not MsDateIsValid1(MaskEdit2.Text, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    MaskEdit2.SetFocus;
    MaskEdit2.Text := MbUserDate;
    MaskEdit2.SelStart := 0;
    Exit;
  end;
end;

procedure TfrmCopySecPrice.FormShow(Sender: TObject);
begin
  Edit1.Text := (MBFM.GetFM(ParentFrm) as TfrmESecGoodPrc).DBEdit1.Text;
  Edit2.Text := (MBFM.GetFM(ParentFrm) as TfrmESecGoodPrc).DBEdit3.Text;
  Edit3.Text := (MBFM.GetFM(ParentFrm) as TfrmESecGoodPrc).EdStk_code.Text;
  Edit4.Text := (MBFM.GetFM(ParentFrm) as TfrmESecGoodPrc).Edit2.Text;
  MaskEdit1.Text := (MBFM.GetFM(ParentFrm) as TfrmESecGoodPrc).DBEdit2.Text;
end;

procedure TfrmCopySecPrice.BtnPostClick(Sender: TObject);
begin
  if MaskEdit2.Text = MaskEdit1.Text then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    MaskEdit2.SetFocus;
    Exit;
  end;
  with qrCopy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO SECGOODPRC_T');
    SQL.Add('(S_GDSCODE, S_CUSTKIND, S_PRICE, S_DATE)');
    SQL.Add('SELECT S_GDSCODE, S_CUSTKIND, S_PRICE, ' + MaskEdit2.Text + ' S_DATE');
    SQL.Add('FROM SECGOODPRC_T');
    SQL.Add('WHERE S_DATE = :SDATE');
    SQL.Add('  AND S_CUSTKIND = :CUSTKIND');
    ParamByName('SDATE').AsString := MaskEdit1.Text;
    ParamByName('CUSTKIND').AsString := Edit1.Text;
    try
      ExecSQL;
      MbPrompt(ProcessSuccess);
      Close;
    except on E: Exception do
      begin
        if Pos('00001', E.Message) > 1 then
          MbError('ÏÑÇíä ÊÇÑíÎ ÇØáÇÚÇÊ æÌæÏ ÏÇÑÏ')
        else
          MbError(E.Message);
      end;
    end;
  end;

end;

end.
