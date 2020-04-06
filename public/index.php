<?php
require_once __DIR__ . "/../vendor/autoload.php";

$date = new \DateTime;
$date->setDate(1979,6,13);
$today = new \DateTime;

$age = new \App\Age($date, $today);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CI/CD k8s</title>
</head>
<body>
    <h1>Hello CI/CD with Docker, Kubernets and GCP!</h1>
    <h1>Thiago Luna</h1>
    Minha idade é : <?php echo $age->calculate();?> anos.
</body>
</html>