{$I Direct.Inc}
unit EPeyvast;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEPeyvast = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    DBGrid1: TDBGrid;
    btnPost: TBitBtn;
    SpdBtnExit: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmEPeyvast: TFrmEPeyvast;

implementation

uses MainUnit, HCustom, HBidVch;

{$R *.DFM}

procedure TFrmEPeyvast.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbGrid1) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEPeyvast.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEPeyvast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := CaFree;
end;

end.
