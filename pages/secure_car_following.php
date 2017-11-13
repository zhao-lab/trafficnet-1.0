<?php
$user = $_POST['user'];
$pass = $_POST['password'];

if($user == "admin"
&& $pass == "admin")
{
        // include '/pages/car_following.php';
        include 'pages/menubar.php'
}
else
{
    if(isset($_POST))
    {?>

            <form method="POST" action="secure_car_following.php">
            user <input type="text" name="user"></input><br/>
            pass <input type="password" name="pass"></input><br/>
            <input type="submit" name="submit" value="Go"></input>
            </form>
    <?}
}
?>