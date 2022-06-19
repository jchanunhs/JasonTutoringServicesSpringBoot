<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <jsp:include page="header.jsp"/>
    <body>
        <div id="wrapper">
            <header>Jason's Tutoring Services</header>
            <div id ="content-wrapper">
                <jsp:include page="webnav.jsp"/>
                <main> 
                    <h1 align ="center">Contact Me</h1>
                    <form name = "ContactForm"
                          onsubmit = "return submitAlert()"
                          method="post"
                          action="addTicket">
                        <label for="name">Name: </label>
                        <input type="text" name="name" id="name"><br>
                        <label for="enroll">Are you currently enrolled in these courses: </label>
                        <input type="radio" name="enroll" value="true">Yes
                        <input type="radio" name="enroll" value="false">No<br>
                        <label for="courses">Tutoring Courses: </label>
                        <select name ="courseName" id="courseName">
                            <option value="Others">Others</option>
                            <option value="Computer Programming">Computer Programming</option>
                            <option value="Cloud Computing">Cloud Computing</option>
                            <option value="Mobile Application Development">Mobile Application Development</option>
                            <option value="Data Structures">Data Structures</option>
                        </select> <br>
                        <label for="phone">Phone Number: </label>
                        <input type="tel" name="phone" id="phone" maxlength = "10"><br>
                        <label for="email">Email: </label>
                        <input type="text" name="email" id="email"><br>
                        <label for="question">Question:</label>
                        <textarea name="question" id="question" rows = "10" cols = "50"></textarea><br>
                        <input type="submit" value="Submit">
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
            function submitAlert() {
                var name = document.forms["ContactForm"]["name"].value;
                var enroll = document.forms["ContactForm"]["enroll"].value;
                var phone = document.forms["ContactForm"]["phone"].value;
                var email = document.forms["ContactForm"]["email"].value;
                var question = document.forms["ContactForm"]["question"].value;

                if (name == "" || phone == "" || email == "" || question == "" || enroll == "") {
                    alert("Error: Please fill out all information");
                    return false;
                } else {
                    var check = confirm("Are you sure you want to submit this information?");
                    if (check == true) {
                        alert("Form submitted successfully!");
                        form.submit();
                    } else {
                        alert("Form was not submitted.");
                        return false;
                    }
                }
            }
        </script>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
    </body> 
</html>
