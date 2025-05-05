<?php
session_start();
include 'db.php';

$emailOrUsername = $_POST['emailOrUsername'];
$password = $_POST['password'];

$query = "SELECT * FROM users WHERE email = ? OR username = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $emailOrUsername, $emailOrUsername);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();
if (password_verify($password, $user['password'])) {
    $_SESSION['user_id'] = $user['id'];
    $_SESSION['username'] = $user['username'];
    if ($user['username'] === 'admin') {
        header("Location: admin-dashboard.html");
    } else {
        header("Location: index.html");
    }
    exit;
} else {
    echo "Password salah. <a href='login.html'>Kembali</a>";
}
} else {
    echo "Akun tidak ditemukan. <a href='login.html'>Kembali</a>";
}
?>
