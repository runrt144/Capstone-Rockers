<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book a Flight</title>
<link rel="stylesheet" type="text/css" href="homepagestyle.css" />
<style type="text/css" media="screen">
#headline1 {
	background-image: url(images/head1.jpeg);
	background-repeat: no-repeat;
	background-position: center top;
	padding-top: 70px;
	margin-bottom: 0px;
	background-size: 40%
}
</style>
</head>
<body>
	<div>
		<br>
		<img src="images/head1.jpg" alt=" " height="60" width="100%"
			align="middle" /> <br> <br>
	</div>
	<div>
		<ul id="nav">
			<li></li>
			<li><a href="aboutus.html">About Us</a></li>
			<li class="dropdown"><a href="#" class="dropbtn">My Account ${sessionScope.email}</a>
				<div class="dropdown-content">
					<a href="Registration.html">Personal Information</a> <a
						href="viewticket.html">View E-Ticket</a> <a
						href="cancelbooking.html">Cancel Booking</a>
				</div></li>
			<li><a href="contactus.html">Contact Us</a></li>
			<li><a href="LogoutServlet">Logout</a></li>
		</ul>
		<br>
		<br>
	</div>
	<div>
		<form align="left" class="searchform" method="post"
			action="SearchServlet">
			<table>
				<tr name="trip">
					<td><input type="radio" name="oneradio" value="one way">One
						Way</td>
					<td><input type="radio" name="tworadio" value="round trip" />Round
						Trip</td>
				</tr>
				<tr>
					<td><select name="from">
							<option value="">Leaving from...</option>

							<option value="SFO">San Francisco(SFO)</option>
							<option value="OAK">Oakland(OAK)</option>
							<option value="MAA">Chennai(MAA)</option>
							<option value="HYD">Hydrabad(HYD)</option>
							<option value="DEL">Delhi(DEL)</option>

							<option value="JFK">New York(JFK)</option>
							<option value="SEA">Seattle</option>
							<option value="PDX">Portland</option>
							<option value="AUS">Austin</option>
							<option value="RIO">Rio de Janiero</option>
							<option value="BOS">Boston</option>

							<option value="ORD">Chicago</option>
							<option value="DFW">Dallas</option>
							<option value="DEN">Denver</option>
							<option value="SJU">San Juan</option>
							<option value="LAX">Los Angeles</option>
							<option value="MSP">Minneapolis</option>

							<option value="AL">Alabama(AL)</option>
							<option value="AK">Alaska (AK)</option>
							<option value="AZ">Arizona(AZ)</option>
							<option value="AR">Arkansas(AR)</option>
							<option value="CA">California(CA)</option>
							<option value="CO">Colorado(CO)</option>
							<option value="CT">Connecticut (CT)</option>
							<option value="DL">Delaware (DL)</option>
							<option value="DC">District of Columbia (DC)</option>
							<option value="FL">Florida (FL)</option>
							<option value="GA">Georgia (GA)</option>
							<option value="HI">Hawaii(HI)</option>
							<option value="ID">Idaho (ID)</option>
							<option value="IL">Illinois(IL)</option>
							<option value="IN">Indiana (IN)</option>
							<option value="IA">Iowa (IA)</option>
							<option value="KS">Kansas(KS)</option>
							<option value="KY">Kentucky(KY)</option>
							<option value="LA">Louisiana (LA)</option>
							<option value="ME">Maine (ME)</option>
							<option value="MD">Maryland(MD)</option>
							<option value="MA">Massachusetts(MA)</option>
							<option value="MI">Michigan(MI)</option>
							<option value="MN">Minnesota(MN)</option>
							<option value="MS">Mississippi (MS)</option>
							<option value="MO">Missouri (MO)</option>
							<option value="MT">Montana(MT)</option>
							<option value="NE">Nebraska(NE)</option>
							<option value="NV">Nevada(NV)</option>
							<option value="NH">New Hampshire(NH)</option>
							<option value="NJ">New Jersey(NJ)</option>
							<option value="NM">New Mexico(NM)</option>
							<option value="NY">New York(NY)</option>
							<option value="NC">North Carolina(NC)</option>
							<option value="ND">North Dakota(ND)</option>
							<option value="OH">Ohio(OH)</option>
							<option value="OK">Oklahoma(OK)</option>
							<option value="OR">Oregon(OR)</option>
							<option value="PA">Pennsylvania(PA)</option>
							<option value="RI">Rhode Island(RI)</option>
							<option value="SD">South Dakota(SD)</option>
							<option value="TN">Tennessee(TN)</option>
							<option value="TX">Texas(TX)</option>
							<option value="UT">Utah(UT)</option>
							<option value="VT">Vermont(VT)</option>
							<option value="VA">Virginia(VA)</option>
							<option value=" WA">Washington(WA)</option>
							<option value="WV">West Virginia(WV)</option>
							<option value="WI">Wisconsin(WI)</option>
							<option value="WY">Wyoming(WY)</option>
							<option value="AS">American Samoa(AS)</option>
							<option value="GU">Guam(GU)</option>
							<option value="MP">Northern Mariana Islands(MP)</option>
							<option value="PR">Puerto Rico(PR)</option>
							<option value="VI">U.S. Virgin Islands (VI)</option>
							<option value="WI">U.S. Minor Outlying Islands(WI)</option>
					</select></td>
					<td><select name="to">
							<option value="">Going to...</option>

							<option value="SFO">San Francisco(SFO)</option>
							<option value="OAK">Oakland(OAK)</option>
							<option value="MAA">Chennai(MAA)</option>
							<option value="HYD">Hydrabad(HYD)</option>
							<option value="DEL">Delhi(DEL)</option>

							<option value="JFK">New York(JFK)</option>
							<option value="SEA">Seattle</option>
							<option value="PDX">Portland</option>
							<option value="AUS">Austin</option>
							<option value="RIO">Rio de Janiero</option>
							<option value="BOS">Boston</option>

							<option value="ORD">Chicago</option>
							<option value="DFW">Dallas</option>
							<option value="DEN">Denver</option>
							<option value="SJU">San Juan</option>
							<option value="LAX">Los Angeles</option>
							<option value="MSP">Minneapolis</option>
							<option value="AL">Alabama(AL)</option>
							<option value="AK">Alaska (AK)</option>
							<option value="AZ">Arizona(AZ)</option>
							<option value="AR">Arkansas(AR)</option>
							<option value="CA">California(CA)</option>
							<option value="CO">Colorado(CO)</option>
							<option value="CT">Connecticut (CT)</option>
							<option value="DL">Delaware (DL)</option>
							<option value="DC">District of Columbia (DC)</option>
							<option value="FL">Florida (FL)</option>
							<option value="GA">Georgia (GA)</option>
							<option value="HI">Hawaii(HI)</option>
							<option value="ID">Idaho (ID)</option>
							<option value="IL">Illinois(IL)</option>
							<option value="IN">Indiana (IN)</option>
							<option value="IA">Iowa (IA)</option>
							<option value="KS">Kansas(KS)</option>
							<option value="KY">Kentucky(KY)</option>
							<option value="LA">Louisiana (LA)</option>
							<option value="ME">Maine (ME)</option>
							<option value="MD">Maryland(MD)</option>
							<option value="MA">Massachusetts(MA)</option>
							<option value="MI">Michigan(MI)</option>
							<option value="MN">Minnesota(MN)</option>
							<option value="MS">Mississippi (MS)</option>
							<option value="MO">Missouri (MO)</option>
							<option value="MT">Montana(MT)</option>
							<option value="NE">Nebraska(NE)</option>
							<option value="NV">Nevada(NV)</option>
							<option value="NH">New Hampshire(NH)</option>
							<option value="NJ">New Jersey(NJ)</option>
							<option value="NM">New Mexico(NM)</option>
							<option value="NY">New York(NY)</option>
							<option value="NC">North Carolina(NC)</option>
							<option value="ND">North Dakota(ND)</option>
							<option value="OH">Ohio(OH)</option>
							<option value="OK">Oklahoma(OK)</option>
							<option value="OR">Oregon(OR)</option>
							<option value="PA">Pennsylvania(PA)</option>
							<option value="RI">Rhode Island(RI)</option>
							<option value="SD">South Dakota(SD)</option>
							<option value="TN">Tennessee(TN)</option>
							<option value="TX">Texas(TX)</option>
							<option value="UT">Utah(UT)</option>
							<option value="VT">Vermont(VT)</option>
							<option value="VA">Virginia(VA)</option>
							<option value=" WA">Washington(WA)</option>
							<option value="WV">West Virginia(WV)</option>
							<option value="WI">Wisconsin(WI)</option>
							<option value="WY">Wyoming(WY)</option>
							<option value="AS">American Samoa(AS)</option>
							<option value="GU">Guam(GU)</option>
							<option value="MP">Northern Mariana Islands(MP)</option>
							<option value="PR">Puerto Rico(PR)</option>
							<option value="VI">U.S. Virgin Islands (VI)</option>
							<option value="WI">U.S. Minor Outlying Islands(WI)</option>
					</select></td>
				</tr>
				<td>Departure</td>
				<td>Return</td>
				<tr>
					<td><input id="datepicker1" type="date" name="depDate"
						placeholder="Departure Date" /></td>
					<td><input id="datepicker2" type="date" name="retDate"
						placeholder="Return Date" /></td>
				</tr>

				<tr>
					<td>Adult(12+ Ys) Child(2-11 Yrs)</td>
					<td>Infant(0-2 Yrs)</td>
				</tr>
				<tr>
					<td><select name="adult">
							<option value="1">1 Adult</option>
							<option value="2">2 Adults</option>
							<option value="3">3 Adults</option>
							<option value="4">4 Adults</option>
							<option value="5">5 Adults</option>
							<option value="6">6 Adults</option>
							<option value="7">7 Adults</option>
							<option value="8">8 Adults</option>
							<option value="9">9 Adults</option>
					</select> <select name="child">
							<option value="0">0 Children</option>
							<option value="1">1 Child</option>
							<option value="2">2 Children</option>
							<option value="3">3 Children</option>
							<option value="4">4 Children</option>
					</select>
					<td><select name="infant">
							<option value="0">0 Infant</option>
							<option value="1">1 Infant</option>
							<option value="2">2 Infants</option>
							<option value="3">3 Infants</option>
							<option value="4">4 Infants</option>
					</select></td>
					</td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: center;"><br>
					<input class="search" type="submit" value="Search" /></td>
				</tr>
			</table>
		</form>
	</div>

	<div class="footer">
		<p>
			Created by: Arunkumar. Contact Information: <b
				href="mailto:runrt.runrt@gmail.com">runrt.runrt@gmail.com</b>
		</p>
	</div>
</body>
</html>