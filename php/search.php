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


	$source1 = $_GET['source'];
	$dest1 = $_GET['dest'];
	$date = $_GET['date'];
	$xdate = strtotime($date);
	$xdate = date("Y-m-d",$xdate);
	$noOfPassengers = $_GET['noOfPassengers'];
	
	$source = strtoupper($source1);
	$dest = strtoupper($dest1);
	
	$sql = "SELECT * FROM flight WHERE leaving = '$source' and going = '$dest' and depart_date = '$xdate';";

	$result = $conn->query($sql);
	//echo $xdate;
	
	//if($result->num_rows > 0){
	//	foreach ($result as $res) {
	//		echo $res['name'];
	//		echo '<img style="height: 100px; width:100px;" src="'. $res['image'] .'" />';
	//	}
	//}else{
	//	echo 'no result';
	//}
?>


<html>
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
						<center><h4>SOURCE: <?php echo $source; ?></h4>
						<h4>DESTINATION: <?php echo $dest; ?></h4></center>
					</div>						
					</div>
				</div>
			</div>
		</div>
		
		<table class="striped">
			<tr>
				<td></td>
				<td>Flight Name</td>
				<td>Departure Time</td>
				<td>Arrival Time</td>
				<td>Duration</td>
				<td>Price</td>
				<td></td>
			</tr>
			<?php
					if ($result->num_rows >0) {
						foreach($result as $res){
						echo '<tr>';
							echo '<td>';
								echo '<img style="height: 80px; width:150px;" src="'. $res['image'] .'" />';
							echo '</td>';
							echo '<td>';
								echo $res['name'];
							echo '</td>';
							echo '<td>';
								echo $res['dept_time'];
							echo '</td>';
							echo '<td>';
								echo $res['arr_time'];
							echo '</td>';
							echo '<td>';
								echo $res['duration'];
							echo '</td>';
							echo '<td>';
								echo $res['fare'];
							echo '</td>';
							echo '<td>';
								?>
								<form id="my_form" action="details.php" method="GET">
										<input type="hidden" value="<?php echo $res['id']; ?>" name="flightid" />
										<input value="Book" class="waves-effect waves-light tourz-sear-btn v2-ser-btn" type="submit">
									</form
								<?php
							echo '</td>';
						echo '</tr>';
				}
				 } 
				else 
				{
					?> 
					<h2>No Flights</h2>
					<?php
				}?>
		</table>
		<center><br><br><a href="flight.html"><input id="submit" value="Look for another flight" class="waves-effect waves-light tourz-sear-btn v2-ser-btn" type="submit"></br></br></center>
		<script>

	</script>
	</body>
</html>

