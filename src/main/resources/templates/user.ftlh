<!Doctype html>
<html>
<head>
    <title>JPA MySQL CRUD Example</title>
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
    <h4>Spring Boot JPA Tutorial</h4><br/>
    <h5>User List</h5>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.phone}</td>
                <td>${user.email}</td>
                <td>
                    <a href="/editUserForm?id=${user.id}" class="btn btn-success btn-sm" role="button">Update</a>
                    <a href="/deleteUser?id=${user.id}" class="btn btn-danger btn-sm" role="button">Delete</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>

    <h5>Add New User</h5>
    <form action="/insertUser" method="post">
        First Name:<br/>
        <input type="text" class="form-control" name="firstName"/>
        <br/>
        Last Name:<br/>
        <input type="text" class="form-control" name="lastName"/>
        <br/>
        Phone:<br/>
        <input type="text" class="form-control" name="Phone"/>
        <br/>
        Email:<br/>
        <input type="text" class="form-control" name="email"/>
        <br/>
        <button type="submit" class="btn btn-dark">Submit</button>
    </form>
</div>

</body>
</html>