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

	<table style="width: 80%">


		<c:forEach items="${flightSearchResults.trips.tripOption}"
			var="tripOption" varStatus="loop">
			<tr>
				<c:forEach items="${tripOption.slice}" var="slice" varStatus="loop">
					<c:forEach items="${slice.segment}" var="segment" varStatus="loop">
						<td><c:out value="${segment.flight.number}" /></td>
						<c:forEach items="${segment.leg}" var="leg" varStatus="loop">
							<td><c:out value="${leg.origin}" /></td>
							<td><c:out value="${leg.destination}" /></td>
							<td><c:out value="${leg.duration}" /></td>
							<td><c:out value="${leg.departureTime}" /></td>
							<td><c:out value="${leg.arrivalTime}" /></td>
						</c:forEach>
					</c:forEach>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>





<!--  
 									</td>
                                    	<td><c:out value="${leg.connectionDuration}" /></td> 
                                    <td>
                                        <c:out value="${leg.changePlane}" />
                                    </td> 
                                    <c:forEach items="${flightSearchResults.trips.tripOption}" var="leg2" varStatus="loop"><tr>
        	<c:forEach items="${tripOption.slice}" var="leg3" varStatus="loop"><tr>
        		<c:forEach items="${slice.segment}" var="leg4" varStatus="loop"><tr>
        			<c:forEach items="${segment.leg}" var="leg" varStatus="loop">
                             
			            <tr>
			            	<td></td>
			                <td><c:out value="${leg.origin}" /></td>
			                <td>------>
</td>
<td><c:out value="${leg.destination}" /></td>
<td></td>
<td></td>
</tr>
<tr>
	<td></td>
	<td><c:out value="${leg.departureTime}" /></td>
	<td><c:out value="${leg.duration}" /></td>
	<td><c:out value="${leg.arrivalTime}" /></td>
	<td></td>
	<td></td>
</tr>

<c:forEach items="${flightSearchResults.trips.data.carrier}"
	var="carrier" varStatus="loop">
	<tr>
		<td><c:out value="${carrier.name}" /></td>
		<td></td>
		<td></td>
		<c:forEach items="${flightSearchResults.trips.tripOption.pricing}"
			var="pricing" varStatus="loop">
			<td><c:out value="${pricing.saleFareTotal}" /></td>
			<td><c:out value="${pricing.saleTaxTotal}" /></td>
			<td><c:out value="${pricing.saleTotal}" /></td>
		</c:forEach>
	</tr>

	<tr>
		<td></td>
		<td><c:out value="${leg.origin}" /></td>
		<td>------></td>
		<td><c:out value="${leg.destination}" /></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td><c:out value="${leg.departureTime}" /></td>
		<td><c:out value="${leg.duration}" /></td>
		<td><c:out value="${leg.arrivalTime}" /></td>
		<td></td>
		<td></td>
	</tr>
</c:forEach>
</c:forEach>
</c:forEach>
</c:forEach>
</c:forEach>
<c:forEach items="${flightSearchResults.trips.data.aircraft}"
	var="aircraft1" varStatus="loop">
	<tr>
		<td><c:out value="${aircraft1.name}" /></td>
		<td></td>
		<td></td>
		<td></td>
		<c:forEach items="${tripOption.pricing}" var="pricing"
			varStatus="loop">
			<td><c:out value="${pricing.saleFareTotal}" /></td>
			<td><c:out value="${pricing.saleTaxTotal}" /></td>
			<td><c:out value="${pricing.saleTotal}" /></td>
		</c:forEach>

	</tr>
</c:forEach>

<c:forEach items="${flightSearchResults.trips.data.carrier}"
	var="carrier" varStatus="loop">
	<tr>
		<td><c:out value="${carrier.name}" /></td> -->