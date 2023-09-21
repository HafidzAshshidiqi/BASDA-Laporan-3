CREATE TABLE Rekening_Bank (
    id_rekening INT(25) PRIMARY KEY,
    id_nasabah INT(10),
    asal_bank VARCHAR(10),
    kode_rekening INT(6),
    saldo INT(15),
    tanggal_dibuka DATE,
    status_rekening VARCHAR(10),
    FOREIGN KEY (id_nasabah) REFERENCES Nasabah(id_nasabah)
);
