<?php

class Koneksi {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "akademik"; // Sesuaikan dengan nama database di Tahap 1
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