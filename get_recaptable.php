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

// Vérification que le service a été sélectionné
if(isset($_GET['service']) && is_numeric($_GET['service'])){

    $service_id = $_GET['service'];

    // Préparation de la requête SQL
    $stmt = $conn->prepare("SELECT id, short_description, description, price, duration FROM services WHERE id = ? AND active = 1");
    $stmt->bind_param("i", $service_id);

    // Exécution de la requête
    $stmt->execute();

    // Récupération des résultats
    $result = $stmt->get_result();

    // Vérification de la réussite de la requête
    if ($result->num_rows > 0) {

        // Création du formulaire HTML

        // Affichage de chaque service correspondant à la catégorie sélectionnée
        while($row = $result->fetch_assoc()) {
           // echo "id= " . $row["id"] . " -  Short: " . $row["short_description"] . " - Description: " . $row["description"] . " - Price: " . $row["price"] . " - Duration: ". $row["duration"] . " min.";
           echo "<div class='table-responsive'>
           <table class='table table-bordered table-striped text-center'>
             <thead>
               <tr>
                 <th>Id</th>
                 <th>Prestation</th>
                 <th>Détail</th>
                 <th>Prix</th>
                 <th>Durée de la séance</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td>" . $row["id"] . "</td>
                 <td>" . $row["short_description"] . "</td>
                 <td>" . $row["description"] . "</td>
                 <td>" . $row["price"] . " EUR</td>
                 <td>" . $row["duration"] . " min</td>
               </tr>
             </tbody>
           </table>
         </div>";
        }

    } else {
        echo "Aucune description n'est disponible pour ce service.";
    }

} else {
    echo "Veuillez sélectionner un service.";
}

// Fermeture de la connexion à la base de données
$stmt->close();
$conn->close();

?>
