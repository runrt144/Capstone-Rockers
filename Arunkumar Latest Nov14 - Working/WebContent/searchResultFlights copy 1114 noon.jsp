<%-- 
    Document   : SearchFlights
    Created on : Nov 13, 2016, 7:22:36 PM
    Author     : Arun
--%>

<%@page import="com.flight.TripSearch"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SearchFlights</title>
<style>
table, th, td {
	border: 1px solid blue;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

th {
	text-align: left;
}
</style>
</head>

<body>

	<form align="left" class="book" method="post"  action="BookServlet">
	<table style="width: 80%">
	
		<c:forEach items="${flightSearchResults.trips.tripOption}" var="tripOption" varStatus="loop">
			<tr>
				<c:forEach items="${flightSearchResults.trips.data.carrier}" var="carrier" varStatus="loop">
					<td><c:out value="${carrier.name}" /></td> 
					<c:forEach items="${tripOption.slice}" var="slice" varStatus="loop">
					 <c:forEach items="${slice.segment}" var="segment" varStatus="loop">
						<tr><td><c:out value="${segment.flight.number}" /></td>
						
						<c:forEach items="${segment.leg}" var="leg" varStatus="loop">
							<td><c:out value="${leg.origin}" /></td>
							<td><c:out value="${leg.destination}" /></td>
							<td><c:out value="${leg.departureTime}" /></td>
							<td><c:out value="${leg.arrivalTime}" /></td>
						</c:forEach>
						
						<td><c:out value="${segment.duration}" /></td>
						</tr>
					 </c:forEach>
					</c:forEach>
				</c:forEach> 
			<c:forEach items="${tripOption.pricing}" var="pricing1" varStatus="loop">
					<td><c:out value="${pricing1.saleFareTotal}" /></td>
					<td><c:out value="${pricing1.saleTaxTotal}" /></td>
					<td><c:out value="${pricing1.saleTotal}" /></td>
			</c:forEach>
			<td colspan="4" style="text-align: center;backgroud-color:blue; color:white" > <input class="search" type="submit" value="Book"/></td>
			</tr><hr>
		</c:forEach>
	</table>
	</form>
</body>
</html>
