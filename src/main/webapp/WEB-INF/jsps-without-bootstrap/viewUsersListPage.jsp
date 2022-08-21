<%--
  Created by IntelliJ IDEA.
  User: tarrah
  Date: 8/19/22
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<html>
<head>
    <title>user list</title>
</head>
<body>
<h2>Spring CRUD Application</h2>

<h3>Create User</h3>

<table>
  <tr>
    <th>
      <td>userId</td>
      <td>loginId</td>
      <td>name</td>
      <td>status</td>
    </th>
  </tr>
  <tbody>
    <c:forEach items="${users}" var="user">
      <tr>
        <td>${user.id}</td>
        <td>${user.loginid}</td>
        <td>${user.name}</td>
        <td>${user.status}</td>
        <td><a href="editUser?id=${user.id}">Edit</a></td>
        <td><a href="deleteUser?id=${user.id}">Delete</a></td>
      </tr>
    </c:forEach>
  </tbody>
</table>
<a href="createUser">Create User</a>
</body>
</html>
