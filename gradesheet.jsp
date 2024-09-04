<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GRADE BOOK</title>

<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #FFFFCC; 
    }

    h1 {
        text-align: center;
        font-size: 28px;
        color: #333;
        padding: 20px 0;
    }

    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #fff; 
        box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #333; 
        color: #fff; 
    }

    td {
        background-color: #f2f2f2; 
    }

    a {
        text-decoration: none;
        color: #007BFF; 
    }

    a:hover {
        text-decoration: underline;
    }

    button {
        background-color: #007BFF; 
        color: #fff; 
        border: none;
        padding: 10px 15px;
        cursor: pointer;
    }

    button:hover {
        background-color: #0056b3; /* Darker Blue */
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
   <!--   <link rel="stylesheet" href="assets/css/style.css">-->
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
 <h1>GRADE BOOK</h1>
    
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Assignment 1</th>
            <th>Mid Exam</th>
            <th>Final Exam</th>
            <th>Grade</th>
            <th>Status</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

	  <c:forEach var="grade" items="${gradelist}">
            <tr>
                <td>${grade.id}</td>
                <td>${grade.name}</td>
                <td>${grade.assignment1}</td>
                <td>${grade.midexam}</td>
                <td>${grade.finalexam}</td>
                <td>${grade.grade}</td>
                <td>${grade.status}</td>
                <td><a href="updateGrades.jsp?id=${grade.id}&name=${grade.name}&assignment1=${grade.assignment1}&midexam=${grade.midexam}&finalexam=${grade.finalexam}&grade=${grade.grade}&status=${grade.status}">Update</a></td>
                <td><a href="deletegradeservlet?id=${grade.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
	
	<!--<c:url value="updateGrades.jsp" var="gdupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="assignment1" value="${assi1}"/>
		<c:param name="midexam" value="${mid}"/>
		<c:param name="finalexam" value="${finale}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="status" value="${status}"/>
	</c:url>
<a href="${gdupdate }">
</a>-->
 <footer class="f-con">

	<div class="f-text">
	<div id="footer_systemName" style="font-size: 17px;">SchoolSync</div>
	<p style="font-size: 11px;">Created By: © 2023 G333 </p>
	</div>

    <div>
	<section id = "footer_topic" style="font-size: 14px; text-align: center; margin-top:20px; font-size:17px;">Important Links</section>
	<div class="footer-links">
	<a style="padding-left:0px;" href="">About Us</a>
	<a style="padding-left:30px;" href="">Terms and Conditions</a>
	<a style="padding-left:30px;" href="">Contact Us</a>
	<a style="padding-left:30px;" href="">Privacy Policy</a>
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