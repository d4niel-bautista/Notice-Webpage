<?php
include "conn.php";

$fetch = "";

if ($_POST["type"] == "SAVE_CONTENT") {
    $author = $_POST["author"];
    $title = $_POST["title"];
    $content = $_POST["content"];
    $date = $_POST["date"];
    $hits = $_POST["hits"];

    $qry = "INSERT INTO `notice_posts` (`author`, `title`, `body`, `date_posted`, `hits`) VALUES (?,?,?,?,?)";

    $stmt = $dbConn->prepare($qry);
    if ($stmt) {
        $stmt->bind_param("ssssi", $author, $title, $content, $date, $hits);
        if ($stmt->execute()) {
            echo "Saved successfully!";
        } else {
            echo $dbConn->error;
        }
    } else {
        echo $dbConn->error;
    }
}

if ($_POST["type"] == "UPDATE_CONTENT") {
    $id = $_POST["id"];
    $title = $_POST["title"];
    $content = $_POST["content"];

    $qry = $dbConn->prepare("UPDATE notice_posts SET title=?, body=? WHERE id = ?");
    $qry->bind_param('sss',$title, $content, $id); 
    if($qry->execute()){
        echo "Updated successfully!";
    }else{
        echo $dbConn->error;
    }
}

if ($_POST["type"] == "UPDATE_HITS") {
    $id = $_POST["id"];

    $get = "SELECT
    `hits`
    FROM notice_posts WHERE `id` = '$id'";

    $rsreg = $dbConn->query($get);
    $res = $rsreg->fetch_row();

    $hits = intval($res[0]) + 1;

    $qry = $dbConn->prepare("UPDATE notice_posts SET hits=? WHERE id = ?");
    $qry->bind_param('ii', $hits, $id); 
    $qry->execute();
}

json_encode($fetch);
$dbConn->close();
?>
