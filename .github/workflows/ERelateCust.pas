{$I Direct.Inc}
unit ERelateCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmERelateCust = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edMCustCode: TEdit;
    edMCustName: TEdit;
    qrERelateCust: TQuery;
    usERelateCust: TUpdateSQL;
    dsERelateCust: TDataSource;
    qrERelateCustRL_MCODE: TFloatField;
    qrERelateCustRL_DCODE: TFloatField;
    qrERelateCustCF_CUSTNAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrERelateCustCalcFields(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrERelateCustRL_DCODEValidate(Sender: TField);
    procedure qrERelateCustNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmERelateCust: TfrmERelateCust;

implementation

uses Utility, Functions, Help, UMessage, EParam;

{$R *.dfm}

procedure TfrmERelateCust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmERelateCust.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmERelateCust.BtnPostClick(Sender: TObject);
begin
  qrERelateCust.ApplyUpdates;
end;

procedure TfrmERelateCust.BtnDelClick(Sender: TObject);
begin
  with qrERelateCust do
  begin
    First;
    while not Eof do
    begin
      Delete;
      Next;
    end;
    ApplyUpdates;
  end;
end;

procedure TfrmERelateCust.FormShow(Sender: TObject);
begin
  edMCustCode.Text := (MBFM.GetFM(ParentFrm) as TFrmEParam).CustId;
  edMCustName.Text := FindCusName(edMCustCode.Text);
  with qrERelateCust do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RELATE_CUST_T');
    SQL.Add('WHERE RL_MCODE = :MCUST');
    ParamByName('MCUST').AsString := edMCustCode.Text;
    Open;
  end;
end;

procedure TfrmERelateCust.qrERelateCustCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(DataSet.FieldByName('RL_DCODE').AsString);
end;

procedure TfrmERelateCust.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    with qrERelateCust do
    begin
      Edit;
      FieldByName('RL_DCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmERelateCust.qrERelateCustRL_DCODEValidate(Sender: TField);
begin
  if Sender.AsInteger > 999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
  if Sender.AsString = edMCustCode.Text then
  begin
    MbError('òœ „‘ —Ì Ê«—œ ‘œÂ ‰»«Ìœ »« òœ „‘ —Ì «’·Ì »—«»— »«‘œ');
    Abort;
  end;
  if FindCusName(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmERelateCust.qrERelateCustNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('RL_MCODE').AsString := edMCustCode.Text;
end;

end.
