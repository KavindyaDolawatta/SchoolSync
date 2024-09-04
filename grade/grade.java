/*<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->*/
package com.grade;

public class grade {
	
	private int id;
	private String name;
	private int assignment1;
	private int midexam;
	private int finalexam;
	private String grade;
	private String status;
	
	public grade(int id, String name, int assignment1, int midexam, int finalexam, String grade, String status) {
		
		this.id = id;
		this.name = name;
		this.assignment1 = assignment1;
		this.midexam = midexam;
		this.finalexam = finalexam;
		this.grade = grade;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public int getAssignment1() {
		return assignment1;
	}
	
	public int getMidexam() {
		return midexam;
	}

	public int getFinalexam() {
		return finalexam;
	}

	public String getGrade() {
		return grade;
	}

	public String getStatus() {
		return status;
	}

		
}
