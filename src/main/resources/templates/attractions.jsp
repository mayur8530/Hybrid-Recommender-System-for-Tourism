<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Attractions</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(120deg, #f6d365, #fda085);
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            background: #fff;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #444;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .search-box input {
            border: 2px solid #fda085;
            border-radius: 25px;
            padding: 10px 20px;
            transition: all 0.3s ease;
        }

        .search-box input:focus {
            outline: none;
            border-color: #f6d365;
            box-shadow: 0 0 10px rgba(246, 211, 101, 0.5);
        }

        .table {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .table th {
            background: #f6d365;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background: #fdf2e9;
        }

        .table-striped tbody tr:hover {
            background: rgba(253, 160, 133, 0.2);
            transition: background 0.3s ease;
        }

        .table td {
            vertical-align: middle;
        }

        /* Add hover effects */
        .table tbody tr td {
            transition: transform 0.3s ease;
        }

        .table tbody tr:hover td {
            transform: scale(1.02);
        }

        /* Search Box Icons */
        .search-box {
            position: relative;
        }

        .search-box i {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #fda085;
        }

        .search-box input {
            padding-left: 35px;
        }

        .no-attractions {
            text-align: center;
            font-size: 18px;
            color: #888;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">
            Attractions in <span th:text="${city}"></span>
            <i class="fas fa-map-marker-alt"></i>
        </h2>

        <!-- Search Box -->
        <div class="search-box mb-4">
            <i class="fas fa-search"></i>
            <input type="text" id="searchInput" class="form-control" placeholder="Search for attractions...">
        </div>

        <div th:if="${attractions.isEmpty()}" class="no-attractions">
            <p>No attractions found for this city.</p>
        </div>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>City</th>
                    <th>Opening Hours</th>
                    <th>Closing Hours</th>
                    <th>Travel Time</th>
                    <th>User Rating</th>
                    <th>Weather Condition</th>
                </tr>
            </thead>
            <tbody id="attractionsTableBody">
                <tr th:each="attraction : ${attractions}">
                    <td th:text="${attraction.id}"></td>
                    <td th:text="${attraction.name}"></td>
                    <td th:text="${attraction.type}"></td>
                    <td th:text="${attraction.city}"></td>
                    <td th:text="${attraction.openingHours}"></td>
                    <td th:text="${attraction.closingHours}"></td>
                    <td th:text="${attraction.travelTime}"></td>
                    <td th:text="${attraction.userRating}"></td>
                    <td th:text="${attraction.weatherCondition}"></td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
        // Search functionality
        document.getElementById("searchInput").addEventListener("input", function() {
            let searchQuery = this.value.toLowerCase();
            let tableRows = document.querySelectorAll("#attractionsTableBody tr");

            tableRows.forEach(function(row) {
                let columns = row.querySelectorAll("td");
                let rowText = "";

                // Concatenate all the cell values of the row into a string
                columns.forEach(function(cell) {
                    rowText += cell.textContent.toLowerCase() + " ";
                });

                // If the search query is found in the row, display it, else hide it
                if (rowText.includes(searchQuery)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>
