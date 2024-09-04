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
<title>Adding grades</title>

<style>
    body {
        background-color:rgba(0, 128, 128, 0.4); 
        color: #000;
        font-family: Arial, sans-serif;
        font-weight: bold;
    }
 h1 {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 40px;
    }

    h2 {
        background-color:#008080; 
        padding: 10px;
        border-radius: 10px; 
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 24px;
    }
    form {
        background-color:#008080; 
        padding: 20px;
        border: 3px solid #000080;
        margin: 20px auto;
        max-width: 500px;
        border-radius: 10px; 
    }

    input[type="text"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        background-color: #FFFFFF;
        color: #000;
        border: 2px solid #CCCCFF; 
        border-radius: 8px; 
    }

    input[type="submit"],
    input[type="button"] {
        background-color: #FFD700; 
        color: #000;
        padding: 10px 20px;
        border: 2px solid #000080 ;
        cursor: pointer;
        border-radius: 8px;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
        background-color: #FFA500; 
    }

    .center {
        display: flex;
        justify-content: center;
    }

    #submitBtn {
        background-color:#007BA7 ; 
        color: #FFFFFF; 
    }
</style>

<script>
function validateForm() {
    var studentID = document.getElementById("field1").value;
    var studentName = document.getElementById("field2").value;
    var assignment1 = parseFloat(document.getElementById("field3").value);
    var midExam = parseFloat(document.getElementById("field4").value);
    var finalExam = parseFloat(document.getElementById("field5").value);
    var finalGrade = document.getElementById("field6").value;

    if (studentID === "" || studentName === "" || finalGrade === "") {
        alert("All fields are required. Please fill out all fields.");
        return false;
    }

    if (isNaN(assignment1) || isNaN(midExam) || isNaN(finalExam)) {
        alert("Invalid input. Marks must be numeric values.");
        return false;
    }

    if (assignment1 < 0 || assignment1 > 100 || midExam < 0 || midExam > 100 || finalExam < 0 || finalExam > 100) {
        alert("Marks must be between 0 and 100.");
        return false;
    }

    return true;
}
</script>

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
<h1>Grade controller</h1>
<input type = "button" id="submitBtn" value="View added grades" onclick="location.href='viewgradesheet'">


<h2>Insert marks to the grade book</h2>
<form action= "insert" method="POST" onsubmit="return validateForm()">
   Student ID:
   <input type="text" name="field1" id="field1" ><br/><br/>   

   Student name:
   <input type="text" name="field2" id="field2" ><br/><br/>     
   
    Assignment 1 marks:
   <input type="text" name="field3"  id="field3"><br/><br/>     
   
    Mid exam marks:
   <input type="text" name="field4" id="field4"><br/><br/> 

    Final exam marks:
   <input type="text" name="field5" id="field5"><br/><br/> 
   
    Final grade:
   <input type="text" name="field6"  id="field6"><br/><br/> 
   
   Status:
    <input type="text" name="field7" id="field7"><br/><br/> 
    
   <input type = "submit" id="submitBtn" value="Submit">
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
      <!-- page-body-wrapper ends -->
</body>
</html>