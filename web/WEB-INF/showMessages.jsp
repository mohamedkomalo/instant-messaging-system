<%-- 
    Document   : Inbox
    Created on : Dec 20, 2014, 9:53:21 AM
    Author     : Mohamed Kamal
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ia.project.mmm.model.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String username = (String) session.getAttribute("username");

    String title = (String) request.getAttribute("title");
    Message[] messages = (Message[]) request.getAttribute("messages");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>BigM</title>

        <!-- Bootstrap core CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="clear"></div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">BigM</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp?view=inbox">Inbox</a></li>
                        <li><a href="index.jsp?view=drafts">Drafts</a></li>
                        <li><a href="index.jsp?view=trash">Trash</a></li>
                        <li><a href="index.jsp?view=sent">Sent</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="profile.jsp">${username}</a></li>
                        <li><a href="logout">Logout</a></li>
                    </ul>
                </div><!-- /.nav-collapse -->
            </div><!-- /.container -->
        </nav><!-- /.navbar -->

        <div class="container-fluid">
            <div class="col-md-8 col-md-offset-2">
                <h1 class="page-header">${title}</h1>

                <div>
                    <form action="index.jsp" method="GET">
                        <input hidden name="view" value="${title}" />
                        filter:<br>
                        from: <input name="filter.from" value="${param['filter.from']}" /><br>
                        to: <input name="filter.to" value="${param['filter.to']}" /><br>
                        subject: <input name="filter.subject" value="${param['filter.subject']}" /><br>
                        between this date: <input type="date" name="filter.startDate" value="${param['filter.startDate']}" /><br>
                        and this date: <input type="date" name="filter.endDate" value="${param['filter.endDate']}" /><br>
                        <button type="submit">filter</button>

                        <br><br>
                    </form>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>From</th>
                                <th>To</th>
                                <th>Subject</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="komalo" items="${messages}">
                                <tr>
                                    <td>
                                        <a href="viewMessage?id=${komalo.id}">
                                        ${komalo.sender.username}
                                        </a>
                                    </td>
                                    <td>
                                        <a href="viewMessage?id=${komalo.id}">
                                        <c:forEach var="rec" items="${komalo.receivers}">            
                                            ${rec.username},
                                        </c:forEach>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="viewMessage?id=${komalo.id}">${komalo.subject}</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
    </body>
</html>
