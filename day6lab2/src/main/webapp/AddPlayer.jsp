<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="team" class="beans.IplBeans" scope="session"/>
<body>
<h5>Team: ${sessionScope.team.validateTeams()}</h5>
</body>
</html>
