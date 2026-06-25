<?php
require_once 'Mahasiswa.php';

class MahasiswaBidikmisi extends Mahasiswa {
    // Properti Tambahan (Tahap 4)
    protected $nomor_kip_kuliah;
    protected $dana_saku_subsidi;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $nomor_kip_kuliah, $dana_saku_subsidi) {
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->nomor_kip_kuliah = $nomor_kip_kuliah;
        $this->dana_saku_subsidi = $dana_saku_subsidi;
    }

    // [TAHAP 5] Method Overriding - Logika Bisnis Bidikmisi
    public function hitungTagihanSemester() {
        // Digratiskan penuh (Rp 0) karena ditanggung negara
        return 0;
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Bidikmisi - No KIP: " . $this->nomor_kip_kuliah . ", Subsidi Dana Saku: " . $this->dana_saku_subsidi;
    }

    // [TAHAP 4] Method khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, nomor_kip_kuliah, dana_saku_subsidi 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'bidikmisi'";
    }
}