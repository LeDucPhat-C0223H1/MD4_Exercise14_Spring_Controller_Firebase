<%--
  Created by IntelliJ IDEA.
  User: BenLaptop
  Date: 11/14/2023
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container py-5">
  <h1 class="text-center">Sign Up</h1>

  <form class="row g-3" style="max-width: 30rem; margin: 0 auto" action="<%=request.getContextPath()%>/AuthController" method="post">
    <%-- username --%>
    <div class="col-md-6">
      <label for="username" class="form-label">Username: </label>
      <input type="text" class="form-control" name="username" id="username">
    </div>
    <%-- password --%>
    <div class="col-md-6">
      <label for="password" class="form-label">Password: </label>
      <input type="password" class="form-control" name="password" id="password">
    </div>
    <%-- fullname --%>
    <div class="col-12">
      <label for="fullname" class="form-label">Fullname: </label>
      <input type="text" class="form-control" name="fullname" id="fullname">
    </div>
    <%-- phone --%>
    <div class="col-12">
      <label for="phone" class="form-label">Phone: </label>
      <input type="number" class="form-control" name="phone" id="phone">
    </div>
    <%-- birthday --%>
    <div class="col-12">
      <label for="birthday" class="form-label">Birthday: </label>
      <input type="date" class="form-control" name="birthday" id="birthday">
    </div>
    <div class="col-12 text-center">
      <input type="submit" class="btn btn-primary" value="REGISTER" name="action">
    </div>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>