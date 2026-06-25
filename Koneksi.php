<?php

class Koneksi {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    // Sudah disesuaikan dengan nama database aslimu di phpMyAdmin
    private $database = "db_uas_pbo_ti1d_dwinuhaauliazahra"; 
    protected $koneksi;

    public function __construct() {
        $this->koneksi = mysqli_connect($this->host, $this->username, $this->password, $this->database);

        if (mysqli_connect_errno()) {
            die("Koneksi database gagal: " . mysqli_connect_error());
        }
    }

    // Method untuk mengambil objek koneksi
    public function getKoneksi() {
        return $this->koneksi;
    }
}