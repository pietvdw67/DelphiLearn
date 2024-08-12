unit main_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,array_u, StdCtrls,string_grid_demo_u,formulas_u;

type
  TfrmMain = class(TForm)
    btnArray: TButton;
    btnStringGridDemo: TButton;
    brnFormulas: TButton;
    procedure btnArrayClick(Sender: TObject);
    procedure btnStringGridDemoClick(Sender: TObject);
    procedure brnFormulasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.brnFormulasClick(Sender: TObject);
begin
  frmFormulas.show();

end;

procedure TfrmMain.btnArrayClick(Sender: TObject);
begin
  array_u.frmArray.Show();

end;

procedure TfrmMain.btnStringGridDemoClick(Sender: TObject);
begin
  frmStringGridDemo.Show();

end;

end.
