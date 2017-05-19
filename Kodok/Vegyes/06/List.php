<html>
	<head>
		<title>Soros port adatgyüjtő</title>
	</head>
	<body>
		<table border="1">
		<?php
			//hibakeresés on
			ini_set('display_errors', 'On');
			error_reporting(E_ALL);
			//10 mp script timeout
			set_time_limit(10);
			
			//mysql server kapcsolat
			$conn = new mysqli("localhost", "root", "MargitCica1");
			
			// Check connection
			if ($conn->connect_error)
				die("Kapcsolati hiba: " . $conn->connect_error);
			
			if (!$conn->select_db("Adatgyujto"))
				die("Adatbázis választási hiba");
				
			$sql = "SELECT * FROM `Arduino-adatok`";
			
			$result = $conn->query($sql);
			
			if ($result->num_rows > 0)
			{
				// output data of each row
				while($row = $result->fetch_assoc())
				{
					echo("<tr>\n");
					echo("<td>".$row["id"]."</td><td>".$row["date"]."</td><td>".$row["analog1"]."</td><td>".$row["analog2"]."</td>\n");
					echo("</tr>");
					
				}
			}
			else
			{
				echo "Nincs még adat";
			}
			$conn->close();
		?>
		</table>
	</body>
</html>
