unit DBControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtDlgs;

type
  TBDCow = class(TForm)
    pages: TPageControl;
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
    edImage: TDBImage;
    pmImage: TPopupMenu;
    iInsertImage: TMenuItem;
    iOpenImage: TMenuItem;
    odImage: TOpenPictureDialog;
    tsImage: TTabSheet;
    DBGrid7: TDBGrid;
    edImage2: TDBImage;
    DBNavigator7: TDBNavigator;
    procedure iInsertImageClick(Sender: TObject);
    procedure iOpenImageClick(Sender: TObject);
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
  MD, JPEG;
procedure TBDCow.iInsertImageClick(Sender: TObject);
begin
  edImage2.PasteFromClipboard;
end;

procedure TBDCow.iOpenImageClick(Sender: TObject);
begin
    if odImage.Execute then begin
      MD.DataModule1.tblImage.Edit;
      MD.DataModule1.tblImageimage.LoadFromFile(odImage.FileName);
  end;
end;

end.
