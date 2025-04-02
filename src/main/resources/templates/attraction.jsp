<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Attraction Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: linear-gradient(to bottom right, #f8f9fa, #e9ecef);
            font-family: 'Arial', sans-serif;
            color: #343a40;
        }

        .container {
            margin-top: 20px;
            padding: 30px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        h2 {
            color: #343a40;
            font-weight: bold;
            text-align: center;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .navbar {
            background: linear-gradient(to right, #007bff, #0056b3);
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.3);
            transition: all 0.3s ease;
        }

        .navbar:hover {
            box-shadow: 0 6px 12px rgba(0, 91, 187, 0.4);
        }

        .navbar .nav-link {
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .navbar .nav-link:hover {
            color: #ffdd57;
            transform: scale(1.1);
        }

        .navbar .nav-link.active {
            color: #ffdd57;
            text-decoration: underline;
        }

        .form-label {
            font-weight: bold;
            color: #495057;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.25);
        }

        .btn-main {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-main:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 91, 187, 0.3);
        }

        .star-rating {
            display: flex;
            gap: 5px;
            font-size: 24px;
            color: #d3d3d3;
            cursor: pointer;
            justify-content: center;
        }

        .star-rating .star {
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .star-rating .star:hover,
        .star-rating .star.selected {
            color: #ffc107;
            transform: scale(1.2);
        }

        .text-center {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" th:href="@{/admin/users}">Users</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="form-container">
            <h2 class="form-header">Attraction Details</h2>
            <form th:action="@{/attraction}" method="post" class="needs-validation" novalidate>
                <!-- Name -->
                <div class="mb-3">
                    <label for="name" class="form-label"><i class="fas fa-landmark"></i> Attraction Name</label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="Enter attraction name" required>
                    <div class="invalid-feedback">Please provide a valid name.</div>
                </div>

                <!-- Type -->
                <div class="mb-3">
                    <label for="type" class="form-label"><i class="fas fa-tags"></i> Type</label>
                    <input type="text" id="type" name="type" class="form-control" placeholder="e.g., Museum, Park" required>
                    <div class="invalid-feedback">Please provide a valid type.</div>
                </div>

                <!-- City -->
                <div class="mb-3">
                    <label for="city" class="form-label"><i class="fas fa-city"></i> City</label>
                    <input type="text" id="city" name="city" class="form-control" placeholder="Enter city name" required>
                    <div class="invalid-feedback">Please provide a valid city.</div>
                </div>

                <!-- Opening Hours -->
                <div class="mb-3">
                    <label for="openingHours" class="form-label"><i class="fas fa-clock"></i> Opening Hours</label>
                    <input type="time" id="openingHours" name="openingHours" class="form-control" required>
                    <div class="invalid-feedback">Please provide the opening hours.</div>
                </div>

                <!-- Closing Hours -->
                <div class="mb-3">
                    <label for="closingHours" class="form-label"><i class="fas fa-clock"></i> Closing Hours</label>
                    <input type="time" id="closingHours" name="closingHours" class="form-control" required>
                    <div class="invalid-feedback">Please provide the closing hours.</div>
                </div>

                <!-- Travel Time -->
                <div class="mb-3">
                    <label for="travelTime" class="form-label"><i class="fas fa-route"></i> Travel Time (minutes)</label>
                    <input type="number" id="travelTime" name="travelTime" class="form-control" placeholder="Enter estimated travel time" required>
                    <div class="invalid-feedback">Please provide the travel time.</div>
                </div>

                <!-- Weather Condition -->
                <div class="mb-3">
                    <label for="weatherCondition" class="form-label"><i class="fas fa-cloud-sun"></i> Weather Condition</label>
                    <input type="text" id="weatherCondition" name="weatherCondition" class="form-control" placeholder="e.g., Sunny, Rainy" required>
                    <div class="invalid-feedback">Please provide a valid weather condition.</div>
                </div>

                <!-- Star Rating -->
                <div class="mb-3">
                    <label class="form-label"><i class="fas fa-star"></i> User Rating</label>
                    <div class="star-rating" id="starRating">
                        <i class="fas fa-star star" data-value="1"></i>
                        <i class="fas fa-star star" data-value="2"></i>
                        <i class="fas fa-star star" data-value="3"></i>
                        <i class="fas fa-star star" data-value="4"></i>
                        <i class="fas fa-star star" data-value="5"></i>
                    </div>
                    <input type="hidden" id="userRating" name="userRating" required>
                    <div class="invalid-feedback">Please select a rating.</div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-main"><i class="fas fa-save"></i> Save Attraction</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const stars = document.querySelectorAll(".star-rating .star");
            const userRatingInput = document.getElementById("userRating");

            stars.forEach(star => {
                star.addEventListener("click", () => {
                    // Remove 'selected' class from all stars
                    stars.forEach(s => s.classList.remove("selected"));

                    // Add 'selected' class to clicked star and previous stars
                    star.classList.add("selected");
                    let previousSiblings = Array.from(star.parentElement.children);
                    previousSiblings = previousSiblings.slice(0, previousSiblings.indexOf(star));
                    previousSiblings.forEach(s => s.classList.add("selected"));

                    // Update hidden input value
                    userRatingInput.value = star.dataset.value;
                });
            });
        });
    </script>
</body>
</html>
