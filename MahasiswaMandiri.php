<?php
require_once 'Mahasiswa.php';

class MahasiswaMandiri extends Mahasiswa {
    // Properti Tambahan
    protected $golongan_ukt;
    protected $nama_wali;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $golongan_ukt, $nama_wali) {
        // Memanggil constructor dari class induk (Mahasiswa)
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->golongan_ukt = $golongan_ukt;
        $this->nama_wali = $nama_wali;
    }

    // Wajib Implementasi Metode Abstract dari Induk
    public function hitungTagihanSemester() {
        // Mandiri bayar penuh sesuai tarif UKT nominal
        return $this->tarif_ukt_nominal;
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Mandiri - Nama Wali: " . $this->nama_wali . ", Golongan UKT: " . $this->golongan_ukt;
    }

    // 1 Method Khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, tarif_ukt_nominal, golongan_ukt, nama_wali 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'mandiri'";
    }
}