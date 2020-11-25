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
<form action="/flight/seatsToSwap" method="post">
    Teraz podaj miejsca, które cię interesują:<br>
    <table style="width: 50%" border="1px">
        <tr>
            <td><input type="checkbox" name="seats" value="1A">1A</td>
            <td><input type="checkbox" name="seats" value="1B">1B</td>
            <td><input type="checkbox" name="seats" value="1C">1C</td>
            <td style="background: black"></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="2A">2A</td>
            <td><input type="checkbox" name="seats" value="2B">2B</td>
            <td><input type="checkbox" name="seats" value="2C">2C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="2D">2D</td>
            <td><input type="checkbox" name="seats" value="2E">2E</td>
            <td><input type="checkbox" name="seats" value="2F">2F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="3A">3A</td>
            <td><input type="checkbox" name="seats" value="3B">3B</td>
            <td><input type="checkbox" name="seats" value="3C">3C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="3D">3D</td>
            <td><input type="checkbox" name="seats" value="3E">3E</td>
            <td><input type="checkbox" name="seats" value="3F">3F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="4A">4A</td>
            <td><input type="checkbox" name="seats" value="4B">4B</td>
            <td><input type="checkbox" name="seats" value="4C">4C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="4D">4D</td>
            <td><input type="checkbox" name="seats" value="4E">4E</td>
            <td><input type="checkbox" name="seats" value="4F">4F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="5A">5A</td>
            <td><input type="checkbox" name="seats" value="5B">5B</td>
            <td><input type="checkbox" name="seats" value="5C">5C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="5D">5D</td>
            <td><input type="checkbox" name="seats" value="5E">5E</td>
            <td><input type="checkbox" name="seats" value="5F">5F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="6A">6A</td>
            <td><input type="checkbox" name="seats" value="6B">6B</td>
            <td><input type="checkbox" name="seats" value="6C">6C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="6D">6D</td>
            <td><input type="checkbox" name="seats" value="6E">6E</td>
            <td><input type="checkbox" name="seats" value="6F">6F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="7A">7A</td>
            <td><input type="checkbox" name="seats" value="7B">7B</td>
            <td><input type="checkbox" name="seats" value="7C">7C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="7D">7D</td>
            <td><input type="checkbox" name="seats" value="7E">7E</td>
            <td><input type="checkbox" name="seats" value="7F">7F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="8A">8A</td>
            <td><input type="checkbox" name="seats" value="8B">8B</td>
            <td><input type="checkbox" name="seats" value="8C">8C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="8D">8D</td>
            <td><input type="checkbox" name="seats" value="8E">8E</td>
            <td><input type="checkbox" name="seats" value="8F">8F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="9A">9A</td>
            <td><input type="checkbox" name="seats" value="9B">9B</td>
            <td><input type="checkbox" name="seats" value="9C">9C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="9D">9D</td>
            <td><input type="checkbox" name="seats" value="9E">9E</td>
            <td><input type="checkbox" name="seats" value="9F">9F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="10A">10A</td>
            <td><input type="checkbox" name="seats" value="10B">10B</td>
            <td><input type="checkbox" name="seats" value="10C">10C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="10D">10D</td>
            <td><input type="checkbox" name="seats" value="10E">10E</td>
            <td><input type="checkbox" name="seats" value="10F">10F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="11A">11A</td>
            <td><input type="checkbox" name="seats" value="11B">11B</td>
            <td><input type="checkbox" name="seats" value="11C">11C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="11D">11D</td>
            <td><input type="checkbox" name="seats" value="11E">11E</td>
            <td><input type="checkbox" name="seats" value="11F">11F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="12A">12A</td>
            <td><input type="checkbox" name="seats" value="12B">12B</td>
            <td><input type="checkbox" name="seats" value="12C">12C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="12D">12D</td>
            <td><input type="checkbox" name="seats" value="12E">12E</td>
            <td><input type="checkbox" name="seats" value="12F">12F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="14A">14A</td>
            <td><input type="checkbox" name="seats" value="14B">14B</td>
            <td><input type="checkbox" name="seats" value="14C">14C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="14D">14D</td>
            <td><input type="checkbox" name="seats" value="14E">14E</td>
            <td><input type="checkbox" name="seats" value="14F">14F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="15A">15A</td>
            <td><input type="checkbox" name="seats" value="15B">15B</td>
            <td><input type="checkbox" name="seats" value="15C">15C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="15D">15D</td>
            <td><input type="checkbox" name="seats" value="15E">15E</td>
            <td><input type="checkbox" name="seats" value="15F">15F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="16A">16A</td>
            <td><input type="checkbox" name="seats" value="16B">16B</td>
            <td><input type="checkbox" name="seats" value="16C">16C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="16D">16D</td>
            <td><input type="checkbox" name="seats" value="16E">16E</td>
            <td><input type="checkbox" name="seats" value="16F">16F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="17A">17A</td>
            <td><input type="checkbox" name="seats" value="17B">17B</td>
            <td><input type="checkbox" name="seats" value="17C">17C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="17D">17D</td>
            <td><input type="checkbox" name="seats" value="17E">17E</td>
            <td><input type="checkbox" name="seats" value="17F">17F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="18A">18A</td>
            <td><input type="checkbox" name="seats" value="18B">18B</td>
            <td><input type="checkbox" name="seats" value="18C">18C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="18D">18D</td>
            <td><input type="checkbox" name="seats" value="18E">18E</td>
            <td><input type="checkbox" name="seats" value="18F">18F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="19A">19A</td>
            <td><input type="checkbox" name="seats" value="19B">19B</td>
            <td><input type="checkbox" name="seats" value="19C">19C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="19D">19D</td>
            <td><input type="checkbox" name="seats" value="19E">19E</td>
            <td><input type="checkbox" name="seats" value="19F">19F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="20A">20A</td>
            <td><input type="checkbox" name="seats" value="20B">20B</td>
            <td><input type="checkbox" name="seats" value="20C">20C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="20D">20D</td>
            <td><input type="checkbox" name="seats" value="20E">20E</td>
            <td><input type="checkbox" name="seats" value="20F">20F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="21A">21A</td>
            <td><input type="checkbox" name="seats" value="21B">21B</td>
            <td><input type="checkbox" name="seats" value="21C">21C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="21D">21D</td>
            <td><input type="checkbox" name="seats" value="21E">21E</td>
            <td><input type="checkbox" name="seats" value="21F">21F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="22A">22A</td>
            <td><input type="checkbox" name="seats" value="22B">22B</td>
            <td><input type="checkbox" name="seats" value="22C">22C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="22D">22D</td>
            <td><input type="checkbox" name="seats" value="22E">22E</td>
            <td><input type="checkbox" name="seats" value="22F">22F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="23A">23A</td>
            <td><input type="checkbox" name="seats" value="23B">23B</td>
            <td><input type="checkbox" name="seats" value="23C">23C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="23D">23D</td>
            <td><input type="checkbox" name="seats" value="23E">23E</td>
            <td><input type="checkbox" name="seats" value="23F">23F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="24A">24A</td>
            <td><input type="checkbox" name="seats" value="24B">24B</td>
            <td><input type="checkbox" name="seats" value="24C">24C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="24D">24D</td>
            <td><input type="checkbox" name="seats" value="24E">24E</td>
            <td><input type="checkbox" name="seats" value="24F">24F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="25A">25A</td>
            <td><input type="checkbox" name="seats" value="25B">25B</td>
            <td><input type="checkbox" name="seats" value="25C">25C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="25D">25D</td>
            <td><input type="checkbox" name="seats" value="25E">25E</td>
            <td><input type="checkbox" name="seats" value="25F">25F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="26A">26A</td>
            <td><input type="checkbox" name="seats" value="26B">26B</td>
            <td><input type="checkbox" name="seats" value="26C">26C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="26D">26D</td>
            <td><input type="checkbox" name="seats" value="26E">26E</td>
            <td><input type="checkbox" name="seats" value="26F">26F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="27A">27A</td>
            <td><input type="checkbox" name="seats" value="27B">27B</td>
            <td><input type="checkbox" name="seats" value="27C">27C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="27D">27D</td>
            <td><input type="checkbox" name="seats" value="27E">27E</td>
            <td><input type="checkbox" name="seats" value="27F">27F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="28A">28A</td>
            <td><input type="checkbox" name="seats" value="28B">28B</td>
            <td><input type="checkbox" name="seats" value="28C">28C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="28D">28D</td>
            <td><input type="checkbox" name="seats" value="28E">28E</td>
            <td><input type="checkbox" name="seats" value="28F">28F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="29A">29A</td>
            <td><input type="checkbox" name="seats" value="29B">29B</td>
            <td><input type="checkbox" name="seats" value="29C">29C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="29D">29D</td>
            <td><input type="checkbox" name="seats" value="29E">29E</td>
            <td><input type="checkbox" name="seats" value="29F">29F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="30A">30A</td>
            <td><input type="checkbox" name="seats" value="30B">30B</td>
            <td><input type="checkbox" name="seats" value="30C">30C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="30D">30D</td>
            <td><input type="checkbox" name="seats" value="30E">30E</td>
            <td><input type="checkbox" name="seats" value="30F">30F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="31A">31A</td>
            <td><input type="checkbox" name="seats" value="31B">31B</td>
            <td><input type="checkbox" name="seats" value="31C">31C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="31D">31D</td>
            <td><input type="checkbox" name="seats" value="31E">31E</td>
            <td><input type="checkbox" name="seats" value="31F">31F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="32A">32A</td>
            <td><input type="checkbox" name="seats" value="32B">32B</td>
            <td><input type="checkbox" name="seats" value="32C">32C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="32D">32D</td>
            <td><input type="checkbox" name="seats" value="32E">32E</td>
            <td><input type="checkbox" name="seats" value="32F">32F</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="seats" value="33A">33A</td>
            <td><input type="checkbox" name="seats" value="33B">33B</td>
            <td><input type="checkbox" name="seats" value="33C">33C</td>
            <td style="background: black"></td>
            <td><input type="checkbox" name="seats" value="33D">33D</td>
            <td><input type="checkbox" name="seats" value="33E">33E</td>
            <td><input type="checkbox" name="seats" value="33F">33F</td>
        </tr>
    </table>
    <input type="submit" value="Done">
</form>
</body>
</html>