<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

    <form role="form" enctype="multipart/form-data" class="form-horizontal" action="/addProduct" method="post">
        <div class="form-group"><h3>New product</h3></div>
        <div class="form-group"><input type="text" class="form-control" name="article" placeholder="Article"></div>
        <div class="form-group"><input type="text" class="form-control" name="name" placeholder="Name"></div>
        <div class="form-group"><input type="text" class="form-control" name="fullName" placeholder="Full name"></div>
        <div class="form-group"><input type="text" class="form-control" name="comment" placeholder="Comment"></div>
        <div class="form-group">Photo: <input type="file" name="photo"></div>

        <div class="form-group"><input type="submit" class="btn btn-primary" value="Add product"></div>
    </form>
</div>
</body>
</html>