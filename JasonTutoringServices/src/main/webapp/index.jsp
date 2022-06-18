<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <jsp:include page="header_main.jsp"/>
    <body>
        <div id="wrapper">
            <header>Jason's Tutoring Services</header>
            <div id ="content-wrapper">
                <jsp:include page="webnav.jsp"/>
                <main> 
                    <h1 align ="center">Welcome to Jason's Tutoring Services!</h1>
                    <img class = "transition" src = "${pageContext.request.contextPath}/images/learn.jpg" alt = "learn">
                    <h2> Get The Help That You Need!</h2>
                    <p>Everyone in college struggles at some point in their academics. The objective of this tutoring service is to assist you with overcoming these obstacles. There's no need to be shy. I'm here to help!</p> 
                    <h2> Improve Your Grades!</h2>
                    <p>Students who come to these tutoring sessions do better in their homework/lab assignments, projects and exams. You will be taught how to create algorithms to create programs.</p>
                    <h2> Get Ahead!</h2>
                    <p>During these sessions, you will be taught to understand what you may expect on your upcoming assignments and exams. This will give you the opportunity to jumpstart your projects and studies.</p>
                    <div id = "date"> </div>
                </main>
                <jsp:include page="downloadnav.jsp"/>

            </div>
            <jsp:include page="footer_main.jsp"/>
        </div>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
    </body> 
</html>
