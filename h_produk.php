<?php 
include "Koneksi.php";

$id = $_GET['id'];

$hapus = mysqli_query($conn, "DELETE FROM products WHERE id='$id'");

if ($hapus) {
    echo "<script>alert('Data Berhasil Dihapus')</script>";
    header ("refresh:0, produk.php");
} else {
    echo "<script>alert('Data Gagal Dihapus')</script>";
    header ("refresh:0, produk.php"); 
}
?>
