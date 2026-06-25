<?php
// 1. Sertakan file class yang dibutuhkan
require_once 'Koneksi.php'; 
require_once 'Mahasiswa.php';
require_once 'MahasiswaMandiri.php';
require_once 'MahasiswaBidikmisi.php';
require_once 'MahasiswaPrestasi.php';

// 2. Menginstansiasi objek Koneksi secara OOP
$db = new Koneksi();
$koneksi = $db->getKoneksi();

// 3. Wadah untuk mengelompokkan objek mahasiswa
$daftarMandiri   = [];
$daftarBidikmisi = [];
$daftarPrestasi  = [];

// 4. Ambil semua data dari tabel_mahasiswa
$query  = "SELECT * FROM tabel_mahasiswa";
$result = mysqli_query($koneksi, $query);

while ($row = mysqli_fetch_assoc($result)) {
    $jenis = $row['jenis_pembiayaan'];

    // Polimorfisme: Instansiasi objek sesuai dengan jenis pembiayaannya
    if ($jenis == 'mandiri') {
        $daftarMandiri[] = new MahasiswaMandiri(
            $row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], 
            $row['tarif_ukt_nominal'], $row['golongan_ukt'], $row['nama_wali']
        );
    } elseif ($jenis == 'bidikmisi') {
        $daftarBidikmisi[] = new MahasiswaBidikmisi(
            $row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], 
            $row['tarif_ukt_nominal'], $row['nomor_kip_kuliah'], $row['dana_saku_subsidi']
        );
    } elseif ($jenis == 'prestasi') {
        $daftarPrestasi[] = new MahasiswaPrestasi(
            $row['id_mahasiswa'], $row['nama_mahasiswa'], $row['nim'], $row['semester'], 
            $row['tarif_ukt_nominal'], $row['nama_instansi_beasiswa'], $row['minimal_ipk_syarat']
        );
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Registrasi Pembayaran Kuliah Mahasiswa</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f4f6f9; }
        h1 { text-align: center; color: #333; }
        h2 { color: #2c3e50; border-bottom: 2px solid #2c3e50; padding-bottom: 5px; margin-top: 40px; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; background: #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        th, td { padding: 12px; text-align: left; border: 1px solid #ddd; }
        th { background-color: #2c3e50; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .nominal { text-align: right; font-weight: bold; }
    </style>
</head>
<body>

    <h1>Daftar Registrasi Pembayaran Kuliah Mahasiswa</h1>

    <h2>Kategori: Mahasiswa Mandiri</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th><th>NIM</th><th>Nama Mahasiswa</th><th>Semester</th>
                <th>Tarif UKT Asli</th><th>Spesifikasi Akademik</th><th>Total Tagihan (Tahap 5)</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($daftarMandiri as $mhs): ?>
            <tr>
                <td><?= $mhs->getIdMahasiswa(); ?></td>
                <td><?= $mhs->getNim(); ?></td>
                <td><?= $mhs->getNamaMahasiswa(); ?></td>
                <td><?= $mhs->getSemester(); ?></td>
                <td class="nominal">Rp <?= number_format($mhs->getTarifUktNominal(), 0, ',', '.'); ?></td>
                <td><?php $mhs->tampilkanSpesifikasiAkademik(); ?></td>
                <td class="nominal" style="color: #c0392b;">Rp <?= number_format($mhs->hitungTagihanSemester(), 0, ',', '.'); ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <h2>Kategori: Mahasiswa Bidikmisi</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th><th>NIM</th><th>Nama Mahasiswa</th><th>Semester</th>
                <th>Tarif UKT Asli</th><th>Spesifikasi Akademik</th><th>Total Tagihan (Tahap 5)</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($daftarBidikmisi as $mhs): ?>
            <tr>
                <td><?= $mhs->getIdMahasiswa(); ?></td>
                <td><?= $mhs->getNim(); ?></td>
                <td><?= $mhs->getNamaMahasiswa(); ?></td>
                <td><?= $mhs->getSemester(); ?></td>
                <td class="nominal">Rp <?= number_format($mhs->getTarifUktNominal(), 0, ',', '.'); ?></td>
                <td><?php $mhs->tampilkanSpesifikasiAkademik(); ?></td>
                <td class="nominal" style="color: #27ae60;">Rp <?= number_format($mhs->hitungTagihanSemester(), 0, ',', '.'); ?> (Gratis)</td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <h2>Kategori: Mahasiswa Prestasi</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th><th>NIM</th><th>Nama Mahasiswa</th><th>Semester</th>
                <th>Tarif UKT Asli</th><th>Spesifikasi Akademik</th><th>Total Tagihan (Tahap 5)</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($daftarPrestasi as $mhs): ?>
            <tr>
                <td><?= $mhs->getIdMahasiswa(); ?></td>
                <td><?= $mhs->getNim(); ?></td>
                <td><?= $mhs->getNamaMahasiswa(); ?></td>
                <td><?= $mhs->getSemester(); ?></td>
                <td class="nominal">Rp <?= number_format($mhs->getTarifUktNominal(), 0, ',', '.'); ?></td>
                <td><?php $mhs->tampilkanSpesifikasiAkademik(); ?></td>
                <td class="nominal" style="color: #2980b9;">Rp <?= number_format($mhs->hitungTagihanSemester(), 0, ',', '.'); ?> (Diskon 75%)</td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

</body>
</html>