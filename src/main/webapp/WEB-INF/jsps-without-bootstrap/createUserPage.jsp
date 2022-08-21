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
    <title>Create User</title>
</head>
<body>
<h2>Spring CRUD Application</h2>

<h3>Create User</h3>

<pre>
<form action="saveUser" method="GET">

userid : <input type = "text" name = "userid" readonly/>
loginId : <input type = "text" name = "loginId"/>
name : <input type = "text" name = "name"/>
status : active <input type = "radio" name = "status" value = "Active"/>
        inActive <input type = "radio" name = "status" value = "inActive"/>

<input type="submit" value="save">

</form>
</pre>
${msg}
<a href="viewUsers">User List</a>

</body>
</html>
