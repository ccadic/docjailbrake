<?php

// Dr CADIC Philippe
// DocJailbreak

// Configuration de la connexion à la base de données
require_once 'config.php';

// Connexion à la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Vérification que la catégorie a été sélectionnée
//if(isset($_GET['category'])){
if(isset($_GET['category']) && is_numeric($_GET['category'])){


    $category_id = $_GET['category'];

    // Requête SQL préparée pour récupérer les services correspondant à la catégorie sélectionnée
    $sql = "SELECT id, short_description FROM services WHERE category = ? AND active = 1";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $category_id);
    $stmt->execute();
    $result = $stmt->get_result();

    // Vérification de la réussite de la requête
    if ($result->num_rows > 0) {

        // Création du formulaire HTML
        echo "<label for='services'>Choisir un soin :</label>";
        echo "<select class='form-select' name='services' id='services'>";
        echo "<option value=''>--Choisir un service--</option>";

        // Affichage de chaque service correspondant à la catégorie sélectionnée
        while($row = $result->fetch_assoc()) {
            echo "<option value='" . $row["id"] . "'>" . $row["short_description"] . "</option>";
        }

        echo "</select>";

    } else {
        echo "Aucun service n'est disponible pour cette catégorie.";
    }

} else {
    echo "Veuillez sélectionner une catégorie.";
}

// Ajout du bouton Valider
//echo "<button type='submit'>Valider</button>"; 

// echo "<br><button type='submit' class='btn btn-primary rounded-pill'>Valider</button>";

// Fermeture de la connexion à la base de données
$conn->close();

?>
