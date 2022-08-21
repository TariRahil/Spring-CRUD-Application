<%--
  Created by IntelliJ IDEA.
  User: tarrah
  Date: 8/14/22
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<h2>Spring CRUD Application</h2>

<h3>Update User</h3>

<pre>
<form action="updateUser" method="GET">

userid : <input type = "text" name = "id" value="${user.id}" readonly/>
loginId : <input type = "text" name = "loginid" value="${user.loginid}"/>
name : <input type = "text" name = "name" value="${user.name}"/>
status :Active <input type = "radio" name = "status" ${user.status == 'Active' ? 'checked' : ''} value = "Active"/>
        inActive <input type = "radio" name = "status" ${user.status == 'inActive' ? 'checked' : ''} value = "inActive"/>


<input type="submit" value="update">

</form>
</pre>
${msg}
<a href="viewUsers">User List</a>

</body>
</html>
