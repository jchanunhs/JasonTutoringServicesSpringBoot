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
                          action="index.html"
                          method="post" 
                          enctype="text/plain">
                        <label for="firstname">Name: </label>
                        <input type="text" name ="name"  id="name"><br>
                        <label for="enroll">Are you currently enrolled in these courses: </label>
                        <input type="radio" name="enroll" id="yes">Yes
                        <input type="radio" name="enroll" id="no">No<br>
                        <label for="courses">Tutoring Courses: </label>
                        <select name = "course_name" id = "course_name">
                            <option value="other">Others</option>
                            <option value="compprog">Computer Programming</option>
                            <option value="cloud">Cloud Computing</option>
                            <option value="mobile">Mobile Application Development</option>
                            <option value="data">Data Structures</option>
                        </select> <br>
                        <label for="phone">Phone Number: </label>
                        <input type="tel" name ="phone"  id="phone" maxlength = "10"><br>
                        <label for="email">Email: </label>
                        <input type="text" name ="email"  id="email"><br>
                        <label for="question">Question:</label>
                        <textarea name= "question" id = "question" rows = "10" cols = "50"></textarea><br>
                        <input type="submit" value="Submit">
                        <input type="reset" value="Reset">
                    </form>
                    <div id = "date"> </div>
                </main>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
    </body> 
</html>
