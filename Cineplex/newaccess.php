<?php

@include 'connect.php';
session_start();

?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--link rel="stylesheet" href="style.css"--> 
</head>
<body>

 <!--Header section starts-->
 <header>
        <input type="checkbox" name="" id="toggler">
        <label for="toggler" class="fas fa-bars"></label>
        <a href="Flora Heaven.html" class="logo">Cineplex<span>.</span></a>
        <nav class="navbar">
            <a href="adminInterface.php">Home</a>
           
              <a href="NewEvent.php">Add Events</a>
              <a href="Newmovie.php">Add Movies</a>
              <a href="NewSpecials.php">Specials</a>
            <a href="About.html">Search</a>
            <!--a href="contact.html">Booking</a-->
            <a href="logout.php">LogOut</a>
          
              <a href="About.html">Contact</a>
        </nav>
        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-shopping-cart"></a>
            <a href="#" class="fas fa-user"></a>
            
        </div>
</header>
    
     <!--Header section ends-->

    <h3>New admin and staff</h3>
    <form action="" method="POST">
        <input type="email" name="email">
        <select name="role" id="">
            <option value="admin">Admin</option>
            <option value="staff">Staff</option>
        </select>
        <input type="submit">
    </form>

</body>
</html>

<?php

if($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = $_POST['email'];
    $type = "user";
    $newusertype = $_POST['role'];

    $sql = "SELECT * FROM user WHERE Email = '$email' and type = '$type'";
    $result = mysqli_query($conn, $sql);
    

    if (mysqli_num_rows($result)==0) {
        echo '<script>alert("No user Found")</script>';


    }
    else{
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        $email = $row['Email'];   
        $sql = "UPDATE user SET type = '$newusertype' WHERE Email = '$email' ";

        if (mysqli_query($conn, $sql)) {
            echo '<script>alert("Acess given")</script>';

        } else {
            echo '<script>alert("No user Found")</script>';

        }
 
    }

  

}
    
    ?>