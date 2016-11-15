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
	<input type="hidden" name="bookingInfo" id="bookingInfo" />
	<table style="width: 80%">
		<c:forEach items="${flightSearchResults.trips.tripOption}" var="tripOption" varStatus="loop">
			
					<c:set var="tripopt" value="" />
					<c:forEach items="${tripOption.slice}" var="slice" varStatus="loop">
					 <c:forEach items="${slice.segment}" var="segment" varStatus="loop">
					 <tr>
					 <c:forEach items="${flightSearchResults.trips.data.carrier}" var="carrier" varStatus="loop">
						<c:if test="${carrier.code == segment.flight.carrier }">
							<td><c:out value="${carrier.name}" /></td>
							<c:set var="tripopt" value="${tripopt },${carrier.name }" />
						</c:if> 
					 </c:forEach>
						<td><c:out value="${segment.flight.number}" /></td>
						<c:set var="tripopt" value="${tripopt},${segment.flight.number}" />
						<c:forEach items="${segment.leg}" var="leg" varStatus="loop">
							<td><c:out value="${leg.origin}" /></td>
							<td><c:out value="${leg.destination}" /></td>
							<td><c:out value="${leg.departureTime}" /></td>
							<td><c:out value="${leg.arrivalTime}" /></td>
							<c:set var="tripopt" value="${tripopt},${leg.origin},${leg.destination },${leg.departureTime },${leg.arrivalTime }" />
						</c:forEach>
						
						<td><c:out value="${segment.duration}" /></td>
						<c:set var="tripopt" value="${tripopt},${segment.duration }" />
						</tr>
						
					 </c:forEach>
					</c:forEach>
					<tr>
			<c:forEach items="${tripOption.pricing}" var="pricing1" varStatus="loop">
					<td><c:out value="${pricing1.saleFareTotal}" /></td>
					<td><c:out value="${pricing1.saleTaxTotal}" /></td>
					<td><c:out value="${pricing1.saleTotal}" /></td>
			</c:forEach>
			
			<td colspan="4" style="text-align: center;backgroud-color:blue; color:white" >
			<script type="text/javascript">
				
				function setBookingInfo(bookingInfo){alert(bookingInfo);
					
					document.getElementById('bookingInfo').value = (bookingInfo);
				}
			</script> 
			
			<input onclick="setBookingInfo('<c:out value='${tripopt}' />');" class="search" type="submit" value="Book"/></td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>
