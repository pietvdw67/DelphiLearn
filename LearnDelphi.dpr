program LearnDelphi;

uses
  Forms,
  main_u in 'main_u.pas' {frmMain},
  array_u in 'array_u.pas' {frmArray};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmArray, frmArray);
  Application.Run;
end.
