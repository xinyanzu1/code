<?

//start sessions

session_start ();

if (!isset($_SEESSION['login_user'])) {
    header('location: login.php');
}

?>