unit string_grid_demo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmStringGridDemo = class(TForm)
    grid: TStringGrid;
    btnPopulate: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnPopulateClick(Sender: TObject);
  private
    { Private declarations }
  public
    arrStudent: array[1..4,1..3] of String
  end;

var
  frmStringGridDemo: TfrmStringGridDemo;

implementation

{$R *.dfm}

procedure TfrmStringGridDemo.btnPopulateClick(Sender: TObject);
var
  r,k: integer;

begin
  grid.Cells[0,0]:='Naam';
  grid.cells[1,0]:='Age';
  grid.Cells[2,0]:='Color';

  for r := 1 to 4 do
  begin
    for k := 1 to 3 do
    begin
      grid.Cells[k-1,r]:= arrStudent[r,k];
    end;
  end;
end;

procedure TfrmStringGridDemo.FormActivate(Sender: TObject);
begin
  arrStudent[1,1]:= 'Kayla';
  arrStudent[1,2]:= '18';
  arrStudent[1,3]:= 'Pienk';

  arrStudent[2,1]:= 'Claire';
  arrStudent[2,2]:= '16';
  arrStudent[2,3]:= 'Pienk';

  arrStudent[3,1]:= 'Pappa';
  arrStudent[3,2]:= '46';
  arrStudent[3,3]:= 'Grys';

  arrStudent[4,1]:= 'Mamma';
  arrStudent[4,2]:= '82';
  arrStudent[4,3]:= 'Kapoen';



end;

end.
