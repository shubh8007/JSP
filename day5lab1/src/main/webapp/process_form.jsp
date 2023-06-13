<%@page import="pojos.Student"%>
<%@page import="pojos.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String firstname=request.getParameter("fn");
String lastname=request.getParameter("ln");
int score=Integer.parseInt(request.getParameter("score"));
Course course=Course.valueOf(request.getParameter("course").toUpperCase());



//wrap all details under the student object
Student s1=new Student(firstname,lastname,score,course);
if(score>course.getMinScore())
	s1.setAdmitted(true);
//server pull :forward
//min scope of attributes:pages| request|session|application
//add attr
request.setAttribute("student_info", s1);
//Rd

RequestDispatcher rs=request.getRequestDispatcher("result.jsp");
rs.forward(request,response);
System.out.println("Exec control come back..."	);
%>
</body>
</html>