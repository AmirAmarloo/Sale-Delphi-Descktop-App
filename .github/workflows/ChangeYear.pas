{$I Direct.Inc}
unit ChangeYear;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ComCtrls,
   {$I MbUses.Inc};

type
  TfrmChangeYear = class(TMbForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edCurrentPrd: TMaskEdit;
    edPrd: TEdit;
    UpDown1: TUpDown;
    procedure FormShow(Sender: TObject);
    procedure BitBtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPrdKeyPress(Sender: TObject; var Key: Char);
    procedure edPrdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  frmChangeYear: TfrmChangeYear;

implementation

uses Utility;

{$R *.dfm}

procedure TfrmChangeYear.FormShow(Sender: TObject);
begin
  edCurrentPrd.Text := MbuserDate;
  edPrd.Text := Copy(edCurrentPrd.Text,1,4);
  edPrd.SelectAll;
end;

procedure TfrmChangeYear.BitBtnOkClick(Sender: TObject);
var
  S,YY : string;
begin
  if (edPrd.Text = '')or(edPrd.Text = '0') then
  begin
    MbError('”«· „«·Ì —« Ê«—œ ò‰Ìœ');
    edPrd.SetFocus;
  end
  else
  begin
    edPrd.Text := StringReplace(edPrd.Text,',','',[rfReplaceAll]);
    if Length(edPrd.Text)= 1 then
      YY := '0'+ edPrd.Text
    else
      YY := edPrd.Text;

    if YY = Copy(MbGetMachineDate1,1,4) then
      S := YY + Copy(MbGetMachineDate1,5,4)

    else if YY = Copy(edCurrentPrd.Text,1,4) then
      S := YY + Copy(edCurrentPrd.Text,5,4)
      
    else begin
//      if (StrToInt(YY) in [75,79,83,87,91,95,99]) then
      if (StrToInt(YY) = 1375) or (StrToInt(YY) = 1379) or (StrToInt(YY) = 1383) or
          (StrToInt(YY) = 1387) or (StrToInt(YY) = 1391) or (StrToInt(YY) = 1395) or
          (StrToInt(YY) = 1399) then
        S := YY + '1230'
      else
        S := YY + '1229';
    end;

    InitDate(S);
    Close;
  end;
end;

procedure TfrmChangeYear.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmChangeYear.edPrdKeyPress(Sender: TObject; var Key: Char);
begin
  Key := NumericKey(Key); 
end;

procedure TfrmChangeYear.edPrdChange(Sender: TObject);
begin
  edPrd.Text := StringReplace(edPrd.Text,',','',[rfReplaceAll]);
end;

end.
