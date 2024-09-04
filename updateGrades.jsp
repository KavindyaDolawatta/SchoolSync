<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #90EE90; 
        color: #000;
        text-align: center;
    }

    form {
        background-color: #C1FFC1; 
        padding: 20px;
        border: 1px solid #FFD700; 
        margin: 20px auto;
        max-width: 400px;
        border-radius: 10px; 
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        background-color: #FFFFFF; 
        color: #000;
        border: 1px solid #FFD700; 
        border-radius: 8px;
    }

    input[type="submit"] {
        background-color: #FFD700; 
        color: #000;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #FFA500; 
    }
</style>
<!-- Header css -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->

</head>
<body>
<div class="header_navbar">

        <div class="header_logo">
            <div>SchoolSync</div>
        </div>

        <div class="header_menu-bar">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="home.jsp">Support</a></li>
                <li><a href="">Library</a></li>
                <li><a href="">News</a></li>
                <li><a href="">About</a></li>
            </ul>
        </div>

        <div class="header_last">

            <select name="User" id="select-id" class="header_select" onchange="location=this.value;">
                <option disabled selected value="0">User</option>
                <option value="home.jsp" id="home">Home</option>
                <option value="login.jsp" id="orders">logout</option>
            </select>

        </div>

    </div>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String assign1 = request.getParameter("assignment1");
String mid = request.getParameter("midexam");
String finalexam = request.getParameter("finalexam");
String grade = request.getParameter("grade");
String status = request.getParameter("status");

%>


<form action= "updateGrade" method="POST">
     Student ID: 
    <input type="text" name="field1" value= "<%=id %>" readonly><br/><br/>    
    Student name:
   <input type="text" name="field2" value ="<%=name %>"><br/><br/>  
    Assignment 1 marks:
   <input type="text" name="field3" value ="<%=assign1 %>"><br/><br/>     
    Mid exam marks:
   <input type="text" name="field4" value ="<%=mid %>"><br/><br/> 
    Final exam marks:
   <input type="text" name="field5" value ="<%=finalexam %>"><br/><br/> 
    Final grade:
   <input type="text" name="field6" value ="<%=grade %>"><br/><br/> 
   Status:
    <input type="text" name="field7" value ="<%=status %>"><br/><br/>   
   
   
   <input type = "submit" id="submitBtn" value="Update">
   
</form>
 <footer class="f-con">

	<div class="f-text">
	<div id="footer_systemName" style="font-size: 17px;">SchoolSync</div>
	<p style="font-size: 11px;">Created By: © 2023 G333 </p>
	</div>

    <div>
	<section id = "footer_topic" style="font-size: 14px; text-align: center; margin-top:20px; font-size:17px;">Important Links</section>
	<div class="footer-links">
	<a style="padding-left:0px;" href="about.php">About Us</a>
	<a style="padding-left:30px;" href="terms.php">Terms & Conditions</a>
	<a style="padding-left:30px;" href="contact.php">Contact Us</a>
	<a style="padding-left:30px;" href="privacy.php">Privacy Policy</a>
    </div>
	</div>
	
	<div class="footer-social">
	<a style="padding-left:30px;" href="http://www.linkedin.com" target="_blank"><img class="linkedin" src ="img/social/li1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.twitter.com" target="_blank"><img class="tw" src ="img/social/tw1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.instagram.com" target="_blank"><img class="ins" src ="img/social/ins1.png"></img></a>
	</div>
	
</footer>
</body>
</html>