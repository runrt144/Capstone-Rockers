<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact Information</title>

<style type="text/css">
.form {
	color: blue;
	background-color: ghostwhite;
	padding: 20px;
	border: 1px solid black;
	border-radius: 20px;
	font-weight: bold;
	font-size: 100%;
	font-variant: small-caps;
	font-family: 'FranchiseRegular', 'Arial Narrow', Arial, sans-serif;
	width: 100%;
	width: 70%;
	position: relative;
	top: 20%;
	left: 20%;
	margin-top: 50px;
	margin-left: -50px;
}

hr {
	color: #123455;
}
</style>
</head>
<body>
	<div style="hight: 30%" ; align="center" class="form">
		<h2><u>Flight Information</u></h2>
		<p>${sessionScope.flight}</p>
		Arunkumar
		${sessionScope.tripopFlight1}
		${sessionScope.tripoptFromTo}
		${sessionScope.flighDate}
		${sessionScope.flightDur}
		<h2><u>Fill details to proceed</u></h2>
		<form id="passengerform" action="ConfirmServlet" method="post">
			<div>
				<u>Passanger Details:</u> <br> <br>
				<table> 
					<tr>
						<td></td>
						<td>First Name</td>
						<td>Last Name</td>
						<td>Passport Number</td>
						<td>Dob</td>
						<td>Gener</td>
						<td>Senior</td>

					</tr>
					<tr>
						<td>1.</td>
						<td><input type="text" name="firstName" required
							placeholder="Firstname" /></td>


						<td><input type="text" name="lastName" required
							placeholder="Lastname" /></td>


						<td><input type="text" name="passportNum" required
							placeholder="Passport Number" /></td>


						<td><input type="date" name="dob" required
							placeholder="Dob(mm/dd/yyyy)" /></td>

						<td><select name="gender">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
						</select></td>

						<td><select name="senior">
								<option value="No">No</option>
								<option value="Yes">Yes</option>
						</select></td>
					</tr>

					<tr>
						<td>2.</td>
						<td><input type="text" name="firstName"
							placeholder="Firstname" /></td>


						<td><input type="text" name="lastName" placeholder="Lastname" /></td>


						<td><input type="text" name="passportNum"
							placeholder="Passport Number" /></td>


						<td><input type="date" name="dob"
							placeholder="Dob(mm/dd/yyyy)" /></td>

						<td><select name="gender">
								<option value="Male">Male</option>
								<option value="Female">Female</option></td>

						<td><select name="senior">
								<option value="No">No</option>
								<option value="Yes">Yes</option></td>

					</tr>
				</table>
			</div>
			<hr color:blue>
			<hr>
			<u>Contact Information: </u><br> <br>
			<div>
				<table>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" required
							placeholder="Your Email" /></td>
						<td>Phone Number:</td>
						<td><input type="text" name="phone_no"
							placeholder="Phone Number" /></td>
					</tr>
				</table>
			</div>
			<hr>
			<hr>
			<u>Payment Information: </u><br> <br>
			<div>
				<table>
					<tr>
						<td>Card Holder Name:</td>
						<td><input type="text" name="cardHolderName" required
							placeholder="Card Holder Name" /></td>

						<td>Card Number:</td>
						<td><input type="text" name="cardNumber" required
							placeholder="Card Number" maxlength=16 /></td>
					</tr>
					<tr>
						<td>CVV:</td>
						<td><input type="text" name="cvv" required placeholder="CVV"
							minlength=3 maxlength=3 /></td>

						<td>Expire Date:</td>
						<td><input type="date" name="expireDate" required
							placeholder="Expire Date(mm/dd/yyyy)" /></td>
					</tr>
				</table>
			</div>
			<br>

			<div>
				<table>
					<tr>
						<td colspan="4" style="text-align: center;"><br> <input
							class="sub" type="submit" value="Submit" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>