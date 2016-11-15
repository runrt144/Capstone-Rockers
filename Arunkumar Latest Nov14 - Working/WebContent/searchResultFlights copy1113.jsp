<%-- 
    Document   : SearchFlights
    Created on : Nov 13, 2016, 7:22:36 PM
    Author     : Arun
--%>

<%@page import="com.flight.TripSearch"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SearchFlights</title>
    <style>
        table,
        th,
        td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        th,
        td {
            padding: 5px;
        }
        
        th {
            text-align: left;
        }
    </style>
</head>

<body>

    <table style="width:50%">
        <!-- <c:out value="${flightSearchResults.kind }"/> -->
        <c:forEach items="${flightSearchResults.trips.data.aircraft}" var="aircraft" varStatus="loop">
            <tr>
                <td>
                    <c:out value="${aircraft.name}" />
                </td>
                <c:forEach items="${flightSearchResults.trips.tripOption}" var="tripOption" varStatus="loop">
                    <tr>
                        <c:forEach items="${tripOption.pricing}" var="pricing" varStatus="loop">
                            <td>
                                <c:out value="${pricing.saleFareTotal}" />
                            </td>
                            <td>
                                <c:out value="${pricing.saleTaxTotal}" />
                            </td>
                            <td>
                                <c:out value="${pricing.saleTotal}" />
                            </td>
                        </c:forEach>

                        <c:forEach items="${tripOption.slice}" var="slice" varStatus="loop">
                            <td>
                                <c:out value="${slice.duration}" />
                            </td>
                            <c:forEach items="${slice.segment}" var="segment" varStatus="loop">
                                <td>
                                    <c:out value="${segment.bookingCodeCount}" />
                                </td>
                                <td>
                                    <c:out value="${segment.flight.number}" />
                                </td>
                                <c:forEach items="${segment.leg}" var="leg" varStatus="loop">
                                    <td>
                                        <c:out value="${leg.origin}" />
                                    </td>
                                    <td>
                                        <c:out value="${leg.destination}" />
                                    </td>
                                    <td>
                                        <c:out value="${leg.duration}" />
                                    </td>
                                    <td>
                                        <c:out value="${leg.mileage}" />
                                    </td>
                                    <!-- 	<td><c:out value="${leg.connectionDuration}" /></td>   -->
                                    <td>
                                        <c:out value="${leg.changePlane}" />
                                    </td>
                                    <td>
                                        <c:out value="${leg.arrivalTime}" />
                                    </td>
                                    <td>
                                        <c:out value="${leg.departureTime}" />
                                    </td>
                                </c:forEach>
                            </c:forEach>
                        </c:forEach>

                    </tr>
                </c:forEach>
        </c:forEach>
    </table>
</body>

</html>
