 program HitungTotalDanRataRata;

uses crt;

var
  n, i: integer;
  angka, total, rataRata: real;

begin
  clrscr;
  total := 0; // Inisialisasi total

  writeln('Program Hitung Total dan Rata-rata');
  writeln('------------------------------------');
  
  writeln('Masukkan jumlah angka yang ingin dihitung (N):');
  readln(n);

  // Memastikan jumlah angka yang dimasukkan valid
  if n <= 0 then
  begin
    writeln('Jumlah angka harus lebih dari 0.');
    exit;
  end;

  // Loop untuk mengumpulkan angka
  for i := 1 to n do
  begin
    writeln('Masukkan angka ke-', i, ':');
    readln(angka);
    total := total + angka; // Menjumlahkan angka
  end;

  // Menghitung rata-rata
  rataRata := total / n;

  // Menampilkan hasil
  writeln('------------------------------------');
  writeln('Total angka: ', total:0:2);
  writeln('Rata-rata angka: ', rataRata:0:2);
  
  readln; // Menunggu input sebelum keluar
end.
