<?php

$curl = curl_init();

curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://www.omdbapi.com/?apikey=5826a867&t=batman',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
));

$response = curl_exec($curl);
$status_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

echo "Status code: " . $status_code;

echo "<br><br>";

echo $response; //string 

echo "<br><br>";

//Converter a string para um Objeto
$json = json_decode($response);

print_r($json);

echo "<br><br>";

//echo "Titulo através de um objeto: " . $json->Title;

echo "<br><br>";

//Converter o json para um Array
$array = json_decode(json_encode($json), true);

print_r($array);


echo "<br><br>";


echo "Titulo através de array: " . $array['Title'];

echo "<br><br>";

echo "<img src='" . $array['Poster'] . "'>";



echo "<br><br><br><br><br><br>";

if ($array['Response'] == "True") {
    // echo "O filme existe";
    echo 0;
} else {
    //echo "O filme não existe";
    echo 1;
}





/*
$filme = json_decode($response, true);
if ($filme['Response'] == 'True') {
    echo '<h1>' . $filme['Title'] . '</h1>';
    echo '<p>' . $filme['Plot'] . '</p>';
    echo '<h1>' . $filme['Title'] . '</h1>';
} else {
}
*/



//objeto 