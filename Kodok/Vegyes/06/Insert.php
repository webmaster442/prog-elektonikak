<html>
	<head>
		<title>Soros port adatgyüjtő</title>
	</head>
	<body>
		<pre>
		<?php
			//hibakeresés on
			ini_set('display_errors', 'On');
			error_reporting(E_ALL);
			//10 mp script timeout
			set_time_limit(10);
			//program futtatása az aktuális mappában
		    exec(getcwd()."/getter.py", $output);
			$analogs = explode(" ", $output[0]);
			
			//mysql server kapcsolat
			$conn = new mysqli("localhost", "root", "MargitCica1");
			
			// Check connection
			if ($conn->connect_error)
				die("Kapcsolati hiba: " . $conn->connect_error);
			
			if (!$conn->select_db("Adatgyujto"))
				die("Adatbázis választási hiba");


			//SQL injection megelőzése
			$a0 = $conn->real_escape_string($analogs[0]);
			$a1 = $conn->real_escape_string($analogs[1]);
			
			$sql = "INSERT INTO `Arduino-adatok` (`id`, `date`, `analog1`, `analog2`) VALUES (NULL, CURRENT_TIMESTAMP, '$a0', '$a1');";
				
			if ($conn->query($sql) === TRUE)
				echo "Adat tárolva";
			else
				die("Error: " . $sql . "\n" . $conn->error);
			
			
			$conn->close();
		?>
		</pre>
	</body>
</html>
