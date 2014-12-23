<%-- 
    Document   : viewMessage
    Created on : Dec 23, 2014, 5:07:42 PM
    Author     : Mohamed Kamal
--%>

<%@page import="ia.project.mmm.model.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String username = (String)session.getAttribute("username"); 
   Message message = (Message)request.getAttribute("message");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">back to home page</a>
        
        <div>
            <a href="doMessage?type=delete&id=${message.id}">delete</a>
            <a href="doMessage?type=archive&id=${message.id}">archive</a>
            <a href="doMessage?type=reply&id=${message.id}">reply</a>
            <a href="doMessage?type=forward&id=${message.id}">forward</a>
        </div>

        <p>
            Receivers:
            <c:forEach var="receiver" items="${message.receivers}">            
                    ${receiver.username},
            </c:forEach>
        </p>
        <p>
            Subject: ${message.subject}
        </p>
        
        <p>
            Body:<br>
            <%= message.getBody().replace("\n", "<br>") %>
        </p>
    </body>
</html>