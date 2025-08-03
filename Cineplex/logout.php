<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <link rel="stylesheet" href="style.css"> 
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
           
            background:linear-gradient(to right,#00093c,#2d0b00);
        }

        .container {
            max-width: 50%;
            margin: 100px auto;
           
            background:none;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        p {
            margin-bottom: 20px;
            color: #666;
        }

        .logout-btn {
            background-color: #f44336;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

<header>
        <input type="checkbox" name="" id="toggler">
        <label for="toggler" class="fas fa-bars"></label>
        <a href="Flora Heaven.html" class="logo">Cineplex<span>.</span></a>
        <nav class="navbar">
            <a href="adminInterface.php">Home</a>
          
              <a href="newaccess.php">Give Access</a>
              <a href="NewEvent.php">Add Events</a>
              <a href="Newmovie.php">Add Movies</a>
              <a href="NewSpecials.php">Specials</a>
            <a href="About.html">Search</a>
            <a href="Login.php">LogOut</a>
            
              <a href="About.html">Contact</a>
        </nav>
        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-shopping-cart"></a>
            <a href="#" class="fas fa-user"></a>
            
        </div>
    </header>
     <!--Header section ends-->

    <div class="container">
        <h2>Are you sure you want to logout?</h2>
        <p>You will be logged out of your account.</p>
        <form action="cineplexuser.php" method="post">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>
</body>
</html>
