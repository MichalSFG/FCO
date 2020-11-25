<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All flights</title>
</head>
<body>
<table style="width: 100%" border="1">
    <thead>
    <th>Id</th>
    <th>Flight No</th>
    <th>Dept Airport</th>
    <th>Dept Time</th>
    <th>Arr Airport</th>
    <th>Arr Time</th>
    <th>Added</th>
    </thead>
    <tbody>
    <c:forEach items="${flights}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>FR ${item.flightNumber}</td>
            <td>${item.departureAirport}</td>
            <td>${item.scheduledTimeOfDept}</td>
            <td>${item.arrivalAirport}</td>
            <td>${item.scheduledTimeOfArr}</td>
            <td>${item.created}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
