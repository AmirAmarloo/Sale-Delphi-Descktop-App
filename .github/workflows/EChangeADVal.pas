{$I Direct.Inc}
unit EChangeADVal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, {$I MbUses.Inc};

type
  TfrmEChangeADVal = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    qrValidity: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    qrValidityADCODE: TFloatField;
    qrValidityADNUM1: TStringField;
    qrValidityADNUM2: TStringField;
    qrValidityADNUM3: TFloatField;
    qrValidityADNUM4: TFloatField;
    qrValidityADNUM5: TFloatField;
    qrValidityADVAL: TFloatField;
    qrValidityADARZVAL: TFloatField;
    qrValidityPART: TFloatField;
    qrTemp: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sbList: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Edit5: TEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    SpeedButton2: TSpeedButton;
    Edit9: TEdit;
    procedure sbExitClick(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure qrValidityADNUM2Validate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure qrValidityADVALValidate(Sender: TField);
    procedure BtnPostClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEChangeADVal: TfrmEChangeADVal;

implementation

uses Utility, UMessage, Vars, Help, Functions, Utitlty;

{$R *.dfm}

procedure TfrmEChangeADVal.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEChangeADVal.sbListClick(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    Edit1.SetFocus;
    Edit1.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEChangeADVal.DBGrid1EditButtonClick(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    with qrValidity do
    begin
      Edit;
      FieldByName('ADNUM2').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEChangeADVal.Edit1Exit(Sender: TObject);
begin
  if not IsValidOFNum(Edit1.Text, IntToStr(System_YY)) then
  begin
    MbError('‘„«—Â ›«ò Ê— Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ');
    Edit1.SetFocus;
    Exit;
  end;
  if StrToIntDef(Edit1.Text, 0) = 0 then
  begin
    Edit1.Clear;
    Edit1.SetFocus;
    Exit;
  end;
  Edit4.Text := MbFormatDate(GetOfDate(Edit1.Text, IntToStr(System_YY)));
  Edit2.Text := IntToStr(GetValidityValLoc(Edit1.Text, IntToStr(System_YY)));
  Edit3.Text := FindCustName(GetCustCodeFromOfNumLoc(Edit1.Text, IntToStr(System_YY)));
  SelectEmpty(qrValidity, 'VALIDITY_T');
end;

procedure TfrmEChangeADVal.qrValidityADNUM2Validate(Sender: TField);
begin
  if not IsValidOFNum(Sender.AsString, IntToStr(System_YY)) then
  begin
    MbError('‘„«—Â ›«ò Ê— Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ');
    Abort;
  end;
  if GetValidityValLoc(Sender.AsString, IntToStr(System_YY)) > 0 then
  begin
    MbError('«Ì‰ ›«ò Ê— œ«—Ì „»·€  Œ›Ì› “Ì— ›«ò Ê— „Ì »«‘œ');
    Abort;
  end;
end;

procedure TfrmEChangeADVal.FormShow(Sender: TObject);
begin
  SelectEmpty(qrValidity, 'VALIDITY_T');
end;

procedure TfrmEChangeADVal.qrValidityADVALValidate(Sender: TField);
begin
  if Sender.AsInteger > StrToIntDef(Edit2.Text, 0) then
  begin
    MbError('„»·€ Ê«—œ ‘œÂ „Ã«“ ‰„Ì »«‘œ');
    Abort;
  end;
end;

procedure TfrmEChangeADVal.BtnPostClick(Sender: TObject);
var
  TotVal: Integer;
begin
  case PageControl1.ActivePage.PageIndex  of
    0:begin
        with qrTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE VALIDITY_T');
          SQL.Add('SET ADVAL = :ADVAL');
          SQL.Add('WHERE ADNUM2 = :ADNUM2');
          SQL.Add('  AND ADNUM3 = :ADNUM3');
          SQL.Add('  AND ADNUM1 = ' + BranchCode);
        end;
        TotVal := 0;
        qrValidity.First;
        qrValidity.DisableControls;
        try
          with qrValidity do
          begin
            while not Eof do
            begin
              TotVal := TotVal + FieldByName('ADVAL').AsInteger;
              Next;
            end;
            if TotVal > StrToIntDef(Edit2.Text, 0) then
            begin
              MbError('„»«·€ Ê«—œ ‘œÂ »Ì‘ — «“ „»·€  Œ›Ì› «” ');
              Exit;
            end;
            qrTemp.Close;
            qrTemp.SQL.Clear;
            qrTemp.SQL.Add('UPDATE VALIDITY_T');
            qrTemp.SQL.Add('SET ADVAL = :ADVAL');
            qrTemp.SQL.Add('WHERE ADNUM2 = :ADNUM2');
            qrTemp.SQL.Add('  AND ADNUM3 = :ADNUM3');
            qrTemp.SQL.Add('  AND ADNUM1 = ' + BranchCode);
            qrTemp.ParamByName('ADVAL').AsInteger :=  StrToIntDef(Edit2.Text, 0) - TotVal;
            qrTemp.ParamByName('ADNUM2').AsString := Edit1.Text;
            qrTemp.ParamByName('ADNUM3').asInteger := System_YY;
            qrTemp.ExecSQL;
            First;
            while not Eof do
            begin
              qrTemp.Close;
              qrTemp.SQL.Clear;
              qrTemp.SQL.Add('INSERT INTO VALIDITY_T');
              qrTemp.SQL.Add('(ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL, PART)');
              qrTemp.SQL.Add('VALUES');
              qrTemp.SQL.Add('(:ADCODE, :ADNUM1, :ADNUM2, :ADNUM3, :ADNUM4, :ADNUM5, :ADVAL, :ADARZVAL, :PART)');
              qrTemp.ParamByName('ADVAL').AsString := FieldByName('ADVAL').AsString;
              qrTemp.ParamByName('ADNUM2').AsString := FieldByName('ADNUM2').AsString;
              qrTemp.ParamByName('ADNUM3').asInteger := System_YY;
              qrTemp.ParamByName('ADNUM1').AsString := BranchCode;
              qrTemp.ParamByName('ADNUM4').AsString := '0';
              qrTemp.ParamByName('ADNUM5').AsString := '0';
              qrTemp.ParamByName('ADARZVAL').AsString := '';
              qrTemp.ParamByName('ADCODE').AsString := '-1';
              qrTemp.ParamByName('PART').AsString := '';
              qrTemp.ExecSQL;
              Next;
            end;
          end;
        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
        Edit4.Clear;
        finally
          qrValidity.EnableControls;
        end;
    end;
    1:begin
        if StrToIntDef(Edit6.Text, 0) = 0 then
        begin
          MbError('„»·€ Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ');
          Edit6.SetFocus;
          Exit;
        end;
        qrTemp.Close;
        qrTemp.SQL.Clear;
        qrTemp.SQL.Add('INSERT INTO VALIDITY_T');
        qrTemp.SQL.Add('(ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL, PART)');
        qrTemp.SQL.Add('VALUES');
        qrTemp.SQL.Add('(:ADCODE, :ADNUM1, :ADNUM2, :ADNUM3, :ADNUM4, :ADNUM5, :ADVAL, :ADARZVAL, :PART)');
        qrTemp.ParamByName('ADVAL').AsString := Edit6.Text;
        qrTemp.ParamByName('ADNUM2').AsString := Edit5.Text;
        qrTemp.ParamByName('ADNUM3').asInteger := System_YY;
        qrTemp.ParamByName('ADNUM1').AsString := BranchCode;
        qrTemp.ParamByName('ADNUM4').AsString := '0';
        qrTemp.ParamByName('ADNUM5').AsString := '0';
        qrTemp.ParamByName('ADARZVAL').AsString := '';
        qrTemp.ParamByName('ADCODE').AsString := '-1';
        qrTemp.ParamByName('PART').AsString := '';
        qrTemp.ExecSQL;
        Edit5.Clear;
        Edit6.Clear;
        Edit7.Clear;
        Edit8.Clear;
      end;
    2:begin
        qrTemp.Close;
        qrTemp.SQL.Clear;
        qrTemp.SQL.Add('DELETE VALIDITY_T');
        qrTemp.SQL.Add('WHERE ADNUM2 = :ADNUM2');
        qrTemp.SQL.Add('  AND ADNUM3 = :ADNUM3');
        qrTemp.SQL.Add('  AND ADNUM1 = ' + BranchCode);
        qrTemp.ParamByName('ADNUM2').AsString := Edit9.Text;
        qrTemp.ParamByName('ADNUM3').asInteger := System_YY;
        qrTemp.ExecSQL;
      end;
  end;
end;

procedure TfrmEChangeADVal.SpeedButton1Click(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    Edit5.SetFocus;
    Edit5.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEChangeADVal.Edit5Exit(Sender: TObject);
var
  AdValCh: Integer;
begin
  if not IsValidOFNum(Edit5.Text, IntToStr(System_YY)) then
  begin
    MbError('‘„«—Â ›«ò Ê— Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ');
    Edit5.SetFocus;
    Exit;
  end;
  if StrToIntDef(Edit5.Text, 0) = 0 then
  begin
    Edit5.Clear;
    Edit5.SetFocus;
    Exit;
  end;
  AdValCh := GetValidityValLoc(Edit5.Text, IntToStr(System_YY));
  if AdValCh > 0 then
  begin
    MbError(' «Ì‰ ›«ò Ê— „»·€  Œ›Ì› œ«—œ ' + IntToStr(AdValCh));
    Edit5.SetFocus;
    Exit;
  end;
  Edit8.Text := MbFormatDate(GetOfDate(Edit5.Text, IntToStr(System_YY)));
//  Edit6.Text := IntToStr(AdValCh);
  Edit7.Text := FindCustName(GetCustCodeFromOfNumLoc(Edit5.Text, IntToStr(System_YY)));

end;

procedure TfrmEChangeADVal.Edit6Exit(Sender: TObject);
begin
  if Edit6.Text = '' then Exit;
  if StrToIntDef(Edit6.Text, 0) = 0 then
  begin
    MbError('„»·€ Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ');
    Edit6.SetFocus;
  end;
end;

procedure TfrmEChangeADVal.SpeedButton2Click(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    Edit9.SetFocus;
    Edit9.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEChangeADVal.Edit9Exit(Sender: TObject);
var
  AdValCh: Integer;
begin
  if not IsValidOFNum(Edit9.Text, IntToStr(System_YY)) then
  begin
    MbError('‘„«—Â ›«ò Ê— Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ');
    Edit9.SetFocus;
    Exit;
  end;

end;

end.
