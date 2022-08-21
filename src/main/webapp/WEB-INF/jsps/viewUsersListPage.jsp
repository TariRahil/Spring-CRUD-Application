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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  <title>user list</title>
</head>
<body>

<br>
<h2 class="text-center">Spring CRUD Application</h2>

<div class="container">
  <br>
  <h3>User List</h3>
  <br>
  <div class="row">
    <table class="table table-hover"  >
      <thead class="table-dark">
        <tr>
          <th>userId</th>
          <th>loginId</th>
          <th>name</th>
          <th>status</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
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
  </div>
  <a class="btn btn-outline-primary" href="createUser">Create User</a>
</div>

</body>
</html>
