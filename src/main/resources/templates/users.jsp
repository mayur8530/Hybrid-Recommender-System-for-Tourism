<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
            font-family: 'Arial', sans-serif;
        }
        .user-table {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease;
        }
        .user-table:hover {
            transform: scale(1.01);
        }
        th {
            background: #0061ff;
            color: white;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background: #f8f9fa;
        }
        tr:hover {
            background: #e3f2fd;
        }
        .btn-custom {
            background: #0061ff;
            color: white;
            transition: all 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background: #4facfe;
            color: white;
        }
        .search-box {
            position: relative;
            margin-bottom: 20px;
        }
        .search-box input {
            width: 100%;
            padding: 10px 40px;
            border: 1px solid #ccc;
            border-radius: 25px;
            transition: border-color 0.3s;
        }
        .search-box input:focus {
            border-color: #0061ff;
            outline: none;
        }
        .search-box .fa-search {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            color: #0061ff;
        }
        .navbar {
            background-color: #007bff;
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
            transition: all 0.3s ease;
        }

        .navbar:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 12px rgba(0, 91, 187, 0.3);
        }

        .navbar .nav-link {
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .navbar .nav-link:hover {
            color: #f8f9fa;
            transform: scale(1.1);
        }

        .navbar .nav-link.active {
            color: #ffdd57;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
<div class="container mt-5">
    <h1 class="text-center mb-4">User List</h1>
    <div class="search-box">
        <i class="fas fa-search"></i>
        <input type="text" id="searchInput" placeholder="Search users...">
    </div>
    <div class="table-responsive">
        <table class="table table-hover user-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody id="userTable">
                <!-- Iterate over users -->
                <tr th:each="user : ${users}">
                    <td th:text="${user.id}"></td>
                    <td th:text="${user.name}"></td>
                    <td th:text="${user.age}"></td>
                    <td th:text="${user.gender}"></td>
                    <td th:text="${user.phone}"></td>
                    <td th:text="${user.email}"></td>
                    <td th:text="${user.role}"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="text-center mt-4">
        <a href="/register" class="btn btn-custom"><i class="fas fa-user-plus"></i> Add New User</a>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
    // JavaScript for search functionality
    document.getElementById('searchInput').addEventListener('input', function () {
        const filter = this.value.toLowerCase();
        const rows = document.querySelectorAll('#userTable tr');

        rows.forEach(row => {
            const text = row.textContent.toLowerCase();
            row.style.display = text.includes(filter) ? '' : 'none';
        });
    });
</script>
</body>
</html>
