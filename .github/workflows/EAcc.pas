{$I Direct.Inc}
unit EAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEAcc = class(TMbForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

{var
  FrmECustom: TFrmECustom;}

implementation

uses  MainUnit;

{$R *.DFM}


procedure TFrmEAcc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEAcc.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEAcc.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := CAFree;
end;

end.
