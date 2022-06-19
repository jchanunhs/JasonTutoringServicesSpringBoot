<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <jsp:include page="header.jsp"/>
    <body>
        <div id="wrapper">
            <header>Jason's Tutoring Services</header>
            <div id ="content-wrapper">
                <jsp:include page="adminnav.jsp"/>
                <main> 
                    <h1 align ="center">Admin Panel</h1>
                    <form name="TicketForm" action="/getTicket" method ="post">
                        <label for="id">TicketID: </label>
                        <input type="text" name="id" id="id"><br>
                        <input type="button" value="Login" onClick="checkInputs()">
                    </form>
                    <table>
                        <tr>
                            <th>Ticket ID</th>
                            <th>Name</th>
                            <th>Enrolled</th>
                            <th>Course Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Question</th>
                            <th>Delete Ticket</th>
                        </tr>
                        <c:forEach items="${ticket_list}" var="ticket">
                            <tr>
                                <td>${ticket.id}</td>
                                <td>${ticket.name}</td>
                                <td>${ticket.enroll}</td>
                                <td>${ticket.courseName}</td>
                                <td>${ticket.phone}</td>
                                <td>${ticket.email}</td>
                                <td>${ticket.question}</td>
                                <td><a href = "/deleteTicket?id=${ticket.id}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </table>
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
                id = document.TicketForm.id.value;
                if (id == "") {
                    window.alert("Pleae enter a Ticket ID");
                } else {
                    document.TicketForm.submit();
                }
            }
        </script>
        <script>
            var d = new Date();
            document.getElementById("date").innerHTML = d;
        </script>
    </body> 
</html>
