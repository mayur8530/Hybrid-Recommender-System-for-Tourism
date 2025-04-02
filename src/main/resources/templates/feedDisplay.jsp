<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Visit Details</title>
    <!-- Add Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Custom CSS */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #ffffff, #e8f4f8);
            color: #333;
        }
        .table-container {
            margin: 50px auto;
            width: 90%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #009688;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.3s ease;
        }
        .icon {
            color: #009688;
            margin-right: 5px;
        }
        .search-container {
            margin-bottom: 20px;
        }
        .search-container input {
            width: 100%;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container table-container">
        <h2 class="text-center my-4">Visit Details</h2>
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search for visits..." class="form-control">
        </div>
        <table class="table table-striped" id="visitTable">
            <thead>
                <tr>
                    <th>#</th>
                    <th><i class="fas fa-city icon"></i>City</th>
                    <th><i class="fas fa-calendar-alt icon"></i>Visit Day</th>
                    <th><i class="fas fa-landmark icon"></i>Attraction</th>
                    <th><i class="fas fa-clock icon"></i>Entry Time</th>
                    <th><i class="fas fa-cloud-sun icon"></i>Weather</th>
                    <th><i class="fas fa-car icon"></i>Travel Time</th>
                    <th><i class="fas fa-star icon"></i>Rating</th>
                    <th><i class="fas fa-user icon"></i>Name</th>
                </tr>
            </thead>
            <tbody>
                <tr th:each="visit, stat : ${visitList}">
                    <td th:text="${stat.index + 1}"></td>
                    <td th:text="${visit.city}"></td>
                    <td th:text="${visit.visitDay}"></td>
                    <td th:text="${visit.attraction}"></td>
                    <td th:text="${visit.entryTime}"></td>
                    <td th:text="${visit.weather}"></td>
                    <td th:text="${visit.travelTime}"></td>
                    <td th:text="${visit.rating}"></td>
                    <td th:text="${visit.name}"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script>
        // JavaScript for search functionality
        document.getElementById('searchInput').addEventListener('input', function () {
            const filter = this.value.toLowerCase();
            const rows = document.querySelectorAll('#visitTable tbody tr');

            rows.forEach(row => {
                const text = row.textContent.toLowerCase();
                row.style.display = text.includes(filter) ? '' : 'none';
            });
        });
    </script>
</body>
</html>
