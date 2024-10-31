program BilanganPrima;

uses crt;

var
  n, i, j: integer;
  isPrima: boolean;

begin
  clrscr;
  
  writeln('Program Mencetak Bilangan Prima');
  writeln('--------------------------------');
  write('Masukkan angka n: ');
  readln(n);

  writeln('Bilangan prima dari 1 hingga ', n, ':');
  
  for i := 2 to n do
  begin
    isPrima := true; // Anggap i adalah bilangan prima

    // Cek apakah i adalah bilangan prima
    for j := 2 to trunc(sqrt(i)) do
