CREATE TABLE Nasabah (
    id_nasabah INT(10) PRIMARY KEY,
    id_rekening INT(25),
    ktp INT,
    no_hp INT(15),
    nama_Lengkap VARCHAR(25),
    jenis_Kelamin ENUM('P', 'L'),
    status ENUM('Sudah Kawin', 'Belum Kawin'),
    alamat VARCHAR(25),
    email VARCHAR(25),
    FOREIGN KEY (id_rekening) REFERENCES Rekening_Bank(id_rekening)
);
