<?php
	// $apiKey =  env("KEY");
	// //Server url
	$url = "http://localhost/christopher/signup";
	$headers = array(
	     'Authorization: '.$apiKey
	);
	// Send request to Server
	$ch = curl_init($url);
	// To save response in a variable from server, set headers;
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	// Get response
	$response = curl_exec($ch);
	// Decode
	$result = json_decode($response);
?>