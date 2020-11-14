<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${flight}" var="item">
    <h3>Dziś lecisz linią ${item.airline.name}</h3>
    <h3>Flight no.: ${item.flight.iataNumber}</h3>
    <h3>From: ${item.departure.iataCode} >>> Departure time: ${item.departure.scheduledTime}</h3>
    <h3>To: ${item.arrival.iataCode} >>> Arrival time: ${item.arrival.scheduledTime}</h3>
</c:forEach>
<h1>Your seat: ${seat}</h1>
<h3>Miejsca, Które cię interesują:</h3>
<c:forEach items="${seats}" var="item">
    <h4>${item}</h4>
</c:forEach>
<p>Jeśli pasażer siedzący na jednym z miejsc:
    <c:forEach items="${seats}" var="item">
        ${item}
    </c:forEach>
    zaznaczył twoje miejsce (${seat}) jako
    interesujące go, oba miejsca zaświecą się na zielono. I można się zamieniać!</p>
</body>
</html>
