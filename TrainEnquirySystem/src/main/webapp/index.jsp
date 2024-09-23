<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train Inquiry System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1e1f29; /* Dark background */
            color: #e0e0e0; /* Light text color */
        }

        /* Header Styling */
        .navbar {
            background-color: #2d2f3a; /* Darker gray for header */
        }

        .navbar-brand {
            color: #f1c40f; /* Yellow color for brand */
            font-size: 24px;
            font-weight: bold;
        }

        .navbar-nav .nav-link {
            color: #e0e0e0; /* Light gray for links */
            font-size: 18px;
        }

        .navbar-nav .nav-link:hover {
            color: #f1c40f; /* Yellow on hover */
        }

        /* Form Container */
        .form-container {
            margin-top: 40px;
            padding: 30px;
            background-color: #2d2f3a; /* Dark form background */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .form-container h3 {
            color: #f1c40f; /* Yellow heading */
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Input Styling */
        .form-control, .form-select {
            background-color: #2d2f3a;
            color: #e0e0e0;
            border: 1px solid #3b3d4c;
        }

        .form-control::placeholder, .form-select::placeholder {
            color: #e0e0e0; /* Make placeholder text white */
        }

        .form-control:focus, .form-select:focus {
            background-color: #333645;
            color: #ffffff;
            border-color: #f1c40f; /* Yellow border on focus */
        }

        /* Button Styling */
        .btn-search {
            background-color: #f1c40f;
            color: #2d2f3a;
            font-size: 18px;
            padding: 10px;
            width: 100%;
            border: none;
        }

        .btn-search:hover {
            background-color: #d4ac0d; /* Darker yellow on hover */
            color: #1e1f29; /* Slightly darker background */
        }

        /* Footer Styling */
        footer {
            background-color: #2d2f3a;
            color: #e0e0e0;
            padding: 20px 0;
            text-align: center;
        }

        footer a {
            color: #f1c40f;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Header with Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Train Inquiry</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Search Trains</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">PNR Status</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Schedule</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content Section -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-container">
                    <h3 class="text-center">Search Trains</h3>
                    <form>
                        <!-- From and To Stations -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="fromStation" class="form-label">From Station</label>
                                <input type="text" class="form-control" id="fromStation" placeholder="Enter starting station" required>
                            </div>
                            <div class="col-md-6">
                                <label for="toStation" class="form-label">To Station</label>
                                <input type="text" class="form-control" id="toStation" placeholder="Enter destination station" required>
                            </div>
                        </div>

                        <!-- Date of Journey -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="departureDate" class="form-label">Date of Journey</label>
                                <input type="date" class="form-control" id="departureDate" required>
                            </div>

                            <!-- Class Selection -->
                            <div class="col-md-6">
                                <label for="trainClass" class="form-label">Class</label>
                                <select class="form-select" id="trainClass" required>
                                    <option value="">Select Class</option>
                                    <option value="sleeper">Sleeper (SL)</option>
                                    <option value="ac1">AC First Class (1A)</option>
                                    <option value="ac2">AC 2-Tier (2A)</option>
                                    <option value="ac3">AC 3-Tier (3A)</option>
                                    <option value="chair">Chair Car (CC)</option>
                                </select>
                            </div>
                        </div>

                        <!-- Quota -->
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label for="quota" class="form-label">Quota</label>
                                <select class="form-select" id="quota" required>
                                    <option value="">Select Quota</option>
                                    <option value="general">General</option>
                                    <option value="tatkal">Tatkal</option>
                                    <option value="senior">Senior Citizen</option>
                                    <option value="ladies">Ladies</option>
                                </select>
                            </div>
                        </div>

                        <!-- Search Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-search">Search Trains</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 Train Inquiry System | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
