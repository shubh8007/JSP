<%@page import="pojos.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
[0]
<title>Insert title here</title>
</head>
<body>
<h5>${param.fn} </h5>>
<%
Student student1=(Student)request.getAttribute("student_info");
if(student1.isAdmitted())%>{
	<h5>Congratulations your are Admitted..."+student1.getSelectedCourse()+"</h5>
	<%
}
else{
	%>
	<h5 style="color:red">  Sorry!! Your are not Admitted in ${requestScope.student_info.course} </h5>
	<%
	}
%>
</body>
</html>