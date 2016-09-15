<html>
	<head>
		<title>Archon Web</title>
	</head>
	<body>
		<h1><?php echo "ArchonWeb" ?></h1>

		<?php 
			$dbname = '##MYSQL_DATABASE##';
			$dbuser = '##MYSQL_USER##';
			$dbpass = '##MYSQL_PASSWORD##';
			$dbhost = '##MYSQL_HOST##';

			$connect = mysql_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");
			
			mysql_select_db($dbname) or die("Could not open the db '$dbname'");

			$test_query = "SHOW TABLES FROM $dbname";

			$result = mysql_query($test_query);

			$tblCnt = 0;

			while($tbl = mysql_fetch_array($result)) {
	  			$tblCnt++;
			}

			if (!$tblCnt) {
				echo "There are no tables<br />\n";
			} else {
				echo "There are $tblCnt tables<br />\n";
			}

		?>

	</body>
</html>
