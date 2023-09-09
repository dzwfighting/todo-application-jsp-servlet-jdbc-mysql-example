<%@ page import="net.javaguides.todoapp.model.Todo" %><%--
  Created by IntelliJ IDEA.
  User: yiwen
  Date: 2023/9/7
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="nav-bar-brand">Todo App</a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Todos</a></li>
        </ul>
        <ul class="navbar-nav navbar-collapse justify-content-end">
            <li><a href="<%=request.getContextPath()%>/logout" class="nav-link">Logout</a></li>
        </ul>
    </nav>
</header>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <%
                Todo todo = (Todo) request.getAttribute("todo");
                if (todo != null) {
            %>
                <form action="update" method="post">
            <% }%>

            <% if (todo == null) { %>
                <form action="insert" method="post">
            <% } %>

            <caption>
                <h2>
                    <% if (todo != null) { %>
                        Edit Todo
                    <% } %>
                    <% if (todo == null) { %>
                        Add New Todo
                    <% } %>
                </h2>
            </caption>
                    <% if (todo != null) { %>
                <input type="hidden" name="id" value="${todo.id}" />
                    <% } %>

            <fieldset class="form-group">
                <label>Todo Title</label> <input type="text"
                                                 value="${todo.title}" class="form-control"
                                                 name="title" required="required" minlength="5">
            </fieldset>

            <fieldset class="form-group">
                <label>Todo Description</label> <input type="text"
                                                      value="${todo.description}" class="form-control"
                                                      name="description" minlength="5">
            </fieldset>

            <fieldset class="form-group">
                <label>Todo Status</label> <select class="form-control"
                                                   name="isDone">
                <option value="false">In Progress</option>
                <option value="true">Complete</option>
            </select>
            </fieldset>

            <fieldset class="form-group">
                <label>Todo Target Date</label> <input type="date"
                                                       value="${todo.targetDate}" class="form-control"
                                                       name="targetDate" required="required">
            </fieldset>

            <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
