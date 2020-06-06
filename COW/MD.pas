unit MD;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    tblCow: TFDTable;
    dsCow: TDataSource;
    tblStatus: TFDTable;
    dsStatus: TDataSource;
    tblCowid: TFDAutoIncField;
    tblCowid_status: TIntegerField;
    tblCowdate: TDateField;
    tblCowstatus: TStringField;
    tblHistory: TFDTable;
    dsHistory: TDataSource;
    tblFeature: TFDTable;
    dsFeature: TDataSource;
    tblFeatureCow: TFDTable;
    dsFeatureCow: TDataSource;
    tblFeatureCowid: TIntegerField;
    tblFeatureCowid_feature: TIntegerField;
    tblFeatureCowfeature: TStringField;
    tblFeatureid: TFDAutoIncField;
    tblFeaturename: TStringField;
    tblColving: TFDTable;
    dsColving: TDataSource;
    tblColvingid: TFDAutoIncField;
    tblColvingid_cow: TIntegerField;
    tblColvingid_colf: TIntegerField;
    tblColvingdate: TDateField;
    tblMainCow: TFDTable;
    dsMainCow: TDataSource;
    qAppCow: TFDQuery;
    tblMainCowid: TIntegerField;
    tblMainCowid_feature: TIntegerField;
    tblMainCowfeature: TStringField;
    qFilterCow: TFDQuery;
    qCount: TFDQuery;
    qUpdateDate: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
