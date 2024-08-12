unit formulas_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmFormulas = class(TForm)
    btnMod: TButton;
    procedure btnModClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormulas: TfrmFormulas;

implementation

{$R *.dfm}

procedure TfrmFormulas.btnModClick(Sender: TObject);
var
  iSpelers: integer;
  rSpanne,rReserves: real;
begin

  iSpelers:= 49;
  rSpanne:= trunc(49/11);
  rReserves:= iSpelers mod 11;
  ShowMessage( 'spanne: ' + floatToStr(rSpanne) + ' reserves: ' + floatToStr(rReserves));

end;

end.
