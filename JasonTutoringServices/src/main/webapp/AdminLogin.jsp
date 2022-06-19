<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <jsp:include page="header.jsp"/>
    <body>
        <div id="wrapper">
            <header>Jason's Tutoring Services</header>
            <div id ="content-wrapper">
                <main> 
                    <h1 align ="center">Admin Sign In</h1>
                    <form name="AdminSignIn" action="/admin/login" method ="post"> 
                        <label for="username">Username: </label>
                        <input type="text" name="username" id="username"><br>
                        <label for="password">Password: </label>
                        <input type="password" name="password"><br>
                        <input type="button" value="Login" onClick="checkInputs()">
                        <input type="reset" value="Reset">
                    </form>
                    <c:if test="${not empty message}">
                        <div id="message">${message}</div>    
                    </c:if>
                    <div id = "date"> </div>
                </main>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
        <script>
            function checkInputs()
            {
                userame = document.AdminSignIn.name.value;
                password = document.AdminSignIn.password.value;
                if (username == "" || password == "") {
                    window.alert("One or more fields are empty! Please fill out all information!");
                } else {
                    document.AdminSignIn.submit();
                }
            }
        </script>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
    </body> 
</html>
