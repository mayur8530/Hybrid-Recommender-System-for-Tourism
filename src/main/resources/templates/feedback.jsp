<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Visit Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(120deg, #89f7fe, #66a6ff);
            font-family: 'Arial', sans-serif;
        }

        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 50px auto;
            transition: transform 0.3s ease;
        }

        .form-container:hover {
            transform: scale(1.05);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-weight: bold;
        }

        .form-group label {
            font-weight: bold;
            color: #555;
        }

        .form-control {
            border-radius: 25px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #66a6ff;
            box-shadow: 0 0 8px rgba(102, 166, 255, 0.5);
        }

        .btn-primary {
            background: linear-gradient(45deg, #89f7fe, #66a6ff);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 16px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-primary:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .form-icon {
            margin-right: 10px;
            color: #66a6ff;
        }

        .form-group {
            position: relative;
        }

        .form-group i {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #66a6ff;
        }

        .form-control-icon {
            padding-left: 35px;
        }

        .rating-input {
            width: 100%;
            display: flex;
            justify-content: flex-start;
        }

        .rating-input input[type="radio"] {
            display: none;
        }

        .rating-input label {
            font-size: 30px;
            color: #ddd;
            cursor: pointer;
            transition: color 0.3s;
        }

        .rating-input input[type="radio"]:checked ~ label {
            color: #FFD700;
        }

        .rating-input label:hover,
        .rating-input label:hover ~ label {
            color: #FFD700;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Visit Details Form</h2>
        <form th:action="@{/saveVisit}" th:method="post">
            <div class="form-group mb-3">
                <label for="city"><i class="fas fa-city form-icon"></i> City</label>
                <input type="text" id="city" name="city" class="form-control form-control-icon" placeholder="Enter city" required>
            </div>

            <div class="form-group mb-3">
                <label for="visitDay"><i class="fas fa-calendar-day form-icon"></i> Visit Day</label>
                <input type="date" id="visitDay" name="visitDay" class="form-control form-control-icon" required>
            </div>

            <div class="form-group mb-3">
                <label for="attraction"><i class="fas fa-map-marker-alt form-icon"></i> Attraction</label>
                <input type="text" id="attraction" name="attraction" class="form-control form-control-icon" placeholder="Enter attraction" required>
            </div>

            <div class="form-group mb-3">
                <label for="entryTime"><i class="fas fa-clock form-icon"></i> Entry Time</label>
                <input type="time" id="entryTime" name="entryTime" class="form-control form-control-icon" required>
            </div>

            <div class="form-group mb-3">
                <label for="weather"><i class="fas fa-cloud-sun form-icon"></i> Weather</label>
                <input type="text" id="weather" name="weather" class="form-control form-control-icon" placeholder="Enter weather condition" required>
            </div>

            <div class="form-group mb-3">
                <label for="travelTime"><i class="fas fa-route form-icon"></i> Travel Time</label>
                <input type="text" id="travelTime" name="travelTime" class="form-control form-control-icon" placeholder="Enter travel time" required>
            </div>

            <div class="form-group mb-3">
                <label for="rating"><i class="fas fa-star form-icon"></i> Rating</label>
                <div class="rating-input">
                    <input type="radio" id="rating1" name="rating" value="1">
                    <label for="rating1">&#9733;</label>
                    <input type="radio" id="rating2" name="rating" value="2">
                    <label for="rating2">&#9733;</label>
                    <input type="radio" id="rating3" name="rating" value="3">
                    <label for="rating3">&#9733;</label>
                    <input type="radio" id="rating4" name="rating" value="4">
                    <label for="rating4">&#9733;</label>
                    <input type="radio" id="rating5" name="rating" value="5">
                    <label for="rating5">&#9733;</label>
                </div>
            </div>

            <!-- <div class="form-group mb-3">
                <label for="user"><i class="fas fa-user form-icon"></i> User</label>
                <select id="user" name="user" class="form-control form-control-icon" required>
                    <option th:each="user : ${users}" th:value="${user.id}" th:text="${user.name}"></option>
                </select>
            </div> -->

            <div class="text-center">
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-paper-plane"></i> Submit
                </button>
            </div>
        </form>
    </div>

    <script>
        document.querySelector('form').addEventListener('submit', function(event) {
            // Convert the rating to an integer before submission
            const rating = document.querySelector('input[name="rating"]:checked');
            if (rating) {
                // Optional: Convert the selected rating to an integer
                rating.value = parseInt(rating.value);
            }
        });
    </script>
</body>
</html>
