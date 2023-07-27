<?php
    include 'conn.php';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $qry = "SELECT `username`, `password`, `role` FROM login WHERE `username` = '$username' AND `password` = '$password'";

        $rsreg = $dbConn->query($qry);

        $num_rows = mysqli_fetch_row($rsreg);
        if($num_rows) {
            session_start();
            $_SESSION["login"] = "OK";
            $_SESSION["username"] = $num_rows[0];
            $_SESSION["role"] = $num_rows[2];
        }else{
            $_SESSION['login'] = 'error';
        }
    }



    echo json_encode($_SESSION);
    $dbConn->close()
?> 