package com.grade;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GradeSheetServlet")
public class GradeSheetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		List<grade>gradelist = gradesDbUtil.getGrades();
		request.setAttribute("gradelist",gradelist);
		 }
		catch(Exception e){
			 e.printStackTrace();
		 }
		 
		
		 RequestDispatcher dispatcher = request.getRequestDispatcher("gradesheet.jsp");
	        dispatcher.forward(request, response);
	
		 }
}
