<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Train Inquiry System</title>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Tom Select CSS -->
	<link href="https://cdn.jsdelivr.net/npm/tom-select/dist/css/tom-select.css" rel="stylesheet"/>
	
	<!-- Tom Select JS -->
	<script src="https://cdn.jsdelivr.net/npm/tom-select/dist/js/tom-select.complete.min.js"></script>
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #1e1f29; /* Dark background */
            color: #e0e0e0; /* Light text color */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Sidebar Styling */
        .sidebar {
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #2d2f3a; /* Darker sidebar */
            color: #e0e0e0;
            width: 240px;
            padding-top: 60px;
            overflow-y: auto;
        }
        .sidebar-divider {
		    border-top: 1px solid ; 
		}
        

        .sidebar h4 {
            text-align: center;
            color: #f1c40f; /* Yellow text */
            margin-bottom: 30px;
            font-weight: bold;
        }

        .sidebar a {
            color: #e0e0e0; /* Light gray text */
            padding: 15px 20px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s, color 0.3s;
        }

        .sidebar a:hover {
            background-color: #f1c40f; /* Yellow background on hover */
            color: #2d2f3a; /* Dark text on hover */
        }

        /* Sub-menu Styling */
        .sub-menu a {
            padding-left: 40px;
            background-color: #343a40;
        }

        .sub-menu a:hover {
            background-color: #ffc107; /* Bootstrap warning color */
            color: #1e1f29;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 240px; /* Sidebar width */
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        /* Header Styling */
        .header {
            background-color: #343a40; /* Dark header */
            color: #f1c40f; /* Yellow text */
            padding: 15px 20px;
            position: fixed;
            top: 0;
            left: 240px; /* Sidebar width */
            width: calc(100% - 240px);
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .header h3 {
            margin: 0;
        }

        /* Content Section */
        .content {
            margin-top: 70px; /* Header height */
            padding: 20px;
            background-color: #1e1f29;
            flex: 1;
            overflow-y: auto;
        }

        /* Footer Styling */
        .footer {
            background-color: #343a40; /* Dark footer */
            color: #f1c40f; /* Yellow text */
            padding: 10px 20px;
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 240px; /* Sidebar width */
            width: calc(100% - 240px);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .main-content {
                margin-left: 0;
            }
            .header {
                left: 0;
                width: 100%;
            }
            .footer {
                left: 0;
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
	<div class="sidebar">
	    <h4>Admin Panel</h4>
	    <a href="#">Dashboard</a>
	    
	    <!-- Divider -->
	    <hr class="sidebar-divider">
	
	    <!-- Train Management with Collapsible Sub-menu -->
	    <a href="#trainSubMenu" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Train</a>
	    <div class="collapse" id="trainSubMenu">
	        <div class="sub-menu">
	            <a href="addtrain">Add Train</a>
	            <a href="#">Update Train</a>
	            <a href="#">Delete Train</a>
	            <a href="#">View Trains</a>
	        </div>
	    </div>
	
	    <!-- Divider -->
	    <hr class="sidebar-divider">
	
	    <!-- Station with Collapsible Sub-menu -->
	    <a href="#stationSubMenu" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Station</a>
	    <div class="collapse" id="stationSubMenu">
	        <div class="sub-menu">
	            <a href="addStation">Add Station</a>
	            <a href="#">Update Station</a>
	            <a href="#">Delete Station</a>
	            <a href="#">View Stations</a>
	        </div>
	    </div>
	
	    <!-- Divider -->
	    <hr class="sidebar-divider">
	
	    <!-- Demo 2 with Collapsible Sub-menu -->
	    <a href="#demo2SubMenu" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Demo 2</a>
	    <div class="collapse" id="demo2SubMenu">
	        <div class="sub-menu">
	            <a href="#">Demo 2 Item 1</a>
	            <a href="#">Demo 2 Item 2</a>
	            <a href="#">Demo 2 Item 3</a>
	        </div>
	    </div>
	
	    <!-- Divider -->
	    <hr class="sidebar-divider">
	
	    <!-- Demo 3 with Collapsible Sub-menu -->
	    <a href="#demo3SubMenu" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Demo 3</a>
	    <div class="collapse" id="demo3SubMenu">
	        <div class="sub-menu">
	            <a href="#">Demo 3 Item 1</a>
	            <a href="#">Demo 3 Item 2</a>
	            <a href="#">Demo 3 Item 3</a>
	        </div>
	    </div>
	
	    <!-- Divider -->
	    <hr class="sidebar-divider">
	
	    <a href="#">User Management</a>
	        <!-- Divider -->
	    <hr class="sidebar-divider">
	    <a href="#">Reports</a>
	        <!-- Divider -->
	    <hr class="sidebar-divider">
	    <a href="#">Settings</a>
	        <!-- Divider -->
	    <hr class="sidebar-divider">
	    <a href="#">Logout</a>
	</div>


    <div class="main-content">

        <!-- Header -->
        <div class="header">
            <h3>Add New Station</h3>
            <div>
                <span>Admin Actions</span>
                <!-- You can add more header elements like notifications or profile dropdown here -->
            </div>
        </div>

        <!-- Content Section -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <form action="addstation" method="post">
                            <div class="mb-3">
                                <label for="stationName" class="form-label">Station Name</label>
                                <input type="text" name="stationName" class="form-control" id="stationName" placeholder="Enter station name" required>
                            </div>
                            <div class="mb-3">
                                <label for="stationCode" class="form-label">Station Code</label>
                                <input type="text" name="stationCode" class="form-control" id="stationCode" placeholder="Enter station code" required>
                            </div>
                             <div class="mb-3">
                                <label for="location" class="form-label">Location</label>
                                <input type="text" name="location" class="form-control" id="location" placeholder="Enter location" required>
                            </div>
                             <div class="mb-3">
                                <label for="state" class="form-label">State</label>
                                <input type="text" name="state" class="form-control" id="state" placeholder="Enter State" required>
                            </div>
                            
                            
                            <button type="submit" class="btn btn-primary">Add Station</button>
                        </form>
                    </div>
                </div>
                <!-- More content can be added here -->
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            &copy; 2024 Train Inquiry System. All Rights Reserved.
        </div>

    </div>
<script>
    new TomSelect("#fromStation",{
        create: false,
        sortField: {
            field: "text",
            direction: "asc"
        }
    });
    new TomSelect("#toStation",{
        create: false,
        sortField: {
            field: "text",
            direction: "asc"
        }
    });
</script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
