<?php
require_once 'Mahasiswa.php';

class MahasiswaMandiri extends Mahasiswa {
    // Properti Tambahan (Tahap 4)
    protected $golongan_ukt;
    protected $nama_wali;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $golongan_ukt, $nama_wali) {
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->golongan_ukt = $golongan_ukt;
        $this->nama_wali = $nama_wali;
    }

    // [TAHAP 5] Method Overriding - Logika Bisnis Mandiri
    public function hitungTagihanSemester() {
        // Tarif UKT + biaya operasional flat Rp 100.000
        return $this->tarif_ukt_nominal + 100000;
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Mandiri - Nama Wali: " . $this->nama_wali . ", Golongan UKT: " . $this->golongan_ukt;
    }

    // [TAHAP 4] Method khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, tarif_ukt_nominal, golongan_ukt, nama_wali 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'mandiri'";
    }
}