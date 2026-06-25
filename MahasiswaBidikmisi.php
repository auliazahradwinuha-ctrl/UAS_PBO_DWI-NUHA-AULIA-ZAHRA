<?php
require_once 'Mahasiswa.php';

class MahasiswaBidikmisi extends Mahasiswa {
    // Properti Tambahan
    protected $nomor_kip_kuliah;
    protected $dana_saku_subsidi;

    // Constructor Kelas Anak
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal, $nomor_kip_kuliah, $dana_saku_subsidi) {
        parent::__construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal);
        $this->nomor_kip_kuliah = $nomor_kip_kuliah;
        $this->dana_saku_subsidi = $dana_saku_subsidi;
    }

    // Wajib Implementasi Metode Abstract dari Induk
    public function hitungTagihanSemester() {
        // Bidikmisi biasanya gratis (Rp 0) karena disubsidi penuh
        return 0;
    }

    public function tampilkanSpesifikasiAkademik() {
        echo "Mahasiswa Bidikmisi - No KIP: " . $this->nomor_kip_kuliah . ", Subsidi Dana Saku: " . $this->dana_saku_subsidi;
    }

    // 1 Method Khusus berisi Query (Select-Where)
    public function getQuerySelectSpecific() {
        return "SELECT id_mahasiswa, nama_mahasiswa, nim, semester, nomor_kip_kuliah, dana_saku_subsidi 
                FROM tabel_mahasiswa 
                WHERE jenis_pembiayaan = 'bidikmisi'";
    }
}