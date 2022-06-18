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
                    <h1 align ="center">Why You Should Major in Computer Science</h1>
                    <h2>With a degree in Computer Science, you can</h2>
                    <ul>
                        <li>Build your own website.</li>
                        <li>Create a program.</li>
                        <li>Create your own Android application.</li>
                        <li>Learn how to add more security your computer.</li>
                        <li>Create a database for your company.</li>
                        <li>Build your own computer.</li>
                        <li>and much more!.</li>
                    </ul>
                    <video  width="640" height="360" poster = "${pageContext.request.contextPath}/images/poster.jpg" controls>
                        <source src="${pageContext.request.contextPath}/videos/video.mp4" type="video/mp4">
                    </video>
                    <h2 align = "middle"><a href = "https://www.youtube.com/watch?v=dNo_BVzNb28">Video</a> was originated from Northwestern University's Youtube Channel. Video credits belong to Northwestern University.</h2>
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
