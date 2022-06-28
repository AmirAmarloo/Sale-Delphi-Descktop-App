{$I Direct.Inc}
unit DUMEContract;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, FMTBcd, SqlExpr, ADODB,{$I MbUses.Inc};

type
  TDataModule1 = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Utility, Help, Functions, Vars, UMessage;

{$R *.dfm}

end.
