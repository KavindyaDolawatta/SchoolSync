/*<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->*/
package com.grade;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteGradeServlet")
public class DeleteGradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id = request.getParameter("id");

	        if (id != null) {
	            boolean isDeleted = gradesDbUtil.deleteGrade(id);

	            if (isDeleted) {
	                // Redirect to the grade sheet page after successful deletion
	                response.sendRedirect("viewgradesheet");
	            } else {
	                // Handle the case where the deletion fails
	                response.getWriter().println("Error deleting the grade.");
	            }
	        } else {
	            response.getWriter().println("ID parameter is missing.");
	        }
	    }

		
	}




