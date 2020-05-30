unit DBControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TBDCow = class(TForm)
    PageControl1: TPageControl;
    Cow: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Other: TTabSheet;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    History: TTabSheet;
    DBNavigator4: TDBNavigator;
    DBMemo1: TDBMemo;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBNavigator5: TDBNavigator;
    Colving: TTabSheet;
    DBNavigator6: TDBNavigator;
    DBGrid6: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BDCow: TBDCow;

implementation

{$R *.dfm}
uses
  MD;
end.
