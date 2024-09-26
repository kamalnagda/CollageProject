<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	            <a href="#">Add Station</a>
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
            <h3>Delete Train</h3>
            <div>
                <span>Admin Actions</span>
                <!-- You can add more header elements like notifications or profile dropdown here -->
            </div>
        </div>

        <!-- Content Section -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <form action="Searchtraincontroller" method="Post">
                            <div class="mb-3 col-6">
                                <label for="trainNumber" class="form-label">Train Number</label>
								<input type="text" class="form-control" id="trainNumber" name="trainNumber" placeholder="Enter train number" required>
								<input type="hidden" name="source" value="deletetrain">
                            </div>
                            <div class="col-6">
                            	<button type="submit" class="btn btn-primary">Search Train</button>
                            </div>
                        </form>
                </div>
                <div class="row">
                	<div class="col-12">
                	        <c:if test="${not empty message}">
							    <p class="p-5 text-center">${message}</p>
							</c:if>
                		<c:if test="${not empty train}">
                			<h3 class="text-center">Insert New Data For Train</h3>
					        <form action="updatetraincontroller" method="POST">
					        	<div class="mb-3">
							        <label for="trainId" class="form-label">Train Id</label>
							        <input type="text" class="form-control" id="trainId" name="trainId" value="${train.trainId}" readonly >
							    </div>
							    <div class="mb-3">
							        <label for="trainName" class="form-label">Train Name</label>
							        <input type="text" class="form-control" id="trainName" name="trainName" value="${train.trainName}">
							    </div>
							    <div class="mb-3">
							        <label for="trainNumber" class="form-label">Train Number</label>
							        <input type="text" class="form-control" id="trainNumber" name="trainNumber" value="${train.trainNumber}">
							    </div>
							    <div class="mb-3">
							        <label for="fromStation" class="form-label">From Station</label>
							        <input type="text" class="form-control" id="fromStation" name="fromStation" value="${train.fromStation}">
							    </div>
							    <div class="mb-3">
							        <label for="toStation" class="form-label">To Station</label>
							        <input type="text" class="form-control" id="toStation" name="toStation" value="${train.toStation}">
							    </div>
							    <div class="mb-3">
							        <label for="departureTime" class="form-label">Departure Time</label>
							        <input type="time" class="form-control" id="departureTime" name="departureTime" value="${train.departureTime}">
							    </div>
							    <div class="mb-3">
							        <label for="arrivalTime" class="form-label">Arrival Time</label>
							        <input type="time" class="form-control" id="arrivalTime" name="arrivalTime" value="${train.arrivalTime}">
							    </div>
							    <button type="submit" class="btn btn-primary">Update Train</button>
							</form>
					    </c:if>
						<c:if test="${empty train}">
						    <p class="p-5 text-center">No train details found.</p>
						</c:if>
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
