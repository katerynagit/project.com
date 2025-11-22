<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Wynik</title>
    <link rel="stylesheet" href="zadanie3.css">
</head>
<body>

<div class="result-box">
<h2>Wypełnione dane:</h2>
<?php if (isset($_POST['name'])) { ?>
    <p><b>Imię:</b> <?= htmlspecialchars($_POST['name']) ?></p>
<?php } ?>

<?php if (isset($_POST['surname'])) { ?>
    <p><b>Nazwisko:</b> <?= htmlspecialchars($_POST['surname']) ?></p>
<?php } ?>

<?php if (isset($_POST['birthdate'])) { ?>
    <p><b>Data urodzenia:</b> <?= htmlspecialchars($_POST['birthdate']) ?></p>
<?php } ?>

<?php if (isset($_POST['password'])) { ?>
    <p><b>Hasło:</b> <?= htmlspecialchars($_POST['password']) ?></p>
<?php } ?>

<?php if (isset($_POST['adress'])) { ?>
    <p><b>Adres zamieszkania:</b> <?= htmlspecialchars($_POST['adress']) ?></p>
<?php } ?>

<?php if (isset($_POST['city'])) { ?>
    <p><b>Miasto:</b> <?= htmlspecialchars($_POST['city']) ?></p>
<?php } ?>

<?php if (isset($_POST['voivodeship'])) { ?>
    <p><b>Województwo:</b> <?= htmlspecialchars($_POST['voivodeship']) ?></p>
<?php } ?>

<?php if (isset($_POST['email'])) { ?>
    <p><b>Email:</b> <?= htmlspecialchars($_POST['email']) ?></p>
<?php } ?>

<?php if (isset($_POST['numberphone'])) { ?>
    <p><b>Numer telefonu:</b> <?= htmlspecialchars($_POST['numberphone']) ?></p>
<?php } ?>

<?php if (isset($_POST['license'])) { ?>
    <p><b>Prawo jazdy:</b> <?= htmlspecialchars($_POST['license']) ?></p>
<?php } ?>

<?php if (isset($_POST['sex'])) { ?>
    <p><b>Płeć:</b> <?= htmlspecialchars($_POST['sex']) ?></p>
<?php } ?>

<?php if (isset($_POST['uwagi'])) { ?>
    <p><b>Uwagi:</b> <?= nl2br(htmlspecialchars($_POST['uwagi'])) ?></p>
<?php } ?>

<br>
<a href="zadanie6.html">Powrót do formularza</a>
</div>
</body>
</html>

<?php
} else {
    echo "Brak danych — wróć do formularza.";
}
?>
