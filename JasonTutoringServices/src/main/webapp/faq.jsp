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
                    <h1 align ="center">Frequently Asked Questions</h1>
                    <div id="accordion">
                        <h2>Question: Can you also help me with math?</h2>
                        <div>
                            <p>Answer: Yes, I can. You can submit a request using the <a href = "contact.html">Contact Me</a> page.</p>
                        </div>
                        <h2>Question: What is the main programming language you specialize in?</h2>
                        <div>
                            <p>Answer: I mainly specialize in Java. I've used Java for three years to implement projects for various classes. I also use it to speed up algorithmic tasks.</p>
                        </div>

                        <h2>Question: What makes you stand out compared to other tutoring services?</h2>
                        <div>
                            <p> Answer: I really care about helping students completely understand the concepts they're learning in their courses. 
                                I won't simply teach the concepts and then end the tutoring session. I will make sure you completely grasp the concept and apply it to the real world.</p>
                        </div>
                        <h2>Question: What other programming languages do you know?</h2>
                        <div>
                            <p>Answer: I know python, R code and C++. If you feel more comfortable using these languages instead of Java, we can switch to other alternatives. However, Java is my favorite programming language.</p>
                        </div>
                        <h2>Question: Do you offer discounts?</h2>
                        <div>
                            <p>Answer: I try to make these prices as cheap as possible. To be fair to everyone, I cannot give discounts. My prices are measured based on the prices of other tutoring websites.
                                If other tutoring services lower their prices, I will also lower my price accordingly.</p>
                        </div>
                        <h2>Question:  How will you know what is expected on my upcoming exams and projects?</h2>
                        <div>
                            <p>Answer: Based on the concepts that you requested me to teach you. I've been a Teacher Assistant for 3 years. 
                                I'll have an idea of what your professor may ask of you to during these exams/project. You can also scan your syllabus and send it to me to check it.
                                I'll analyze your syllabus and tutor you based on the concepts you're learning in class that week. Then I can show you how to apply them to your exams and projects.</p>
                        </div>
                        <h2>Question: Are your hours flexible?</h2>
                        <div>
                            <p>Answer: Yes! I am willing to adjust to your schedule.</p>
                        </div>
                    </div>
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
