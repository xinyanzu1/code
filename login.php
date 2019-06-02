<?php

// make db conection
require('DB.php');

if (isset($_POST['submit'])) {
    if (empty($_POST['username']) || empty($_POST['password'])) {
        $error = "username or password is empty";
    } else { 
        // Save username & password in a variable
        $username = $_POST['username'];
        $password = $_POST['password'];

        // 2. Prepare query
        $query  = "SELECT username, password, level "; 
        $query .= "FROM account ";
        $query .= "WHERE username = '$username' AND password = '$password' ";
        

        // 2. Execute query
        $result = mysqli_query($connection, $query);

        if (!$result) {
            die("query is wrong");
        }

        // Save data to $row
        $row = mysqli_fetch_array($result);
        
        // Check how many answers did we get
        $numrows=mysqli_num_rows($result);
        if ($numrows == 1) {
            // Start to use sessions
            session_start();
            
            // Create session variables
            $_SESSION['login_user'] = $username;
            $_SESSION['login_level'] = $row['level'];
            
            if ($_SESSION['login_level'] == 3) {
                header('location: manager.php');
            } else if ($_SESSION['login_level'] == 2) {
                header('location: staff.php');
            } else {
                header('location: Hotel.php');
            }
            
        } else {
            echo "Login failed";
        }
        
        // 4. free results
        mysqli_free_result($result);
    }
}

// 5. close db connection
mysqli_close($connection);

?>

<?php

if (isset($error)) {
    echo "<span>" . $error ."</span>";
}

?>

<html>
<head>
    <title>Prince Al's Royal Hotel</title>
    <link type='text/css' rel='stylesheet' href='login.css'>
</head>
<body>
<div class="table">
<form action="login.php" method="POST">
    <div class="use">
    <label>Username</label>
    <input type="text" name="username" placeholder="username"><br/>
    </div>
    <div class="pass">
    <label>Pssword</label>
    <input type="password" name="password" placeholder="password"><br/>
    </div>
    <div class="sub">
    <input type="submit" name="submit" value="login">
    </div>
</form>
</div>
</body>
</html>
