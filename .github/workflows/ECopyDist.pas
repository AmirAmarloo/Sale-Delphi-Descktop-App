unit ECopyDist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables;

type
  TfrmECopyDist = class(TForm)
    Panel1: TPanel;
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    sbCustNo: TSpeedButton;
    Query1: TQuery;
    procedure sbExitClick(Sender: TObject);
    procedure sbCustNoClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmECopyDist: TfrmECopyDist;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, MbUtil;

{$R *.dfm}

procedure TfrmECopyDist.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmECopyDist.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    Edit3.SetFocus;
    Edit3.Text:= Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECopyDist.BtnPostClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO CUSTOFFER_T');
    SQL.Add('(CO_CUSTNO, CO_GDSCODE, CO_QTY, CO_OFFER, CO_FROMDATE, CO_TODATE)');
    SQL.Add('SELECT ' + Edit3.Text + ' CO_CUSTNO, CO_GDSCODE, CO_QTY, CO_OFFER, CO_FROMDATE, CO_TODATE');
    SQL.Add('FROM CUSTOFFER_T');
    SQL.Add('WHERE CO_CUSTNO = :CNO');
{    SQL.Add('  AND CO_CUSTNO NOT IN (SELECT CO_CUSTNO FROM CUSTOFFER_T');
    SQL.Add('                        WHERE CO_CUSTNO = ' + Edit3.Text + ')');}
    ParamByName('CNO').AsString := Edit1.Text;
    try
      ExecSQL;
    except
    end;
    MbPrompt(ProcessSuccess);
  end;
end;

procedure TfrmECopyDist.Edit3Exit(Sender: TObject);
begin
  Edit4.Text := FindCusName(Edit3.Text);
  if (Edit4.Text = '') or
     (Edit1.Text = Edit3.Text) then
  begin
    MbError(InvalidCode);
    Edit3.SetFocus;
  end;
end;

procedure TfrmECopyDist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
