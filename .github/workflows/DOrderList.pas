{$I Direct.Inc}
unit DOrderList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, DMUContract, ppEndUsr, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,{$I MbUses.Inc};

type
  TfrmDOrderList = class(TMbForm)
    DBGrid1: TDBGrid;
    stbMain: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDM_Contract: TDM_Contract;
    { Private declarations }
  public
    { Public declarations }
  end;
(*
var
  frmDOrderList: TfrmDOrderList;
*)
implementation

uses MainUnit, Utility, ECnt;

{$R *.dfm}

procedure TfrmDOrderList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmDOrderList.FormCreate(Sender: TObject);
begin
  FDM_Contract:= TDM_Contract(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TfrmDOrderList.FormShow(Sender: TObject);
begin
  if MbFM.GetFM(ParentFrm) is TFrmECnt then
  begin
    with FDM_Contract.qrDOrderList, SQL do
    begin
      Clear;
      Add('SELECT M.ORD_CODE,M.ORD_DATE,NVL(ORD_FINALQTY,0) ORD_FINALQTY ');
      Add('  FROM ORD_M_T M,ORD_D_T D                                    ');
      Add(' WHERE M.ORD_CODE  = D.ORD_CODE                               ');
      Add('   AND M.ORD_YEAR  = D.ORD_YEAR                               ');
      Add('   AND D.GDS_CODE  = :GDS_CODE                                ');
      Add('   AND ORDCNT_CODE = :ORD_CODE                                ');
      ParamByName('GDS_CODE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmECnt).FGdsCode;
      ParamByName('ORD_CODE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmECnt).FCntCode;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  end;
end;

end.
 