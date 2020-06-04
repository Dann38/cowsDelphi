unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Menus, Vcl.ComCtrls,
  FireDAC.Comp.Client, Vcl.Samples.Spin, DateUtils;

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
    id_p_cow: TEdit;
    btnDefaultQuantity: TButton;
    N3: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAppCowClick(Sender: TObject);
    procedure btnUpdateFilterClick(Sender: TObject);
    procedure btnSearchCowClick(Sender: TObject);
    procedure btnUpDataGrowClick(Sender: TObject);
    function GetStrCowNextYear(var cow, colf: integer): String;
    procedure btnDefaultQuantityClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    procedure CreatingConstants;
  public
    { Public declarations }
  end;
const
  CountSQL= 'SELECT count(id) From %s where id_status=%d';
var
  Form1: TForm1;
  BIRTH_RATE: Double;
  YAER_QUANTITY: integer;
  ID_COW, ID_COLF, ID_BULL, ID_GOBY: Integer;


implementation

{$R *.dfm}
uses
  MD, DBControl;

function TForm1.GetStrCowNextYear(var cow, colf: integer): String;
var
  new_cow, new_colf: integer;
  S: string;
begin
  new_cow:=cow+colf;
  new_colf:=round(cow*BIRTH_RATE);
  cow:=new_cow;
  colf:=new_colf;
  S := 'Коров: '+ IntToStr(cow) + #13#10'Тёлок: ' + IntToStr(colf) + #13#10#13#10;
  result:= S;
end;

procedure TForm1.CreatingConstants;
begin
  ID_COLF:=1;
  ID_GOBY:=2;
  ID_COW:=3;
  ID_BULL:=4;
  BIRTH_RATE := 0.45;
  YAER_QUANTITY := 5;
end;

procedure TForm1.btnAppCowClick(Sender: TObject);
var
  Q: TFDQuery;
  num: Integer;
  date, id_colf: String;
begin
  Q:= MD.DataModule1.qAppCow;
  num:= rgStatusCow.ItemIndex +1;
  date:=FormatDateTime('yyyy-mm-dd',date_cow.DateTime);

  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:='insert into cow (id_status, date) VALUES(' +
  IntToStr(num) +', "'+ date +'");';
  MD.DataModule1.qAppCow.ExecSQL;

  MD.DataModule1.tblCow.Last;
  id_colf:= MD.DataModule1.tblCow.FieldByName('id').AsString;
  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:= 'insert into colving (id_cow, id_colf) VALUES('+
  id_p_cow.Text + ', '+ id_colf +')';
  MD.DataModule1.qAppCow.ExecSQL;
end;

procedure TForm1.btnDefaultQuantityClick(Sender: TObject);
var
    Q: TFDQuery;
begin
    DataModule1.FDConnection1.Open();
    Q:=MD.DataModule1.qCount;

    Q.Close;
    Q.SQL.Text:=format(CountSQL, ['cow', id_cow]);
    Q.Open();
    spiCow.Value:= Q.Fields[0].AsInteger;

    Q.Close;
    Q.SQL.Text:=format(CountSQL, ['cow', id_colf]);
    Q.Open();
    spiColf.Value:= Q.Fields[0].AsInteger;
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
var
  i, date, cow, colf: integer;
  S: string;
begin
  date:= yearof(Now);
  cow:=spiCow.Value;
  colf:=spiColf.Value;
  for i := 1 to YAER_QUANTITY do begin
    S := S + '====== '+ IntToStr(date+i) + 'ГОД ======'#13#10+
    GetStrCowNextYear(cow, colf);
  end;
  mGrowCow.Text:= mGrowCow.Text + S + #13#10;
end;

procedure TForm1.btnUpdateFilterClick(Sender: TObject);
var
  T:TFDTable;
begin
  DataModule1.FDConnection1.Open();
  DataModule1.tblFeature.Open();
  T:=DataModule1.tblFeature;
  T.First;
  Filter.Items.Clear;
  while Not T.EoF do begin
    Filter.Items.Add(T.Fields[1].AsString);
    T.Next;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);

begin
  CreatingConstants;


  rgStatusCow.Items.Add('Теленок');
  rgStatusCow.Items.Add('Бычок');
  rgStatusCow.Items.Add('Корова');
  rgStatusCow.Items.Add('Бык');




end;

procedure TForm1.N2Click(Sender: TObject);
begin
  DBControl.BDCow.Show();
end;

procedure TForm1.N3Click(Sender: TObject);
var
  Q: TFDQuery;
begin
  DataModule1.FDConnection1.Open();
  Q:=MD.DataModule1.qUpdateDate;
  Q.Close;
  Q.SQL.Text:='UPDATE cow set id_status='+IntToStr(ID_COW)+' where id_status='+IntToStr(ID_COLF)
  +' and (julianday(date())-julianday(date))/30> 18;';
  Q.ExecSQL;
  Q.SQL.Text:='UPDATE cow set id_status='+IntToStr(ID_BULL)+' where id_status='
  +IntToStr(ID_GOBY)+' and (julianday(date())-julianday(date))/30 > 18;';
  Q.ExecSQL;
end;

end.
