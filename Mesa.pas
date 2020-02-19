unit Mesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngextra, StdCtrls;

type
  TForm1 = class(TForm)
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton8: TPNGButton;
    PNGButton9: TPNGButton;
    PNGButton10: TPNGButton;
    PNGButton11: TPNGButton;
    PNGButton12: TPNGButton;
    PNGButton13: TPNGButton;
    PNGButton14: TPNGButton;
    PNGButton15: TPNGButton;
    PNGButton16: TPNGButton;
    PNGButton17: TPNGButton;
    PNGButton18: TPNGButton;
    PNGButton19: TPNGButton;
    PNGButton20: TPNGButton;
    PNGButton21: TPNGButton;
    PNGButton22: TPNGButton;
    PNGButton23: TPNGButton;
    PNGButton24: TPNGButton;
    PNGButton25: TPNGButton;
    PNGButton26: TPNGButton;
    PNGButton27: TPNGButton;
    PNGButton28: TPNGButton;
    PNGButton29: TPNGButton;
    PNGButton30: TPNGButton;
    PNGButton31: TPNGButton;
    PNGButton32: TPNGButton;
    PNGButton33: TPNGButton;
    PNGButton34: TPNGButton;
    PNGButton35: TPNGButton;
    PNGButton36: TPNGButton;
    PNGButton37: TPNGButton;
    PNGButton38: TPNGButton;
    PNGButton39: TPNGButton;
    PNGButton40: TPNGButton;
    PNGButton41: TPNGButton;
    PNGButton42: TPNGButton;
    PNGButton43: TPNGButton;
    PNGButton44: TPNGButton;
    PNGButton45: TPNGButton;
    PNGButton46: TPNGButton;
    PNGButton47: TPNGButton;
    PNGButton48: TPNGButton;
    PNGButton49: TPNGButton;
    PNGButton50: TPNGButton;
    PNGButton51: TPNGButton;
    PNGButton52: TPNGButton;
    PNGButton53: TPNGButton;
    PNGButton54: TPNGButton;
    PNGButton55: TPNGButton;
    PNGButton56: TPNGButton;
    PNGButton57: TPNGButton;
    PNGButton58: TPNGButton;
    PNGButton59: TPNGButton;
    PNGButton60: TPNGButton;
    PNGButton61: TPNGButton;
    PNGButton62: TPNGButton;
    PNGButton63: TPNGButton;
    PNGButton64: TPNGButton;
    PNGButton65: TPNGButton;
    PNGButton66: TPNGButton;
    PNGButton67: TPNGButton;
    PNGButton68: TPNGButton;
    PNGButton69: TPNGButton;
    PNGButton70: TPNGButton;
    PNGButton71: TPNGButton;
    PNGButton72: TPNGButton;
    PNGButton73: TPNGButton;
    PNGButton74: TPNGButton;
    PNGButton75: TPNGButton;
    PNGButton76: TPNGButton;
    PNGButton77: TPNGButton;
    PNGButton78: TPNGButton;
    PNGButton79: TPNGButton;
    PNGButton80: TPNGButton;
    PNGButton81: TPNGButton;
    PNGButton82: TPNGButton;
    PNGButton83: TPNGButton;
    PNGButton84: TPNGButton;
    PNGButton85: TPNGButton;
    PNGButton86: TPNGButton;
    PNGButton87: TPNGButton;
    PNGButton88: TPNGButton;
    PNGButton89: TPNGButton;
    PNGButton90: TPNGButton;
    Panel1: TPanel;
    Label1: TLabel;
    PNGButton91: TPNGButton;
    PNGButton92: TPNGButton;
    Panel3: TPanel;
    Panel4: TPanel;
    PNGButton95: TPNGButton;
    Label2: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Panel2: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    procedure Panel1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    function randomBall(): Integer;
    function uniqueBall(): Integer;
  public

  end;

const
 C= 90;
var
  Form1: TForm1;
  
  Globo: array[1..90] of Integer;
  Sorteadas: array[1..90] of Integer;
  U : Boolean;
  Bola, UltimaBola, I, P, A, B: Integer;
implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
  for I := 1 to C do
    Globo[I] := I;
    Sorteadas[I] := 0;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
A:=1;
for I := 1 To C do
  begin
    if Sorteadas[I] = 1 then
        A:=A+1;
  end;
if A = C then
Panel1.Enabled:= false;

Panel5.Caption:= IntToStr(A);
PNGButton92.Visible:=false;
PNGButton95.Visible:=false;

Timer1.Enabled:= true;
UltimaBola := 0;
Bola := uniqueBall();
Sorteadas[Bola] := 1;

PNGButton95.ImageNormal.LoadFromFile('imgs\'+IntToStr(Bola)+'.png');

PNGButton95.Visible:=true;
PNGButton92.Visible:=true;


case Bola of
  1: begin
     PNGButton1.Enabled := true;
     end;
  2: begin
     PNGButton2.Enabled := true;
     end;
  3: begin
     PNGButton3.Enabled := true;
     end;
  4: begin
     PNGButton4.Enabled := true;
     end;
  5: begin
     PNGButton5.Enabled := true;
     end;
  6: begin
     PNGButton6.Enabled := true;
     end;
  7: begin
     PNGButton7.Enabled := true;
     end;
  8: begin
     PNGButton8.Enabled := true;
     end;
  9: begin
     PNGButton9.Enabled := true;
     end;
  10: begin
     PNGButton10.Enabled := true;
     end;
	 
  11: begin
     PNGButton11.Enabled := true;
     end;
  12: begin
     PNGButton12.Enabled := true;
     end;
  13: begin
     PNGButton13.Enabled := true;
     end;
  14: begin
     PNGButton14.Enabled := true;
     end;
  15: begin
     PNGButton15.Enabled := true;
     end;
  16: begin
     PNGButton16.Enabled := true;
     end;
  17: begin
     PNGButton17.Enabled := true;
     end;
  18: begin
     PNGButton18.Enabled := true;
     end;
  19: begin
     PNGButton19.Enabled := true;
     end;
  20: begin
     PNGButton20.Enabled := true;
     end;
	 
	 
  21: begin
     PNGButton21.Enabled := true;
     end;
  22: begin
     PNGButton22.Enabled := true;
     end;
  23: begin
     PNGButton23.Enabled := true;
     end;
  24: begin
     PNGButton24.Enabled := true;
     end;
  25: begin
     PNGButton25.Enabled := true;
     end;
  26: begin
     PNGButton26.Enabled := true;
     end;
  27: begin
     PNGButton27.Enabled := true;
     end;
  28: begin
     PNGButton28.Enabled := true;
     end;
  29: begin
     PNGButton29.Enabled := true;
     end;
  30: begin
     PNGButton30.Enabled := true;
     end;
	 
	 
  31: begin
     PNGButton31.Enabled := true;
     end;
  32: begin
     PNGButton32.Enabled := true;
     end;
  33: begin
     PNGButton33.Enabled := true;
     end;
  34: begin
     PNGButton34.Enabled := true;
     end;
  35: begin
     PNGButton35.Enabled := true;
     end;
  36: begin
     PNGButton36.Enabled := true;
     end;
  37: begin
     PNGButton37.Enabled := true;
     end;
  38: begin
     PNGButton38.Enabled := true;
     end;
  39: begin
     PNGButton39.Enabled := true;
     end;
  40: begin
     PNGButton40.Enabled := true;
     end;
	 
  41: begin
     PNGButton41.Enabled := true;
     end;
  42: begin
     PNGButton42.Enabled := true;
     end;
  43: begin
     PNGButton43.Enabled := true;
     end;
  44: begin
     PNGButton44.Enabled := true;
     end;
  45: begin
     PNGButton45.Enabled := true;
     end;
  46: begin
     PNGButton46.Enabled := true;
     end;
  47: begin
     PNGButton47.Enabled := true;
     end;
  48: begin
     PNGButton48.Enabled := true;
     end;
  49: begin
     PNGButton49.Enabled := true;
     end;
  50: begin
     PNGButton50.Enabled := true;
     end;
	 
  51: begin
     PNGButton51.Enabled := true;
     end;
  52: begin
     PNGButton52.Enabled := true;
     end;
  53: begin
     PNGButton53.Enabled := true;
     end;
  54: begin
     PNGButton54.Enabled := true;
     end;
  55: begin
     PNGButton55.Enabled := true;
     end;
  56: begin
     PNGButton56.Enabled := true;
     end;
  57: begin
     PNGButton57.Enabled := true;
     end;
  58: begin
     PNGButton58.Enabled := true;
     end;
  59: begin
     PNGButton59.Enabled := true;
     end;
  60: begin
     PNGButton60.Enabled := true;
     end;
	 
  61: begin
     PNGButton61.Enabled := true;
     end;
  62: begin
     PNGButton62.Enabled := true;
     end;
  63: begin
     PNGButton63.Enabled := true;
     end;
  64: begin
     PNGButton64.Enabled := true;
     end;
  65: begin
     PNGButton65.Enabled := true;
     end;
  66: begin
     PNGButton66.Enabled := true;
     end;
  67: begin
     PNGButton67.Enabled := true;
     end;
  68: begin
     PNGButton68.Enabled := true;
     end;
  69: begin
     PNGButton69.Enabled := true;
     end;
  70: begin
     PNGButton70.Enabled := true;
     end;
	 
  71: begin
     PNGButton71.Enabled := true;
     end;
  72: begin
     PNGButton72.Enabled := true;
     end;
  73: begin
     PNGButton73.Enabled := true;
     end;
  74: begin
     PNGButton74.Enabled := true;
     end;
  75: begin
     PNGButton75.Enabled := true;
     end;
  76: begin
     PNGButton76.Enabled := true;
     end;
  77: begin
     PNGButton77.Enabled := true;
     end;
  78: begin
     PNGButton78.Enabled := true;
     end;
  79: begin
     PNGButton79.Enabled := true;
     end;
  80: begin
     PNGButton80.Enabled := true;
     end;
	 
  81: begin
     PNGButton81.Enabled := true;
     end;
  82: begin
     PNGButton82.Enabled := true;
     end;
  83: begin
     PNGButton83.Enabled := true;
     end;
  84: begin
     PNGButton84.Enabled := true;
     end;
  85: begin
     PNGButton85.Enabled := true;
     end;
  86: begin
     PNGButton86.Enabled := true;
     end;
  87: begin
     PNGButton87.Enabled := true;
     end;
  88: begin
     PNGButton88.Enabled := true;
     end;
  89: begin
     PNGButton89.Enabled := true;
     end;
  90: begin
     PNGButton90.Enabled := true;
     end;
  end;

UltimaBola := Bola;
PNGButton92.ImageNormal.LoadFromFile('imgs\'+IntToStr(Globo[UltimaBola] )+'.png');

end;







//Sorteia um numero
function TForm1.randomBall(): integer;
begin
  Randomize;
  P := 1 + Random(C);
  Result := Globo[P];
end;

//Retorna uma bola válida
function TForm1.uniqueBall(): integer;
begin
  B := randomBall();

  while Sorteadas[B] = 1 do
  begin
    B := uniqueBall();
  end;

Result := B;
end;




















//Timers
procedure TForm1.Timer1Timer(Sender: TObject);
var
Texto: String;
begin
Texto := Label2.Caption;
Label2.Caption := Copy(Texto, 2, Length(Texto))+Texto[1];
end;
procedure TForm1.Timer2Timer(Sender: TObject);
begin
Timer1.Enabled:=false;
Label2.Caption :='BOLA  ';
end;

//Reiniciar
procedure TForm1.Panel2Click(Sender: TObject);
begin
if MessageDlg('Deseja reiniciar o bingo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin

for I := 1 to C do
begin
  Globo[I] := I;
  Sorteadas[I] := 0;
end;
PNGButton92.Visible:=false;
PNGButton95.Visible:=false;

PNGButton95.ImageNormal.LoadFromFile('imgs\0.png');
PNGButton92.ImageNormal.LoadFromFile('imgs\0.png');

PNGButton92.Visible:=true;
PNGButton95.Visible:=true;

PNGButton1.Enabled := false;
PNGButton2.Enabled := false;
PNGButton3.Enabled := false;
PNGButton4.Enabled := false;
PNGButton5.Enabled := false;
PNGButton6.Enabled := false;
PNGButton7.Enabled := false;
PNGButton8.Enabled := false;
PNGButton9.Enabled := false;
PNGButton10.Enabled := false;

PNGButton11.Enabled := false;
PNGButton12.Enabled := false;
PNGButton13.Enabled := false;
PNGButton14.Enabled := false;
PNGButton15.Enabled := false;
PNGButton16.Enabled := false;
PNGButton17.Enabled := false;
PNGButton18.Enabled := false;
PNGButton19.Enabled := false;
PNGButton20.Enabled := false;

PNGButton21.Enabled := false;
PNGButton22.Enabled := false;
PNGButton23.Enabled := false;
PNGButton24.Enabled := false;
PNGButton25.Enabled := false;
PNGButton26.Enabled := false;
PNGButton27.Enabled := false;
PNGButton28.Enabled := false;
PNGButton29.Enabled := false;
PNGButton30.Enabled := false;

PNGButton31.Enabled := false;
PNGButton32.Enabled := false;
PNGButton33.Enabled := false;
PNGButton34.Enabled := false;
PNGButton35.Enabled := false;
PNGButton36.Enabled := false;
PNGButton37.Enabled := false;
PNGButton38.Enabled := false;
PNGButton39.Enabled := false;
PNGButton40.Enabled := false;

PNGButton41.Enabled := false;
PNGButton42.Enabled := false;
PNGButton43.Enabled := false;
PNGButton44.Enabled := false;
PNGButton45.Enabled := false;
PNGButton46.Enabled := false;
PNGButton47.Enabled := false;
PNGButton48.Enabled := false;
PNGButton49.Enabled := false;
PNGButton50.Enabled := false;

PNGButton51.Enabled := false;
PNGButton52.Enabled := false;
PNGButton53.Enabled := false;
PNGButton54.Enabled := false;
PNGButton55.Enabled := false;
PNGButton56.Enabled := false;
PNGButton57.Enabled := false;
PNGButton58.Enabled := false;
PNGButton59.Enabled := false;
PNGButton60.Enabled := false;

PNGButton61.Enabled := false;
PNGButton62.Enabled := false;
PNGButton63.Enabled := false;
PNGButton64.Enabled := false;
PNGButton65.Enabled := false;
PNGButton66.Enabled := false;
PNGButton67.Enabled := false;
PNGButton68.Enabled := false;
PNGButton69.Enabled := false;
PNGButton70.Enabled := false;

PNGButton71.Enabled := false;
PNGButton72.Enabled := false;
PNGButton73.Enabled := false;
PNGButton74.Enabled := false;
PNGButton75.Enabled := false;
PNGButton76.Enabled := false;
PNGButton77.Enabled := false;
PNGButton78.Enabled := false;
PNGButton79.Enabled := false;
PNGButton80.Enabled := false;

PNGButton81.Enabled := false;
PNGButton82.Enabled := false;
PNGButton83.Enabled := false;
PNGButton84.Enabled := false;
PNGButton85.Enabled := false;
PNGButton86.Enabled := false;
PNGButton87.Enabled := false;
PNGButton88.Enabled := false;
PNGButton89.Enabled := false;
PNGButton90.Enabled := false;

Panel1.Enabled:= true;
Panel5.Caption:= IntToStr(0);
end;

end;

end.
