<%--
  Created by IntelliJ IDEA.
  User: Megan
  Date: 5/8/2017
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>User Registration</title>

    <link href="../../resources/styles.css" rel="stylesheet">

</head>
<body>

<h2>Please fill in the form to register!</h2>


<form name="form" method="post" action="addCustomer" onsubmit="return validateForm()">
    <table>
        <tr>
            <td><label for="firstName">First Name: </label></td>
            <td><input type="text" id="firstName" name="firstName"><br></td>
        </tr>
        <tr>
            <td><label for="lastName">Last Name: </label></td>
            <td><input type="text" id="lastName" name="lastName"><br></td>
        </tr>
        <tr>
            <td><label for="email">Email Address: </label></td>
            <td><input type="text" id="email" name="email"><br></td>
        </tr>
        <tr>
            <td><label for="phoneNumber">Phone Number: </label></td>
            <td><input type="text" id="phoneNumber" name="phoneNumber"><br></td>
        </tr>
        <tr>
            <td><label for="password">Password: </label></td>
            <td><input type="password" id="password" name="password"><br></td>
        </tr>

    </table>

    <div>
        <h4>How much do you LOVE coffee?</h4>
        <input type="radio" name="loveCoffee" value="yes">I practically have coffee running through my veins!<br>
        <input type="radio" name="loveCoffee" value="sortOf">A cuppa day, with cream and sugar<br>
        <input type="radio" name="loveCoffee" value="no">I had a frappuccino once.<br>


        <h4>Which of the following have you been to in the last three months?</h4>
        <input type="checkbox" name="otherCoffee" value="starbucks">Starbucks<br>
        <input type="checkbox" name="otherCoffee" value="biggby">Biggby<br>
        <input type="checkbox" name="otherCoffee" value="tim">Tim Hortons<br>
        <input type="checkbox" name="otherCoffee" value="espresso">Espresso Royale<br>
    </div>
    <input type="submit" value="Register"/><br>

</form>

<script>
    function validateForm() {
        var firstName = document.forms["form"]["firstName"].value;
        var lastName = document.forms["form"]["lastName"].value;
        var email = document.forms["form"]["email"].value;
        var phoneNumber = document.forms["form"]["phoneNumber"].value;
        var password = document.forms["form"]["password"].value;

        if (!firstName || !lastName || !email || !phoneNumber || !password) {
            alert("All fields are required.");
            return false;
        }

        if (!email.includes("@")) {
            alert("Please enter a valid email address.");
            return false;
        }
    }
</script>

</body>
</html>

