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
    addCow: TTabSheet;
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
    tsFeed: TTabSheet;
    mFeed: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    seFeedCow: TSpinEdit;
    seFeedBull: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnUpdataFeedData: TButton;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAppCowClick(Sender: TObject);
    procedure btnUpdateFilterClick(Sender: TObject);
    procedure btnSearchCowClick(Sender: TObject);
    procedure btnUpDataGrowClick(Sender: TObject);
    function GetStrCowNextYear(var cow, colf: integer): String;
    procedure btnDefaultQuantityClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    function getCountCowByStatus(id: integer): Integer;
    procedure btnUpdataFeedDataClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure UpdateStatusCow(sql_text:String; id_before, id_after: integer);
  private
    procedure CreatingConstants;
  public
    { Public declarations }
  end;
const
  CountSQL= 'SELECT count(id) From %s where id_status=%d';
  UpdateOldSQL='UPDATE cow set id_status=%d where id_status=%d and (julianday(date())-julianday(date))/30> 18;';
var
  Form1: TForm1;
  BIRTH_RATE, FEED_RATE_COW, FEED_RATE_HAY, FEED_RATE_BREAD,MASS_SMALL_BALE,
  MASS_BIG_BALE: Double;
  YAER_QUANTITY: integer;
  ID_COW, ID_COLF, ID_BULL, ID_GOBY: Integer;


implementation

{$R *.dfm}
uses
  MD, DBControl;
{������� � ��}
function TForm1.getCountCowByStatus(id: integer): Integer;
var
    Q: TFDQuery;
begin
    DataModule1.FDConnection1.Open();
    Q:=MD.DataModule1.qCount;

    Q.Close;
    Q.SQL.Text:=format(CountSQL, ['cow', id]);
    Q.Open();
    getCountCowByStatus:= Q.Fields[0].AsInteger;

    Q.Close;
    DataModule1.FDConnection1.Close;
end;
procedure TForm1.UpdateStatusCow(sql_text:String; id_before, id_after: integer);
var
  Q: TFDQuery;
begin
  DataModule1.FDConnection1.Open();
  Q:=MD.DataModule1.qUpdateDate;
  Q.Close;
  Q.SQL.Text:=format(sql_text, [id_after, id_before]);
  Q.ExecSQL;
end;

{�������� ����� � ��������� ��������}      //������� ��������� �� ���� ������
procedure TForm1.CreatingConstants;
begin
  ID_COLF:=1;
  ID_GOBY:=2;
  ID_COW:=3;
  ID_BULL:=4;
  BIRTH_RATE := 0.45;
  YAER_QUANTITY := 5;
  FEED_RATE_HAY:=2.5;
  FEED_RATE_BREAD:=1;
  FEED_RATE_COW:=FEED_RATE_HAY+FEED_RATE_BREAD;
  MASS_SMALL_BALE:=0.25;
  MASS_BIG_BALE:=0.5;
end;
procedure TForm1.FormCreate(Sender: TObject);

begin
  CreatingConstants;

  rgStatusCow.Items.Add('�������');
  rgStatusCow.Items.Add('�����');
  rgStatusCow.Items.Add('������');
  rgStatusCow.Items.Add('���');

end;

{�� �������������� � ����������}
procedure TForm1.N2Click(Sender: TObject);
begin
  DBControl.BDCow.Show();
end;
procedure TForm1.N3Click(Sender: TObject);
var
  Q: TFDQuery;
begin
    UpdateStatusCow(UpdateOldSQL, ID_COLF, ID_COW);
    UpdateStatusCow(UpdateOldSQL, ID_GOBY, ID_BULL);
end;

{���������� ������ � ����� ��������}
procedure TForm1.btnAppCowClick(Sender: TObject);
var
  Q: TFDQuery;
  num: Integer;
  date, id_p_colf: String;
begin
  MD.DataModule1.FDConnection1.Open();
  MD.DataModule1.tblCow.Open();
  Q:= MD.DataModule1.qAppCow;
  num:= rgStatusCow.ItemIndex +1;
  date:=FormatDateTime('yyyy-mm-dd',date_cow.DateTime);

  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:='insert into cow (id_status, date) VALUES(' +
  IntToStr(num) +', "'+ date +'");';
  MD.DataModule1.qAppCow.ExecSQL;

  MD.DataModule1.tblCow.Last;
  id_p_colf:= MD.DataModule1.tblCow.FieldByName('id').AsString;
  MD.DataModule1.qAppCow.Close();
  MD.DataModule1.qAppCow.SQL.Text:= 'insert into colving (id_cow, id_colf) VALUES('+
  id_p_cow.Text + ', '+ id_p_colf +')';
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
  Q.SQL.Text:='Select fc.id From feature as f left join feature_cow as fc ON f.id = fc.id_feature where f.name = "'+ S +'"';
  Q.Open();
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

{������ �������� �����}
procedure TForm1.btnDefaultQuantityClick(Sender: TObject);
begin
    spiCow.Value:= getCountCowByStatus(id_cow);
    spiColf.Value:= getCountCowByStatus(id_colf);
end;
function TForm1.GetStrCowNextYear(var cow, colf: integer): String;
var
  new_cow, new_colf: integer;
  S: string;
begin
  new_cow:=cow+colf;
  new_colf:=round(cow*BIRTH_RATE);
  cow:=new_cow;
  colf:=new_colf;
  S := '�����: '+ IntToStr(cow) + #13#10'Ҹ���: ' + IntToStr(colf) + #13#10#13#10;
  result:= S;
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
    S := S + '====== '+ IntToStr(date+i) + '��� ======'#13#10+
    GetStrCowNextYear(cow, colf);
  end;
  mGrowCow.Text:= mGrowCow.Text + S + #13#10;
end;

{�����}
procedure TForm1.PageControl1Change(Sender: TObject);
begin
    seFeedCow.Value:=getCountCowByStatus(ID_COW);//+getCountCowByStatus(ID_COLF);
    sefeedBull.Value:=getCountCowByStatus(ID_BULL);
end;
procedure TForm1.btnUpdataFeedDataClick(Sender: TObject);
var
  S: string;
  countGoald, massFeed,massHay, massBread, hayBale, SmallHayBale : integer;
begin
    S:='++++++++++++++++�����+++++++++++++++'#13#10;
    countGoald:= seFeedCow.Value+sefeedBull.Value;
    massHay:= round(countGoald*FEED_RATE_HAY);
    hayBale:= round(massHay/MASS_BIG_BALE);
    SmallHayBale:= round(massHay/MASS_SMALL_BALE);
    massBread:=round(countGoald*FEED_RATE_BREAD);
    massFeed:=massHay+massBread;
    S:=S + '������ ����� ����������: ' +intToStr(massFeed) + ' �.'#13#10#13#10;
    S:=S + '����: ' + intToStr(massHay) + ' �. ' + #9#9+ intToStr(hayBale)+' ���.('+intToStr(SmallHayBale)+' ��������� ���.)'#13#10;
    S:=S + '����: ' + intToStr(massBread) + ' �.'#13#10;
    mFeed.Text:=S;
end;
end.
