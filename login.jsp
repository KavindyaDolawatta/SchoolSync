<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
    
  
        .container {
            display: flex;
            flex-direction: row;
            min-height: 95vh;
            font-family: 'Poppins', sans-serif;
        }
        .login {
            display: inline-block;
            padding-left: 5px;
            padding-right: 14px;
            font-size: 17px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            border-radius: 8px;
            background-color: black;
            color: white;
            position: relative;
            padding-top: 10px;
            padding-bottom: 10px;
            width: 105%;
            padding: 10px;
            border-radius: 4px;
            font-size: 18px;
            
        }

        .login:hover {
            background-color: rgb(50, 50, 50);
        }

        .partition{
            position:relative;
            float:left;
            width:100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #83c5be;  
            flex-direction: column;
            padding-bottom: 15px;
            padding-top: 28px;
            left: -10px;
            top:-15px;
        }

        h1 {
            position: relative;
            right:100px:
            color: rgb(0, 0, 0);
            font-size: 40px:
        }

        

        label,input[type="text"],input[type="password"] {
            position: relative;
            width: 100%;
            padding: 10px;
            font-size: 20px;
            margin-bottom: 10px; 
        }

        label{
            position: relative;
            left: -10px;
        }

        .left-side{
            float:left;
        width:70%;
        display: flex;
        align-items: center;
        justify-content: center;  
        flex-direction: column;

        }

        .right-side{
        float:right;
        width:50%;
        display: flex;
        align-items: center;
        justify-content: center;  
        flex-direction: column;

        }
    </style>
</head>

<body>
    <div class="container">
    <div class="left-side"style="width: 58%">
        <div class="partition"style="background-color: rgb(0, 0, 0);">
            <img src="./img/SchoolSync.png" alt="Schoolsync Logo" style="margin-top: 10px;">   
        </div>
    </div>
	
	<div class="right-side"style="width: 58%">
    <h1>Welcome!</h1>

    
	
	
    <!-- login container-->
    <form method="post" action="login">
        <label for="email">User Name:</label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required><br><br>

        <input type="button" name="submit" class="login" value="Login" onclick="location.href='home.jsp'">
        <br>

        <div style="padding-top:20px;">
            <input type="checkbox" id="rememberMe" name="rememberMe">
            <label for="rememberMe" style="font-size: 16px;">Remember me</label>
        </div>
        <div style="text-align: right; padding-bottom:-10px;position:relative;top:-19px;left:18px;">
            <a href="forgotPassword.php">Forgot password?</a>
        </div>
        <br>
        <div>
            <p style="position: relative; text-align:center;">Don't have an account?
                &nbsp;<a href="userSignup.jsp">Sign up</a></p>
        </div>
    </form>
    </div>
	</div>
</body>
</html>
