{$I Direct.Inc}
unit EBudgetSell;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, {$I MbUses.Inc};

type
  TfrmEBudgetSell = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    qrEBudgetSell: TQuery;
    usEBudgetSell: TUpdateSQL;
    dsEBudgetSell: TDataSource;
    qrEBudgetSellB_YEAR: TFloatField;
    qrEBudgetSellB_MONTH: TFloatField;
    qrEBudgetSellB_ACTIVEDAY: TFloatField;
    qrEBudgetSellB_GDSCODE: TStringField;
    qrEBudgetSellB_QTY: TFloatField;
    qrEBudgetSellB_PRICE: TFloatField;
    qrEBudgetSellCF_GOODSDESC: TStringField;
    dbgrBudgetSell: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sbSearch: TSpeedButton;
    dbedYear: TDBEdit;
    dbedGdsCode: TDBEdit;
    DBEdit2: TDBEdit;
    qrEBudgetSellCF_TOTALPRICE: TFloatField;
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    qrEBudgetSellCF_PERVISITOR: TFloatField;
    qrEBudgetSellCF_PERVISITPRC: TFloatField;
    edVisitorCount: TEdit;
    Label4: TLabel;
    procedure sbExitClick(Sender: TObject);
    procedure qrEBudgetSellCalcFields(DataSet: TDataSet);
    procedure qrEBudgetSellB_YEARValidate(Sender: TField);
    procedure qrEBudgetSellB_PRICEValidate(Sender: TField);
    procedure qrEBudgetSellB_QTYValidate(Sender: TField);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrEBudgetSellB_MONTHGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrEBudgetSellB_MONTHSetText(Sender: TField;
      const Text: String);
    procedure Panel2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEBudgetSellNewRecord(DataSet: TDataSet);
    procedure sbSearchClick(Sender: TObject);
    procedure dbedGdsCodeExit(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrEBudgetSellB_MONTHValidate(Sender: TField);
  private
    { Private declarations }
    BYear, BGdsCode, BPrice: String;
    IsLock: Boolean;
    procedure SelectEmptyData;
  public
    { Public declarations }
  end;

var
  frmEBudgetSell: TfrmEBudgetSell;

implementation

uses Utility, Utitlty, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEBudgetSell.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEBudgetSell.qrEBudgetSellCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GOODSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('B_GDSCODE').AsString);
  DataSet.FieldByName('CF_TOTALPRICE').AsFloat :=  DataSet.FieldByName('B_QTY').AsFloat * DataSet.FieldByName('B_PRICE').AsFloat;
  DataSet.FieldByName('CF_PERVISITOR').AsFloat:=  DataSet.FieldByName('B_QTY').AsFloat / GetVisitorCount;
  DataSet.FieldByName('CF_PERVISITPRC').AsFloat:=  DataSet.FieldByName('CF_TOTALPRICE').AsFloat / GetVisitorCount;
end;

procedure TfrmEBudgetSell.qrEBudgetSellB_YEARValidate(Sender: TField);
begin
  if Sender.AsFloat > 99 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEBudgetSell.qrEBudgetSellB_PRICEValidate(Sender: TField);
begin
  if Sender.AsFloat > 999999999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;

end;

procedure TfrmEBudgetSell.qrEBudgetSellB_QTYValidate(Sender: TField);
begin
  if Sender.AsFloat > 99999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEBudgetSell.BtnPostClick(Sender: TObject);
begin
  if IsRowDuplicate(dbgrBudgetSell, ['B_MONTH']) then
  begin
    MbError(RepeatedError);
    dbgrBudgetSell.SelectedIndex:= 0;
    Exit;
  end;
  if CheckNullFields(qrEBudgetSell, 'SALES', 'BUDGETSELL_T') then Exit;
  qrEBudgetSell.ApplyUpdates;
  SelectEmptyData;
end;

procedure TfrmEBudgetSell.BtnDelClick(Sender: TObject);
begin
  with qrEBudgetSell do
  begin
    First;
    while not Eof do
      Delete;
  end;
  qrEBudgetSell.ApplyUpdates;
  SelectEmptyData;
end;

procedure TfrmEBudgetSell.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrEBudgetSell)
end;

procedure TfrmEBudgetSell.qrEBudgetSellB_MONTHGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = Null then Exit;
  Text := dbgrBudgetSell.Columns[1].PickList[Sender.Value];
end;

procedure TfrmEBudgetSell.qrEBudgetSellB_MONTHSetText(Sender: TField;
  const Text: String);
begin
  try
    Sender.Value := dbgrBudgetSell.Columns[1].PickList.IndexOf(Text);
  except
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmEBudgetSell.Panel2Exit(Sender: TObject);
begin
  if qrEBudgetSell.FieldByName('B_YEAR').AsString = '' then
  begin
    MbError(InCompleteData);
    dbedYear.SetFocus;
    Exit;
  end;
  with qrEBudgetSell do
  begin
    BYear := FieldByName('B_YEAR').AsString;
    BGdsCode := FieldByName('B_GDSCODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM BUDGETSELL_T');
    SQL.Add('WHERE B_YEAR = :YEAR');
    SQL.Add('  AND B_GDSCODE = :BGDSCODE');
    SQL.Add('ORDER BY B_YEAR, B_MONTH, B_GDSCODE');
    ParamByName('YEAR').AsString := BYear;
    ParamByName('BGDSCODE').AsString := BGdsCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('B_YEAR').AsString := BYear;
      FieldByName('B_GDSCODE').AsString := BGdsCode;
    end;
  end;
end;

procedure TfrmEBudgetSell.FormShow(Sender: TObject);
begin
  SelectEmptyData;
  edVisitorCount.Text := IntToStr(GetVisitorCount);
end;

procedure TfrmEBudgetSell.qrEBudgetSellNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('B_YEAR').AsString := BYear;
  DataSet.FieldByName('B_GDSCODE').AsString := BGdsCode;
  DataSet.FieldByName('B_PRICE').AsString := BPrice;
end;

procedure TfrmEBudgetSell.sbSearchClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    with qrEBudgetSell do
    begin
      dbedGdsCode.SetFocus;
      Edit;
      FieldByName('B_GDSCODE').AsString := Code;
    end;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmEBudgetSell.dbedGdsCodeExit(Sender: TObject);
begin
  if FindGdsFDesc(qrEBudgetSell.FieldByName('B_GDSCODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedGdsCode.SetFocus;
  end;
  qrEBudgetSell.Edit;
  qrEBudgetSell.FieldByName('B_PRICE').AsString := GetGoodsPrice(qrEBudgetSell.FieldByName('B_GDSCODE').AsString);
end;

procedure TfrmEBudgetSell.SelectEmptyData;
begin
  BYear := '';
  BGdsCode := '';
  BPrice := '';
  SelectEmpty(qrEBudgetSell, 'BUDGETSELL_T');
  dbedYear.SetFocus;
end;

procedure TfrmEBudgetSell.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEBudgetSell.DisableControls;
  try
    if not CheckChanges(qrEBudgetSell, qrEBudgetSell, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEBudgetSell, 'BUDGETSELL_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEBudgetSell.EnableControls;
  end;
end;

procedure TfrmEBudgetSell.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEBudgetSell.DisableControls;
  try
    if not CheckChanges(qrEBudgetSell, qrEBudgetSell, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEBudgetSell, 'BUDGETSELL_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEBudgetSell.EnableControls;
  end;
end;

procedure TfrmEBudgetSell.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEBudgetSell.DisableControls;
  try
    if not CheckChanges(qrEBudgetSell, qrEBudgetSell, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEBudgetSell, 'BUDGETSELL_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEBudgetSell.EnableControls;
  end;
end;

procedure TfrmEBudgetSell.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEBudgetSell.DisableControls;
  try
    if not CheckChanges(qrEBudgetSell, qrEBudgetSell, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEBudgetSell, 'BUDGETSELL_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEBudgetSell.EnableControls;
  end;
end;

procedure TfrmEBudgetSell.DBEdit1Exit(Sender: TObject);
begin
  if BPrice = qrEBudgetSell.FieldByName('B_PRICE').AsString then Exit;
  BPrice := qrEBudgetSell.FieldByName('B_PRICE').AsString;
  qrEBudgetSell.First;
  while not qrEBudgetSell.Eof do
  begin
    qrEBudgetSell.Edit;
    qrEBudgetSell.FieldByName('B_PRICE').AsString := BPrice;
    qrEBudgetSell.Next;
  end;
end;

procedure TfrmEBudgetSell.qrEBudgetSellB_MONTHValidate(Sender: TField);
begin
  if Sender.AsFloat > 31 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

end.
