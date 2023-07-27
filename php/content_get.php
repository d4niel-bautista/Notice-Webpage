<?php 
    include 'conn.php';

if ($_GET['type'] == 'GET_CONTENT') {
    $qry = "SELECT id, title, date_posted, hits FROM notice_posts";
    
    
        
    $rsreg = $dbConn->query($qry);
    $fetch = $rsreg->fetch_ALL(MYSQLI_ASSOC);

};

if ($_GET['type'] == 'GET_NOTICE_CONTENT') {
    $id = $_GET['id'];
    $qry = "SELECT `id`, `title`, `body`, `date_posted`, `hits` FROM `notice_posts` WHERE `id` = '$id'";
    
    
        
    $rsreg = $dbConn->query($qry);
    $fetch = $rsreg->fetch_array(MYSQLI_ASSOC);

};

if ($_GET['type'] == 'EDIT_NOTICE') {
    $id = $_GET['id'];
    $qry = "SELECT `id`, `title`, `body` FROM `notice_posts` WHERE `id` = '$id'";

        
    $rsreg = $dbConn->query($qry);
    $fetch = $rsreg->fetch_array(MYSQLI_ASSOC);

};

echo json_encode($fetch);
$dbConn->close()
?>