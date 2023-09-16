# LAPORAN PRAKTIKUM 3 BASIS DATA
# ERD Sistem Nasabah Bank
![ERD hafidz drawio](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/01b18bb1-5e5c-445d-8600-26be81ad61a2)
Pembahasan :

Pada gambar diatas merupakan ERD dari sistem Nasabah Bank yang memiliki atribut ID Nasabah yang sebagai primary key, Nama Lengkap, No.HP, Email, dan Alamat. Rekening Bank yang memiliki atribut No.Rekening sebagai primary key, Saldo, Status Rekening, dan tanggal Buka. Cabang Bang yang memiliki atribut ID Cabang sebagai primary key, Nama cabang, dan Alamat cabang. Transaksi yang memiliki atribut ID Transaksi sebagai primary key, Jumlah transaksi, tanggal transaksi, dan Jenis Transaksi. Yang terakhir Petugas Bank yang memilik atribut ID petugas sebagai primary key, Nama petugas, jabatan, email, dan No Hp dari semua entitas pada sistem nasabah bank memiliki garis kardinalitas yang di mana setiap nasabah dapat mempunyai satu atau lebih rekening bank (relasi one to many), Setiap Transaksi melakukan dengan satu Rekening Bank (relasi many-to-one),Setiap Transaksi dilakukan oleh satu Petugas Bank (relasi many-to-one antara Transaksi dan Petugas Bank), Setiap Rekening Bank terletak di satu Cabang Bank (relasi many-to-one).

# STRUKTUR TABEL SISTEM NASABAH BANK
![Struktur Table](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/f80c9737-7742-4687-869b-11607e49789a)
Pembahasan :

struktur tabel untuk sistem nasabah bank yang mencakup tabel Nasabah, Rekening_Bank, Transaksi, Petugas_Bank, dan Cabang_Bank:
Tabel Nasabah digunakan untuk menyimpan data tentang nasabah bank, seperti identitas personal mereka.
Tabel Rekening_Bank digunakan untuk menyimpan informasi tentang rekening bank yang dimiliki oleh nasabah.
Tabel Transaksi digunakan untuk mencatat setiap transaksi yang terjadi pada rekening bank.
Tabel Petugas_Bank digunakan untuk menyimpan informasi tentang petugas atau karyawan bank yang mungkin terlibat dalam berbagai aktivitas dalam sistem.
Tabel Cabang_Bank digunakan untuk menyimpan informasi tentang cabang-cabang bank yang mungkin memiliki beberapa lokasi fisik.
Hubungan antara tabel-tabel ini biasanya dijalin melalui kunci asing (foreign key) yang memungkinkan untuk menghubungkan data di antara tabel-tabel tersebut. 

# Tabel Nasabah
![Table nasabah](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/02d61e98-00b1-4354-8ef0-5f54d30428c0)
Pembahasan :

Tabel Nasabah digunakan untuk menyimpan data tentang nasabah bank, seperti identitas personal mereka.
Struktur tabel Nasabah mungkin mencakup kolom seperti ID Nasabah, Nama Nasabah, Alamat, Nomor Telepon, Tanggal Lahir, dan sebagainya.
ID Nasabah biasanya digunakan sebagai kunci utama (primary key) untuk tabel ini untuk mengidentifikasi setiap nasabah secara unik.
# Data Tabel Nasabah
![Data nasabah](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/c49896a2-dac2-48fe-81b4-dc41f8c18692)

Pembahasan :

Data pada gambar diatas merupakan sebuah contoh dari data dalam Nasabah di sistem nasabah bank dalam sebuah database.
# Tabel Rekening Bank
![table rekening bank](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/59845cda-8409-4573-996e-aa1987e1f9bc)

Pembahasan:

Tabel Rekening_Bank digunakan untuk menyimpan informasi tentang rekening bank yang dimiliki oleh nasabah.
Struktur tabel ini mungkin mencakup kolom seperti ID Rekening, Nomor Rekening, Saldo, Tanggal Pembukaan Rekening, Jenis Rekening , dan id_Nasabah (kunci asing yang menghubungkan rekening dengan nasabah tertentu).
ID Rekening biasanya digunakan sebagai kunci utama.
# Data tabel Rekening Bank
![data rekening bank](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/4699aed5-9f7c-48c0-822c-5cc1b73d4fc7)

Pembahasan :

Data pada gambar diatas merupakan sebuah contoh dari data rekening_bank di sistem nasabah bank dalam sebuah database.
# Tabel Transaksi
![table transaksi](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/992cd054-be03-4794-bf41-e730081808ca)

Pembahasan:

Tabel Transaksi digunakan untuk mencatat setiap transaksi yang terjadi pada rekening bank.
Struktur tabel Transaksi mungkin mencakup kolom seperti ID Transaksi, ID Rekening (kunci asing yang menghubungkan transaksi dengan rekening tertentu), Tanggal Transaksi, Jenis Transaksi (penarikan, setoran, transfer, dll.), Jumlah Transaksi, dan deskripsi lainnya.
ID Transaksi biasanya digunakan sebagai kunci utama.
# Data Tabel Transaksi
![data transaksi](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/acbc52a8-fe03-4cd7-b36c-290a1712659d)

Pembahasan:

Data pada gambar diatas merupakan contoh dari data transaksi di sistem nasabah bank dalam sebuah database.
# Tabel Cabang Bank
![Table Cabang](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/22b8b580-393f-4388-85c5-d997a15b9e70)

Pembahasan:

Tabel Petugas_Bank digunakan untuk menyimpan informasi tentang petugas atau karyawan bank yang mungkin terlibat dalam berbagai aktivitas dalam sistem.
Struktur tabel ini mungkin mencakup kolom seperti ID Petugas, Nama Petugas, Jabatan, dan Cabang_ID (kunci asing yang menghubungkan petugas dengan cabang bank tertentu).
ID Petugas biasanya digunakan sebagai kunci utama.

# Data Tabel Cabang bank
![Data Cabang](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/0b74d1cb-7216-4e68-9a50-04828db4d921)

Pembahasan:

Data pada gambar diatas merupakan contoh dari data cabang_bank dalam sistem nasabah bank dalam sebuah database.
# Tabel Petugas Bank
![Table Petugas bank](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/05ab9ca6-bdbc-4773-95aa-076331ace6b8)

Pembahasan:

Tabel Cabang_Bank digunakan untuk menyimpan informasi tentang cabang-cabang bank yang mungkin memiliki beberapa lokasi fisik.
Struktur tabel ini mungkin mencakup kolom seperti ID Cabang, Nama Cabang, Alamat, Nomor Telepon, dan informasi lainnya yang berkaitan dengan cabang bank.
ID Cabang biasanya digunakan sebagai kunci utama.
# Data Tabel Petugas Bank
![data petugas bank](https://github.com/HafidzAshshidiqi/BASDA-Laporan-3/assets/125180024/3142c025-4b29-41ba-8e4b-78d93b3de653)
Pembahasan:

Data pada gambar diatas merupakan contoh dari data cabang_bank dalam sistem nasabah bank dalam sebuah database.
# Hubungan antara entitas dalam tabel sistem nasabah bank 
sebagai berikut:

1. Nasabah -> Rekening_Bank (One-to-Many):

Setiap nasabah dapat memiliki satu atau lebih rekening bank.
Ini adalah hubungan "One-to-Many," yang berarti satu entitas Nasabah dapat terkait dengan banyak entitas Rekening_Bank.
Hubungan ini diwakili oleh kunci asing (foreign key) id_Nasabah dalam tabel Rekening_Bank yang mengacu pada ID_Nasabah dalam tabel Nasabah.

2. Rekening_Bank -> Transaksi (One-to-Many):

Setiap rekening bank dapat memiliki satu atau lebih transaksi yang terkait dengannya.
Ini juga adalah hubungan "One-to-Many," yang berarti satu entitas Rekening_Bank dapat terkait dengan banyak entitas Transaksi.
Hubungan ini diwakili oleh kunci asing id_Rekening dalam tabel Transaksi yang mengacu pada ID_Rekening dalam tabel Rekening_Bank.

3. Petugas_Bank -> Cabang_Bank (Many-to-One):

setiap petugas bank dapat bekerja di satu cabang bank tertentu.
Ini adalah hubungan "One-to-One," yang berarti satu entitas Petugas_Bank dapat terkait dengan satu entitas Cabang_Bank.
Hubungan ini diwakili oleh kunci asing id_Cabang dalam tabel Petugas_Bank yang mengacu pada ID_Cabang dalam tabel Cabang_Bank.
