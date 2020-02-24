<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<center>
	<h1>E-GROCERY SIGNUP</h1>
</center>
<body style="background-color: powderblue;">
	<br>
	<center>

		<table border="0">
			<form action="register">
				<tr>
					<td>Enter User Name :</td>
					<td><input type="text" name="Username"
						pattern="[A-Z]{1}[a-z]{2,}"
						title="First Letter Must be Capital then followed by small"
						placeholder="Enter Username " required autofocus /></td>
				</tr>
				<pre></pre>
				<tr>
					<td>Enter Email :</td>
					<td><input type="email" name="Email"
						title="Please match the email format" placeholder="Enter Mail_id "
						required></td>
				</tr>
				<tr>
					<td><label for="phone">Enter Mobile number:</label></td>
					<td><input type="tel" id="phone" name="Mobileno"
						title="Please enter 10 digit mobile number"
						pattern="[0-9]{3}[0-9]{3}[0-9]{4}" placeholder=" Enter Mobile_num"
						required /></td>
				</tr>

				<tr>
					<td>Enter Password :</td>
					<td><input type="password" name="pw"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="Enter Password" required /></td>
				</tr>
				<tr>
					<td>Enter Address :</td>
					<td><input type=text name="address"
						pattern="[1-9]{2,},[a-z]{5,},[a-z]{3,}"
						title="Enter Door No,Streetname,city" placeholder="Enter address"
						required /></td>
				</tr>
				<tr>
					<td>Enter ZipCode :</td>
					<td><input type="text" name="pincode" pattern="[0-9]{6}"
						title="Please match the Pincode format"
						placeholder="6 - digit pincode " required />
				</tr>
		</table>
		<pre>

</pre>
		<button type="submit">Submit</button>
	</center>

	</form>
	<%
		String res = (String) request.getParameter("status");
	%>
	<%
		if (res != null) {
	%>
	<script>
		alert("Account Details Already Exists\n Please try another Username / Email / MobileNumber");
	</script>
	<%
		}
	%>

</body>
</html>