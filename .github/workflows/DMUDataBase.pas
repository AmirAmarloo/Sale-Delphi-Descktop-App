{$I Direct.Inc}
unit DMUDataBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, Db, DBTables,            
  {$I MbUses.Inc};

type
  TDM_DataBase = class(TDataModule)
    dbsMain: TDatabase;
    qrTemp: TQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_DataBase: TDM_DataBase;

implementation

uses MbTag;

{$R *.DFM}

procedure TDM_DataBase.DataModuleCreate(Sender: TObject);
begin
(**************************)
{
  If Not DirectoryExists('C:\Sales')  Then
   If Not  CreateDir('C:\Sales') Then Begin
     Raise Exception.Create('Cannot Create C:\Sales');
     Application.Terminate;
   End;
}
(**************************)
(******)
//   dbsMain.Connected := False ;
//   MbInitDatabaseParams(DM_DataBase.dbsMain);
//   if MbDoConnectN(DM_DataBase.dbsMain) <> 0 then
//     Application.Terminate;
(**********)
//  dbsMain.Connected := False;
//  Session.PrivateDir := 'C:\Sales';
//MbDataBase := TMbDataBase.Create(nil);
  MbDB.Init(dbsMain);
  MbControlTag.DataBase := dbsMain;
end;

procedure TDM_DataBase.DataModuleDestroy(Sender: TObject);
begin
  dbsMain.Connected := False;
//  if assigned(MbDataBase) then MbDataBase.Free;
end;

end.


