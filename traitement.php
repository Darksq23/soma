<?php
if ($_GET['action'] == "login") {

    require_once "basis.php";
    $query = 'SELECT * FROM admin WHERE username = :username AND password = :password';
    $data = $dbconnection->prepare($query);

    if (isset($_POST['username']) && isset($_POST['password'])) {
        $data->execute(array(
            'username' => $_POST['username'],
            'password' => $_POST['password']
        ));
        $response = $data->fetch();
        if ( in_array($_POST['username'], $response)) {
            if ($_POST['password']) {
                if ($response) {
                    session_start();
                    $_SESSION['username'] = $_POST['username'];
                    $_SESSION['password'] = $_POST['password'];
                    header('Location: admin_page.php');
                }
            } else {
                echo "wrong password!";
            }
        } else {
            echo "username not recognized!";
            echo "failed to connect try again <a href='admin_page.php'>here</a>";
        }
    }
}

else if ($_GET['action'] == "logout") {
    session_start();
    session_destroy();
    header('Location: admin_page.php');
    exit();
}

else if ($_GET['action'] == "insert") {
    require_once "basis.php";
    $insert_query = "insert into lyrics values (:id, :song_name, :artist, :lyrics, :genre, now(), :likes, :views, :link)";

    $res = $dbconnection->prepare($insert_query);
    $res->execute(array(
        'id' => 0,
        'likes' => 0,
        'views' => 0,
        'artist' => $_POST['artist'],
        'lyrics' => $_POST['lyrics'],
        'link' => $_POST['link'],
        'genre' => $_POST['genre'],
        'song_name' => $_POST['song_name']
    ));

    if (!$res) {
        echo "failed to insert data!";
    }
    else {
        echo "successfuly added new lyrics!";
    }
}

else if ($_GET['action'] == "edit") {

}

else if ($_GET['action'] == "delete") {

}
