<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/submit" method="post">
    Lettuce <input type="checkbox" name="condiment" value="Lettuce">
    Tomato <input type="checkbox" name="condiment" value="Tomato">
    Mustard <input type="checkbox" name="condiment" value="Mustard">
    Sprouts <input type="checkbox" name="condiment" value="Sprouts">
    <input type="submit" value="Submit">
</form:form>

<p>Selected :</p>
<c:forEach begin="0" end="${fn:length(list)}" var="index">
    <c:out value="${list[index]}"/>
</c:forEach>
</body>
</html>
