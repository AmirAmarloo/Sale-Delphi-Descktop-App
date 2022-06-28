{$I Direct.Inc}
unit DCusArzRial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc}, DMUDisplay;

type
  TFrmDCusArzRial = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    btnExit: TSpeedButton;
    Panel: TPanel;
    Label6: TLabel;
    Label14: TLabel;
    sbFrCustomer: TSpeedButton;
    Panel2: TPanel;
    Label7: TLabel;
    dbgrGardesh: TDBGrid;
    sbToCustomer: TSpeedButton;
    Label2: TLabel;
    meFrDate: TMaskEdit;
    meToDate: TMaskEdit;
    Label5: TLabel;
    edFrCustomer: TEdit;
    edToCustomer: TEdit;
    edMandeh: TEdit;
    edDebitTot: TEdit;
    edCreditTot: TEdit;
    procedure btnExitClick(Sender: TObject);
    procedure sbFrCustomerClick(Sender: TObject);
    procedure sbToCustomerClick(Sender: TObject);
    procedure edFrCustomerKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PanelExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edFrCustomerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edToCustomerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FDM_Display: TDM_Display;
    procedure SelectDetail;
    procedure Calculate;
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmDCusArzRial: TFrmDCusArzRial;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast, 
  HCnt, ECntLaw, HArz, Help, Vars, Utility, UMessage, Functions;

{$R *.DFM}

procedure TFrmDCusArzRial.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDCusArzRial.sbFrCustomerClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    edFrCustomer.SetFocus;
    edFrCustomer.Text:= Code;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmDCusArzRial.sbToCustomerClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    edToCustomer.SetFocus;
    edToCustomer.Text:= Code;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmDCusArzRial.edFrCustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#13, #27, #8, '0'..'9']) then
    Key:= #7;
end;

procedure TFrmDCusArzRial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmDCusArzRial.Calculate;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT SUM(BED) DEBIT, SUM(BES) CREDIT, SUM(BED) - SUM(BES) MANDEH');
      Add('FROM PSSALES.GARDESH_V');
      Add('WHERE');
      Add('     FDATE BETWEEN :FRDATE AND :TODATE');
      Add('AND  CUSTNO BETWEEN :FRCUSTOMER AND :TOCUSTOMER');
      ParamByName('FRDATE').AsString:= meFrDate.Text;
      ParamByName('TODATE').AsString:= meToDate.Text;
      ParamByName('FRCUSTOMER').AsString:= edFrCustomer.Text;
      ParamByName('TOCUSTOMER').AsString:= edToCustomer.Text;
      SQL:= MbSqlConvert(SQL);
      Open;

      edDebitTot.Text:= Format('%.n', [FieldByName('DEBIT').AsFloat * 1.0]);
      edCreditTot.Text:= Format('%.n', [FieldByName('CREDIT').AsFloat * 1.0]);
      edMandeh.Text:= Format('%.n', [FieldByName('MANDEH').AsFloat * 1.0]);
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmDCusArzRial.SelectDetail;
begin
  with FDM_Display.qrDGardesh, SQL do
  begin
    Clear;
    Add('SELECT ROWNUM, BED, BES, CUSTNAME, BED - BES MANDEH');
    Add('FROM PSSALES.GARDESH_V');
    Add('WHERE');
    Add('     FDATE BETWEEN :FRDATE AND :TODATE');
    Add('AND  CUSTNO BETWEEN :FRCUSTOMER AND :TOCUSTOMER');
    ParamByName('FRDATE').AsString:= meFrDate.Text;
    ParamByName('TODATE').AsString:= meToDate.Text;
    ParamByName('FRCUSTOMER').AsString:= edFrCustomer.Text;
    ParamByName('TOCUSTOMER').AsString:= edToCustomer.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

procedure TFrmDCusArzRial.FormCreate(Sender: TObject);
begin
  FDM_Display:= TDM_Display(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TFrmDCusArzRial.PanelExit(Sender: TObject);
begin
  SelectDetail;
  Calculate;
end;

procedure TFrmDCusArzRial.FormShow(Sender: TObject);
begin
  meFrDate.Text:= IntToStr(System_YY) + '0101';
  meToDate.Text:= MbUserDate;

  SelectDetail;
  Calculate;
end;

procedure TFrmDCusArzRial.edFrCustomerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1  then
    sbFrCustomer.Click;
end;

procedure TFrmDCusArzRial.edToCustomerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1  then
    sbToCustomer.Click;
end;

end.
