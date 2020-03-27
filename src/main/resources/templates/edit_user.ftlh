<!Doctype html>
<html>
<head>
    <title>Spring Boot JPA Tutorial</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        .container{
            margin-top: 10px;
            max-width: 750px;
        }
    </style>
</head>
<body>
<div class="container">
    <h5>Edit User Info</h5>
    <form action="/updateUser" method="post">
        First Name:<br/>
        <input type="text" class="form-control" name="firstName" value="${user.firstName}"/>
        <br/>
        Last Name:<br/>
        <input type="text" class="form-control" name="lastName" value="${user.lastName}"/>
        <br/>
        Phone:<br/>
        <input type="text" class="form-control" name="phone" value="${user.phone}"/>
        <br/>
        Email:<br/>
        <input type="text" class="form-control" name="email" value="${user.email}"/>
        <br/>
        <input type="hidden" name="id" value="${user.id}"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>