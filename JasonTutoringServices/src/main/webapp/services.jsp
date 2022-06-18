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
                    <h1 align ="center">Tutoring Services</h1>
                    <div id="tabs">
                        <ul>
                            <li><a href="#tabs-1">Computer Programming</a></li>
                            <li><a href="#tabs-2">Cloud Computing</a></li>
                            <li><a href="#tabs-3">Mobile App. Development</a></li>
                            <li><a href="#tabs-4">Data Structures</a></li>
                            <li><a href="#tabs-5">Others</a></li>
                        </ul>
                        <div id="tabs-1">
                            <p> Develop applications using Java Programming Language. Learn how to create, optimize and debug programs in Java code.</p>
                            <h2>Learning Outcomes</h2>
                            <ul>
                                <li>Learn about elements and algorithmic approaches to solve problems</li>
                                <li>Understand the fundamentals to programming languages</li>
                                <li>Control structures</li>
                                <li>Basic input and output</li>
                                <li>Creating your own method</li>
                                <li>Implementing the program by creating a graphical user interface</li>
                            </ul>	
                            <strong>Price: 25$/hour.</strong>
                        </div>
                        <div id="tabs-2">
                            <p>Utilizing Amazon Warehouse Services in this course. Learn the basics of the cloud architecture. How to use AWS to run and maintain a company's functionality. Programming Language will be in Java Code.Problem solving using cloud resources.</p>
                            <h2>Learning Outcomes</h2>
                            <ul>
                                <li>Understand the cloud computing architecture</li>
                                <li>Storing and accessing data from the cloud</li>
                                <li>Creating programs to speed up the computation process</li>
                                <li>Creating virtual servers to run webpages and applications on the cloud platform</li>
                                <li>Creating alarms and security for the cloud platform</li>
                            </ul>
                            <strong>Price: 30$/hour.</strong>
                        </div>
                        <div id="tabs-3">
                            <p>Develop Android Application using Java Programming Language. Learn how to use android widgets to create a User Interface for an Android phone.</p>
                            <h2>Learning Outcomes</h2>
                            <ul>
                                <li>Learn about application development for mobile platforms</li>
                                <li>Graphical user interface design with Android Studios or Visual Studios</li>
                                <li>Interfaces for mobile audio/video, graphics and animations</li>
                                <li>Action event handlers when user touches the screen</li>
                            </ul>
                            <strong>Price: 30$/hour.</strong>
                        </div>
                        <div id="tabs-4">
                            <p>Learn how data is organized. Use of sorting and searching algorithms. How data is called by the computer. How memory is allocated.</p>
                            <h2>Learning Outcomes</h2>
                            <ul>
                                <li>Data storage using arrays</li>
                                <li>Organize data with binary search trees</li>
                                <li>Linear lists</li>
                                <li>Search and sorting algorithms</li>
                                <li>Memory allocation</li>
                            </ul>
                            <strong>Price: 25$/hour.</strong>
                        </div>
                        <div id="tabs-5">
                            <p>Please contact me if you need assistance in other courses that's not Computer Science related.</p>
                            <h2>I have experience from the following courses</h2>
                            <ul>
                                <li>Calculus I, II, and III</li>
                                <li>Linear Algebra</li>
                                <li>Probability and Statistics</li>
                                <li>Discrete Structures</li>
                                <li>Math Foundations for Computer Science</li>
                                <li>Digital System Design</li>
                            </ul>
                            <strong>Price: TBD</strong>
                        </div>
                    </div>
                    <p><strong>Don't wait until it's too late. Sign up now! You won't regret it.</strong></p>
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
