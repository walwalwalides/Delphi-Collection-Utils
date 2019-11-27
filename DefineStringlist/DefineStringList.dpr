program DefineStringList;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  DupStringList in 'DupStringList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
