CREATE TABLE Cabang_Bank (
    id_cabang INT(15) PRIMARY KEY,
    id_petugas INT(15),
    kepala_cabang VARCHAR(20),
    nama_cabang VARCHAR(25),
    kantor_cabang VARCHAR(20),
    alamat_cabang VARCHAR(20),
    FOREIGN KEY (id_petugas) REFERENCES petugas_bank(id_petugas)
);
