program Segitiga1dan0;

var
  i, j, tinggi: integer;

begin
  { Minta pengguna untuk memasukkan tinggi segitiga }
  writeln('Masukkan tinggi segitiga:');
  readln(tinggi);
  
  for i := 0 to tinggi - 1 do
  begin
    for j := 0 to i do
    begin
      { Mencetak 1 dan 0 secara bergantian }
      if (i + j) mod 2 = 0 then
        write('1 ')
      else
        write('0 ');
    end;
    writeln; { Pindah ke baris berikutnya }
  end;
end.
