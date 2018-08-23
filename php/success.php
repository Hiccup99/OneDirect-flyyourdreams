<?php


	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "flightinfo";


    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 


	$flightid = $_GET['flightid'];
	$mobnum = $_GET['mobnum'];
	
	
	

	$sql = "INSERT INTO bookings (flightid, mobile) VALUES ('$flightid', '$mobnum');";

	$result = $conn->query($sql);
	?>
	<head>
		<title>Search Results</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="images/fav.ico">
    <link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/bootstrap.css">
	</head>
	<body>
		<div class="v2-hom-search">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					<div class="v2-ho-se-ri">
						<h4><center>Flight Booking Successful</center></h4>
						<center><a href="flight.html"><br></br><input type="submit" value="GO BACK TO HOME PAGE" class="waves-effect waves-light tourz-sear-btn v2-ser-btn" type="submit"></a><center>
					</div>						
					</div>
				</div>
			</div>
		</div>
	</body>

