<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${flights}" var="item">
    Status: ${item.flightStatus}<br>
    Type: ${item.type}<br>
    Flight number: ${item.flightNumber}<br>
    Airline name: ${item.airlineName}<br>
    Departure airport: ${item.deptAirport} >>> Departure time: ${item.deptTime}<br>
    Arrival airport: ${item.arrAirport} >>> Arrival time: ${item.arrTime}
</c:forEach>
</body>
</html>
