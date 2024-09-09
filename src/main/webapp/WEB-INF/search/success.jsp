<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
 <h1>Name is:${student.name }</h1>
<h1>Id is:${student.id }</h1>
<h1>Today's date is:${student.date }</h1>
<h1>Courses are:${student.courses }</h1>
<h1>Gender:${student.gender }</h1>
<h1>Student Type:${student.type }</h1> 
<hr>
 <h1>Student State:${student.address.state }</h1> 
<h1>Student City:${student.address.city }</h1>
 <h1>Student Pincode:${student.address.pincode }</h1>
 <h2>Any queries click here<a href="home"> click here</a></h2>

<%-- <c:forEach var="adr" items="${student.address }">
<h1>${adr.state },${adr.city },${adr.pincode }</h1>
</c:forEach> --%>

</body>
</html>