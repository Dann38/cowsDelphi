program ProjCOW;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  MD in 'MD.pas' {DataModule1: TDataModule},
  DBControl in 'DBControl.pas' {BDCow};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TBDCow, BDCow);
  Application.Run;
end.
