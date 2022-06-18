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
                    <h1 align ="center">Different Types of Fields in Computer Science</h1>
                    <table>
                        <tr>
                            <th>Job Title</th>
                            <th>Job Description</th>
                            <th>Median Annual Salary</th>
                            <th>Projected Growth</th>
                        </tr>
                        <tr>
                            <td>Software Applications Developer</td>
                            <td><ul>
                                    <li>Software applications developers analyze user's needs and design and develop software to meet those needs.</li>
                                    <li>They must collaborate with other company stakeholders in order to design and enhance the program or application.</li>
                                    <li>They also typically oversee the work of computer programmers, technologists and technicians to ensure projects are running smoothly.</li>
                                </ul></td>
                            <td>$98,260</td>
                            <td>14 Percent</td>
                        </tr>
                        <tr>
                            <td>Computer Support Specialist</td>
                            <td><ul>
                                    <li>Computer Support Specialists, sometimes called tech support or IT specialists, are tasked with answering questions from users about computer equipment or software.</li>
                                    <li>It's their job to identify and solve software or hardware application problems in-person or via phone or email.</li>
                                    <li>They may also set up equipment, install programs and carry out minor repairs to hardware.</li>
                                </ul></td>
                            <td>$48,620</td>
                            <td>12 Percent</td>
                        </tr>
                        <tr>
                            <td>Computer Systems Analyst</td>
                            <td><ul>
                                    <li>Computer Systems Analysts are responsible for merging business and IT initiatives.</li>
                                    <li>They analyze data processing problems to improve computer systems, enhance system compatibility and develop procedures and quality standards.</li>
                                    <li>They must also consult with business leaders to determine the role of the IT system.</li>
                                </ul></td>
                            <td>$85,800</td>
                            <td>14 Percent</td>
                        </tr>
                        <tr>
                            <td>Web Developers</td>
                            <td><ul>
                                    <li>Web Developers design, build and maintain websites for clients and companies.</li>
                                    <li>They write or design website content and perform site updates and other maintenance.</li>
                                    <li>They must work closely with the client or internal team to prioritize needs, develop content and identify solutions.</li>
                                </ul></td>
                            <td>$64,970</td>
                            <td>14 Percent</td>
                        </tr>
                        <tr>
                            <td>Network Systems Administrators</td>
                            <td><ul>
                                    <li>Network Systems Administrators are responsible for keeping an organization's computer network up to date and running smoothly.</li>
                                    <li>They maintain and administer computer networks, hardware and software.</li>
                                    <li>They also perform data backups or recovery and troubleshoot issues when needed.</li>
                                </ul></td>
                            <td>$77,810</td>
                            <td>7 Percent</td>
                        </tr>
                        <tr>
                            <td>Computer Systems Engineers</td>
                            <td><ul>
                                    <li>Computer Systems Engineers are tasked with creating solutions to complex applications problems, system administration issues or network concerns.</li>
                                    <li>They must connect and communicate with clients about system needs and collaborate with software developers to identify appropriate design solutions.</li>
                                    <li>They also provide advice on project costs, design concepts or design changes.</li>
                                </ul></td>
                            <td>$85,240</td>
                            <td>3 Percent</td>
                        </tr>
                        <tr>
                            <td>Database Administrators</td>
                            <td><ul>
                                    <li>Database Administrators work as part of a project team to coordinate database development.</li>
                                    <li>They are responsible for writing and coding logical or physical database descriptions, specifying user access levels for each segment of database.</li>
                                    <li>They must also test programs and databases, correct errors and make necessary modifications.</li>
                                </ul></td>
                            <td>$81,710</td>
                            <td>11 Percent</td>
                        </tr>
                        <tr>
                            <td>Software Quality Assurance Engineers</td>
                            <td><ul>
                                    <li>Software QA Engineers document software defects, track bugs and report defects to software developers.</li>
                                    <li>They develop testing programs that address software scenarios, participate in product design reviews and provide input on program functions.</li>
                                </ul> </td>
                            <td>$85,240</td>
                            <td>3 Percent</td>
                        </tr>
                    </table>
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
