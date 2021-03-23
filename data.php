<?php
	
	$conn = mysqli_connect("localhost","root","","home");
	$result = mysqli_query($conn, "Select * from emergency");

	$data = array();
	while($row = mysqli_fetch_assoc($result))
	{
		$data[] = $row;
	}

	echo json_encode($data);

?>