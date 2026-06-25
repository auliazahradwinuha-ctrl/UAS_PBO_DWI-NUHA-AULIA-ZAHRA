<?php
require_once 'Mahasiswa.php';

class MahasiswaPrestasi extends Mahasiswa {
    // Properti Tambahan
    protected $nama_instansi_beasiswa;
    protected $minimal_ipk_syarat;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $nama_instansi_beasiswa, $minimal_ipk_syarat) {
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->nama_instansi_beasiswa = $nama_instansi_beasiswa;
        $this->minimal_ipk_syarat = $minimal_ipk_syarat;
    }

    // Wajib Implementasi Metode Abstract dari Induk
    public function hitungTagihanSemester() {
        // Bisa diisi potongan harga, atau di-return penuh tergantung kebijakan beasiswa
        return $this->tarif_ukt_nominal; 
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Prestasi - Instansi Beasiswa: " . $this->nama_instansi_beasiswa . ", Syarat Minimal IPK: " . $this->minimal_ipk_syarat;
    }

    // 1 Method Khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, tarif_ukt_nominal, nama_instansi_beasiswa, minimal_ipk_syarat 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'prestasi'";
    }
}