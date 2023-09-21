CREATE TABLE Petugas_Bank (
    id_petugas INT(15) PRIMARY KEY,
    id_cabang INT(15),
    nama_petugas VARCHAR(25),
    kepala_cabang VARCHAR(25),
    jabatan VARCHAR(15),
    jenis_kelamin ENUM('P', 'L'),
    no_hp INT(15),
    email VARCHAR(25),
    FOREIGN KEY (id_cabang) REFERENCES Cabang_Bank(id_cabang)
);
