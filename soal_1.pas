program KasirSupermarket;

uses crt;

var
  total, diskon, totalDiskon, harga: real;
  jumlahProduk, i, kategori, member, hari, poin: integer;
  nama: string;

begin
  clrscr;
  total := 0;
  poin := 0;

  writeln('Selamat datang di Supermarket AHY!');
  write('Masukkan Nama Anggota: ');
  readln(nama);

  writeln('Apakah Anda member? (1: Ya, 0: Tidak)');
  readln(member);

  writeln('Masukkan jumlah produk yang dibeli:');
  readln(jumlahProduk);

  for i := 1 to jumlahProduk do
  begin
    writeln('Masukkan jumlah produk ke-', i);
    write('Nama Produk: ');
    readln(nama); // Nama produk tidak disimpan, hanya untuk input
    write('Harga Produk: Rp');
    readln(harga);

    writeln('Masukkan hari (1: Senin, 2: Selasa, 3: Rabu, 4: Kamis):');
    readln(hari);

    // Menentukan diskon berdasarkan hari
    case hari of
      1: diskon := harga * 0.1;  // Senin (Hygiene)
      2: diskon := harga * 0.05; // Selasa (Frozen Food)
      3: diskon := harga * 0.3;  // Rabu (Elektronik)
      4: diskon := harga * 0.08; // Kamis (Laktosa)
    else
      diskon := 0;
    end;

    // Hitung total setelah diskon
    totalDiskon := harga - diskon;

    // Diskon tambahan untuk member
    if member = 1 then
      totalDiskon := totalDiskon * 0.9; // Diskon member 10%

    // Hitung total
    total := total + totalDiskon;

    // Hitung poin
    if member = 1 then
      poin := poin + trunc(harga / 50000);
  end;

  // Diskon tambahan jika jumlah produk >= 10
  if jumlahProduk >= 10 then
    total := total * 0.95; // Diskon tambahan 5%

  // Menampilkan hasil
  writeln('------------------------------------');
  writeln('Total: Rp', total:0:2);
  writeln('Diskon: 10% + 5% = 15%'); // Diskon member dan jumlah produk
  writeln('Pembayaran: Rp', total:0:2);

  // Cek poin untuk voucher
  if poin >= 50 then
  begin
    total := total * 0.8; // Diskon 20% untuk voucher
    writeln('Anda mendapatkan voucher diskon 20%! Total setelah voucher: Rp', total:0:2);
  end
  else
  begin
    writeln('Poin: ', poin);
  end;

  readln; // Menunggu input sebelum keluar
end.
