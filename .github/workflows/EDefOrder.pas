{$I Direct.Inc}
unit EDefOrder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEDefOrder = class(TMbForm)
    Panel1: TPanel;
    panButton: TPanel;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    SpdBtnExit: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    lbGdsCode: TLabel;
    lbGdsName: TLabel;
    Label2: TLabel;
    edOrder: TEdit;
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edOrderExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEDefOrder: TfrmEDefOrder;

implementation

uses UMessage, PGenerateFact;

{$R *.dfm}

procedure TfrmEDefOrder.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDefOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDefOrder.FormShow(Sender: TObject);
begin
  if MBFM.GetFM(ParentFrm) is TfrmPGenerateFact then
  begin
    lbGdsCode.Caption := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).DOffGdsCode;
    lbGdsName.Caption := (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).DOffGdsName;
  end;
end;

procedure TfrmEDefOrder.edOrderExit(Sender: TObject);
begin
  if StrToIntDef(edOrder.Text, -1) = -1 then
  begin
    MbError(InvalidCode);
    edOrder.SetFocus;
    Exit;
  end;
  (MBFM.GetFM(ParentFrm) as TfrmPGenerateFact).OrderCode := StrToInt(edOrder.Text);
  Close;
end;

end.
