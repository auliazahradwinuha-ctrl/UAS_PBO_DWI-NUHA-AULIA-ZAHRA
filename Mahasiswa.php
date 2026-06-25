<?php

abstract class Mahasiswa {
    // Properti/Atribut Terenkapsulasi (Protected)
    protected $id_mahasiswa;
    protected $nama_mahasiswa;
    protected $nim;
    protected $semester;
    protected $tarif_ukt_nominal;

    // Constructor untuk menginisialisasi atribut induk
    public function __construct($id_mahasiswa, $nama_mahasiswa, $nim, $semester, $tarif_ukt_nominal) {
        $this->id_mahasiswa = $id_mahasiswa;
        $this->nama_mahasiswa = $nama_mahasiswa;
        $this->nim = $nim;
        $this->semester = $semester;
        $this->tarif_ukt_nominal = $tarif_ukt_nominal;
    }

    // ==========================================
    // FUNGSI GETTER (Untuk mengambil nilai properti)
    // ==========================================
    public function getIdMahasiswa() {
        return $this->id_mahasiswa;
    }

    public function getNamaMahasiswa() {
        return $this->nama_mahasiswa;
    }

    public function getNim() {
        return $this->nim;
    }

    public function getSemester() {
        return $this->semester;
    }

    public function getTarifUktNominal() {
        return $this->tarif_ukt_nominal;
    }

    // Metode Abstract (Wajib tanpa isi/body)
    abstract public function hitungTagihanSemester();
    abstract public function tampilkanSpesifikasiAkademik();
}