CREATE TABLE Transaksi (
    id_transaksi INT(20) PRIMARY KEY,
    id_rekening INT(25),
    tujuan_transaksi VARCHAR(20),
    jumlah_transaksi INT(15),
    tanggal_transaksi DATE,
    jenis_transaksi VARCHAR(25),
    FOREIGN KEY (id_rekening) REFERENCES Rekening_Bank(id_rekening)
);
