unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Menus, Vcl.ComCtrls,
  FireDAC.Comp.Client, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    Добавление: TTabSheet;
    TabSheet2: TTabSheet;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btnAppCow: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Filter: TRadioGroup;
    btnUpdateFilter: TButton;
    btnSearchCow: TButton;
    mGrowCow: TMemo;
    btnUpDataGrow: TButton;
    spiCow: TSpinEdit;
    spiColf: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    date_cow: TDateTimePicker;
    rgStatusCow: TRadioGroup;
    id_cow: TEdit;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAppCowClick(Sender: TObject);
    procedure btnUpdateFilterClick(Sender: TObject);
    procedure btnSearchCowClick(Sender: TObject);
    procedure btnUpDataGrowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  BIRTH_RATE = 0.45;
var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  MD, DBControl;
procedure TForm1.btnAppCowClick(Sender: TObject);
var
  Q: TFDQuery;
  num: Integer;
  date, id_colf: String;
begin
  Q:= MD.DataModule1.qAppCow;
  num:= rgStatusCow.ItemIndex +1;
  date:=DateToStr(date_cow.DateTime);

  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:='insert into cow (id_status, date) VALUES(' +
  IntToStr(num) +', "'+ date +'");';
  MD.DataModule1.qAppCow.ExecSQL;

  MD.DataModule1.tblCow.Last;
  id_colf:= MD.DataModule1.tblCow.FieldByName('id').AsString;
  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:= 'insert into colving (id_cow, id_colf) VALUES('+
  id_cow.Text + ', '+ id_colf +')';
  MD.DataModule1.qAppCow.ExecSQL;
end;

procedure TForm1.btnSearchCowClick(Sender: TObject);
var
  num: Integer;
  S: String;
  Q: TFDQuery;
begin
  S:=Filter.Items[Filter.ItemIndex];

  Q:=MD.DataModule1.qFilterCow;
  Q.Close;
//  MD.DataModule1.dsMainCow.DataSet.IsLinkedTo(Q.DataSource);
  Q.SQL.Text:='Select fc.id From feature as f left join feature_cow as fc ON f.id = fc.id_feature where f.name = "'+ S +'"';
  Q.Open();
end;

procedure TForm1.btnUpDataGrowClick(Sender: TObject);
begin
  mGrowCow.Text:= mGrowCow.Text + 'Проверка'#13#10;
end;

procedure TForm1.btnUpdateFilterClick(Sender: TObject);
var
  T:TFDTable;
begin
  DataModule1.FDConnection1.Open();
  DataModule1.tblFeature.Open();
  T:=DataModule1.tblFeature;
  T.First;
  T.First;
  Filter.Items.Clear;
  while Not T.EoF do begin
    Filter.Items.Add(T.Fields[1].AsString);
    T.Next;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);

begin
  rgStatusCow.Items.Add('Теленок');
  rgStatusCow.Items.Add('Бычок');
  rgStatusCow.Items.Add('Корова');
  rgStatusCow.Items.Add('Бык');




end;

procedure TForm1.N2Click(Sender: TObject);
begin
  DBControl.BDCow.Show();
end;

end.
