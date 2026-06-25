<?php
require_once 'Mahasiswa.php';

class MahasiswaPrestasi extends Mahasiswa {
    // Properti Tambahan (Tahap 4)
    protected $nama_instansi_beasiswa;
    protected $minimal_ipk_syarat;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $nama_instansi_beasiswa, $minimal_ipk_syarat) {
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->nama_instansi_beasiswa = $nama_instansi_beasiswa;
        $this->minimal_ipk_syarat = $minimal_ipk_syarat;
    }

    // [TAHAP 5] Method Overriding - Logika Bisnis Prestasi
    public function hitungTagihanSemester() {
        // Diskon beasiswa 75%, sehingga hanya membayar 25% dari tarif asli
        return $this->tarif_ukt_nominal * 0.25;
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Prestasi - Instansi Beasiswa: " . $this->nama_instansi_beasiswa . ", Syarat Minimal IPK: " . $this->minimal_ipk_syarat;
    }

    // [TAHAP 4] Method khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, tarif_ukt_nominal, nama_instansi_beasiswa, minimal_ipk_syarat 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'prestasi'";
    }
}