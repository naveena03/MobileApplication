<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List of all mobiles</h1>
<table border = "2">
<tr><th>Mobile Id<th>Name<th>Price<th>Quantity</th></tr>

<c:forEach items = "${list}" var = "mobile">
<tr>
<td>${mobile.mobileId}
<td>${mobile.name }
<td>${mobile.price }
<td>${mobile.quantity }<td>

<A href = "getUpdatePage.obj?mobid=${mobile.mobileId }">Update</A>
<td>
<a href = "delete.obj?mobid=${mobile.mobileId }">Delete</a>

</td>
</tr>
</c:forEach>
</table>
</body>
</html>