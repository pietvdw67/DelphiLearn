program LearnDelphi;

uses
  Forms,
  main_u in 'main_u.pas' {frmMain},
  array_u in 'array_u.pas' {frmArray},
  string_grid_demo_u in 'string_grid_demo_u.pas' {frmStringGridDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmArray, frmArray);
  Application.CreateForm(TfrmStringGridDemo, frmStringGridDemo);
  Application.Run;
end.
