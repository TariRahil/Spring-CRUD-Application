<%--
  Created by IntelliJ IDEA.
  User: tarrah
  Date: 8/14/22
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  <title>user list</title>
    <title>Create User</title>
</head>
<body>
br>
<h2 class="text-center">Spring CRUD Application</h2>

<div class="container">
    <div class="col-md-8 offset-md-2">
        <br>
        <h3>Create User</h3>
        <br>

        <div class="row">
            <form action="saveUser" method="POST">
                <div class="row mb-3">
                    <label class="col-sm-2 col-form-label">id</label>
                    <div class="col-sm-10">
                        <input type = "text" name = "userid"  class="form-control" readonly/>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-2 col-form-label">loginid</label>
                    <div class="col-sm-10">
                        <input type = "text" name = "loginid" class="form-control"/>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-2 col-form-label">name</label>
                    <div class="col-sm-10">
                        <input type = "text" name = "name" class="form-control"/>
                    </div>
                </div>
                <fieldset class="row mb-3">
                    <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">status: </legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="status" value="active">
                                <label class="form-check-label">
                                    active
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="status" value="inActive">
                                <label class="form-check-label">
                                    inActive
                                </label>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <c:if test="${msg != null}">
                    <div class="alert alert-primary">
                        ${msg}
                    </div>
                </c:if>

                <div class="form-group row">
                    <div class="col-sm-10">
                        <input type="submit" class="btn btn-primary" value="save"/>
                        <a class="btn btn-outline-primary" href="viewUsers">User List</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>






