package com.grade;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateGradeServlet")
public class UpdateGradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("field1");
		String name = request.getParameter("field2");
		String assignment1 = request.getParameter("field3");
		String midexam= request.getParameter("field4");
		String finalexam = request.getParameter("field5");
		String grade = request.getParameter("field6");
		String status = request.getParameter("field7");
		
        boolean isTrue;
		
		isTrue = gradesDbUtil.Updategrade(id,name,assignment1,midexam,finalexam,grade,status);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			
		
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
	}


