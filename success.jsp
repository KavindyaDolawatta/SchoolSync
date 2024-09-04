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
<title>Successful</title>
<style>
 #submitBtn {
        background-color:#007BA7 ; 
        color: #FFFFFF; 
</style>


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
   
    <link rel="stylesheet" href="assets/css/style.css">
 

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
<h1>Grades adding is successful</h1>
<input type = "button" id="submitBtn" value="View grade sheet" onclick="location.href='viewgradesheet'">

</body>
</html>