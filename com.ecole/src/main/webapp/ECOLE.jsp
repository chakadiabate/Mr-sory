<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
    <style>
			    
			    body{
			    min-width: none; /*pour une largeur minimale de la page*/
			    background: rgb(90, 153, 90);/*pour la couleur de fond de la page*/
			    display: flex;/*pour centrer le contenu*/
			    justify-content: center;/*pour centrer le contenu*/
			    align-items: center;/*pour rien*/
			    min-height: 100vh;/*pour une longueur minimale de la page */
			}
			:root{
			    --variable-couleur1: #fff;/*Une variable qui va me permettre de changer juste par ici */
			}
			:root{
			    --variable-couleur2: #000;/*Une variable qui va me permettre de changer juste par ici */
			}
			#page{
			    background-color:var(--variable-couleur1);/*pour la couleur de ma page*/
			    width: 100%;/*pour la largeur du page*/
			    max-width: 500px;/*pour la largeur minimale de ma page*/
			    max-height: 800px;/*pour la longueur minimale de ma page*/
			    display: grid;/*pour le partage  de ma page*/
			}
			h1, h3{
			    text-align: center;/*Pour centrer le text*/
			    font-weight: bold;/*pour mettre en gras*/
			}
			header{
			    width: 100%;/*largeur de ma header (entête)*/
			    background-color:var(--variable-couleur2);
			    color:var(--variable-couleur1);
			}
			
			#gauche{
			    float: left;/* Pour flotter cette à gauche*/
			}
			img {
			    width: 150px;/*largeur de l'image*/
			    height: 150px;//*longueur*/
			    padding-left: 50px;/*marge interne à gauche*/
			    }
			#droite{
			    float: right;/* Pour flotter cette à droite*/
			    background: #fd23fd;/*couleur de fond */
			    padding-right: 100px;/*marge interne à droite*/
			    padding-top: 20px;/*marge interne en haut*/
			}
			#formulaire{
			    display: grid;
			    width: 70%;/*utiliser pour la largeur de la formulaire*/
				margin: 0 auto;/*pour la marge externe*/
				padding: 10px;/*pour la marge interne*/
			}
			#formulaire button{
			    margin-left: 0px;
			    width: 30%;
			}
			footer{
			    margin-top: 10px;
			    padding-top: 10px;
			    width: 100%;/*largeur de ma header (entête)*/
			    background-color:var(--variable-couleur2);
			    color:var(--variable-couleur1);
			}
			#pied-droite{
			    float: left;
			    margin-left: 40px;
			}
			#pied-gauche{
			    float: right;
			    margin-right: 40px;
			}
			    
    
    </style>
</head>

<body>
    <div id="page">
        <h1>Demande de la carte scolaire</h1>
        <header>
            <div id="gauche">
                <img src="logo.png" alt="image" id="img">
            </div>
            <div id="droite">

                <h4>Nom de l'école</h4>
                <h4>Académie de rive droite</h4>
                <h4>Description de l'école</h4>

            </div>
        </header>
        <main>
            <form action="ECOLE" method="post">
                <div id="formulaire">
                    <h3>veuillez remplir les champs ci-dessous</h3>

                   Id: <input type="number" name="id" id="id" required="required"><br><br>
                   Nom: <input type="text" name="nom" id="nom" required="required"><br><br>
                   Prenom: <input type="text" name="prenom" id="prenom" required="required"><br><br>
                   Date: <input type="date" name="date" id="date" placeholder="JJ/MM/AA" required="required"><br><br>
                   Sexe:
                    <select id="sexe" name="sexe">
                        <option>Masculin</option>
                        <option>Féminin</option>
                    </select><br><br>
                   Classe: <input type="number" name="classe" id="classe" placeholder="1 à 9" required="required"><br><br>
                    Photo:<input type="file" name="photo" accept="image/jpeg, image/gif, image/png" required="required" width="10px"><br><br>
                    <input type="submit" value="Envoyer">
                    
                </div>
                
            </form>
            <c:forEach var="eleve" items="${ECOLE}">
		        <li>
		            ${ECOLE.nom} ${ECOLE.prenom} - ${ECOLE.date} - ${ECOLE.classe} - ${ECOLE.sexe} - ${ECOLE.photo}
		        </li>
	    	</c:forEach>

        </main>
        <footer>
            <div id="pied-droite">
                <p>Daoudabougou</p>
                <p>+223 00 00 00 00 </p>
                <p>www.ecole.com</p>
            </div>
            <div id="pied-gauche">
                <p>Bla bla bla bla bla</p>
                <p>Bla bla bla bla bla</p>
                <p>Bla bla bla bla bla</p>
            </div>
        </footer>
    </div>
</body>
</html>