<%--
  Created by IntelliJ IDEA.
  User: yiwen
  Date: 2023/9/7
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<header>
    <nav class="navbar navbar-expand-md nav-dark" style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand">
                Todo APP
            </a>
        </div>

        <ul class="navbar-nav navbar-collapse justify-content-end">
            <li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
            <li><a href="<%= request.getContextPath() %>/register" class="nav-link">Signup</a></li>
        </ul>
    </nav>
</header>

