<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu for SuperContest Updates</title>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


</head>
<body>
<?php
	//variable for database connection

	require "connections.php";
    require "backgroundskin.php";
?>
<div class="page-header">
  <h1>HELGA'S SUPER CONTEST  <small>Updates for Week <?php echo '$week'; ?></small></h1>
</div>

<div class="list-group">

<a class="list-group-item" href="scorefeed/updateScores.php">Update live scores in Database</a>
<a class="list-group-item" href="form/form.php">Enter New Picks</a>
<a class="list-group-item" href="scorefeed/Standings.php">View Current Overall Standings</a>
<a class="list-group-item" href="scorefeed/2ndChanceStandings.php">View Current 2nd Chance Pool Standings</a>
<a class="list-group-item" href="scorefeed/WeeklyPicks.php">View Everyone's Current Week's Picks</a>
<a class="list-group-item" href="scorefeed/consensus.php">Consensus Picks</a>
</div>


</body>
</html>
