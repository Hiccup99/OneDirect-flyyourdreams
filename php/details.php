<?php
	$flightid = $_GET['flightid'];
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
					<div class="col-md-6">
					<div class="v2-ho-se-ri">
						<form action="success.php" method="GET">
							<h4>Enter your Mobile Number to confirm booking !</h4><input type="number" name="mobnum" required="require"/>
							<input type="hidden" name="flightid" value="<?php echo $flightid; ?>" />
							<br></br><input type="submit" value="Confirm" class="waves-effect waves-light tourz-sear-btn v2-ser-btn" type="submit">
						</form>
					</div>
					</div>
				</div>
			</div>
	</div>
</body>