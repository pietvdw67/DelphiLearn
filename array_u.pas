unit array_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmArray = class(TForm)
    btnReadScores: TButton;
    memoScores: TMemo;
    StringGrid1: TStringGrid;
    btnResetBoard: TButton;
    txtFrom: TEdit;
    txtTo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnMove: TButton;
    procedure btnReadScoresClick(Sender: TObject);
    procedure btnResetBoardClick(Sender: TObject);
    procedure btnMoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    arrChessBoard: array['A'..'H',1..8] of string;
    function getColNum(aColumnChar: char): integer;
    function getRowNum(aRowNum: integer): integer;
    procedure drawBoard();

  end;

var
  frmArray: TfrmArray;

implementation

{$R *.dfm}

procedure TfrmArray.btnMoveClick(Sender: TObject);
var
  cFromCol,cToCol: char;
  iFromRow,iToRow: integer;

begin

  cFromCol:= txtFrom.Text[1];
  cToCol:= txtTo.Text[1];
  iFromRow:= StrToInt(copy(txtFrom.Text,2));
  iToRow:= StrToInt(copy(txtTo.Text,2));

  arrChessBoard[cToCol,iToRow]:= arrChessBoard[cFromCol,iFromRow];
  arrChessBoard[cFromCol,iFromRow]:= '';

  drawBoard();

end;

procedure TfrmArray.btnReadScoresClick(Sender: TObject);
var
  fScoresFile: textfile;
  sLine: string;
  arrScores: array[1..18] of integer;
  iCurrentHole: integer;

begin
  iCurrentHole:= 1;

  if (FileExists('scores.txt') = false) then
  begin
    showMessage('The file does not exist in this universe');
    exit;
  end;

  assignFile(fScoresFile,'scores.txt');
  reset(fScoresFile);
  while not eof(fScoresFile) do
  begin
    readLn(fScoresFile,sLine);
    arrScores[iCurrentHole]:= StrToInt(sLine);

    inc (iCurrentHole);

    if (iCurrentHole)>18 then
      iCurrentHole:= 18;

  end;

  closeFile(fScoresFile);


  for iCurrentHole := 1 to 18 do
  begin
    memoScores.Lines.Add(IntToStr(arrScores[iCurrentHole]));
  end;




end;

procedure TfrmArray.btnResetBoardClick(Sender: TObject);
var
  repCol: char;
  repRow: integer;
begin

  for repCol := 'A' to 'H' do
    begin
      for repRow := 1 to 8 do
        begin
          arrChessBoard[repCol,repRow]:='';
        end;
    end;

  arrChessBoard['A',1]:='R';
  arrChessBoard['B',1]:='B';
  arrChessBoard['C',1]:='Kn';
  arrChessBoard['D',1]:='Q';
  arrChessBoard['E',1]:='K';
  arrChessBoard['F',1]:='Kn';
  arrChessBoard['G',1]:='B';
  arrChessBoard['H',1]:='R';
  arrChessBoard['A',2]:='P';
  arrChessBoard['B',2]:='P';
  arrChessBoard['C',2]:='P';
  arrChessBoard['D',2]:='P';
  arrChessBoard['E',2]:='P';
  arrChessBoard['F',2]:='P';
  arrChessBoard['G',2]:='P';
  arrChessBoard['H',2]:='P';

  arrChessBoard['A',8]:='R';
  arrChessBoard['B',8]:='B';
  arrChessBoard['C',8]:='Kn';
  arrChessBoard['D',8]:='Q';
  arrChessBoard['E',8]:='K';
  arrChessBoard['F',8]:='Kn';
  arrChessBoard['G',8]:='B';
  arrChessBoard['H',8]:='R';
  arrChessBoard['A',7]:='P';
  arrChessBoard['B',7]:='P';
  arrChessBoard['C',7]:='P';
  arrChessBoard['D',7]:='P';
  arrChessBoard['E',7]:='P';
  arrChessBoard['F',7]:='P';
  arrChessBoard['G',7]:='P';
  arrChessBoard['H',7]:='P';

  drawBoard();

end;



procedure TfrmArray.drawBoard;
var
  repCol: char;
  repRow: integer;
  iStringGridRow: integer;
  iStringGridCol: integer;
begin

  for repCol := 'A' to 'H' do
    begin
      for repRow := 1 to 8 do
        begin
          iStringGridRow := getRowNum(repRow);
          iStringGridCol:= getColNum(repCol);
          StringGrid1.Cells[iStringGridCol,iStringGridRow]:= arrChessBoard[repCol,repRow];
        end;
    end;

end;

function TfrmArray.getColNum(aColumnChar: char): integer;
begin
  if (aColumnChar = 'A') then
    Result:= 0;
  if (aColumnChar = 'B') then
    Result:= 1;
  if (aColumnChar = 'C') then
    Result:= 2;
  if (aColumnChar = 'D') then
    Result:= 3;
  if (aColumnChar = 'E') then
    Result:= 4;
  if (aColumnChar = 'F') then
    Result:= 5;
  if (aColumnChar = 'G') then
    Result:= 6;
  if (aColumnChar = 'H') then
    Result:= 7;
end;

function TfrmArray.getRowNum(aRowNum: integer): integer;
begin
  Result:= aRowNum - 1;

end;

end.

