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
                    <h1 align ="center">About Me</h1>
                    <h2 >The Creator</h2>
                    <p>Hi, my name is Jason Chan. I'm currently a major in Computer Science and a minor in Mathematics. 
                        I've been a Teacher Assistant for the past 3 years, so I understand the issues that students face
                        and how to assist them. </p>
                    <div class="imgcontainer">
                        <div class = "animate"><img src="${pageContext.request.contextPath}/images/profile.jpg" alt="Jason Chan" class="imgoverlay"></div>
                        <div class="overlay">Jason Chan</div>
                    </div>
                    <h2>The Exposure</h2>
                    <p>We will various integrated develop environments to design, create and test our programs. An example of an IDE is <strong>figure 1</strong>, which utilizes the Java Language for Netbeans.
                        Please note that Java Language is not a mandatory language that will be used in this tutoring service.</p>
                    <figure>
                        <a href = "${pageContext.request.contextPath}/images/netbeans.jpg">
                            <img src="${pageContext.request.contextPath}/images/netbeans.jpg" alt="Netbeans Interface" width = 100% height = "250">
                        </a>
                        <figcaption>Figure 1: Netbeans Interface</figcaption>
                    </figure>
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
