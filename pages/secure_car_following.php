<?php
$user = $_POST['user'];
$pass = $_POST['password'];

if($user == "admin"
&& $pass == "admin")
{
        include("car_following.php");
}
else
{
    if(isset($_POST))
    {?>

            <form method="POST" action="secure_car_following.php">
            User <input type="text" name="user"></input><br/>
            Pass <input type="password" name="pass"></input><br/>
            <input type="submit" name="submit" value="Go"></input>
            </form>
    <?}
}
?>