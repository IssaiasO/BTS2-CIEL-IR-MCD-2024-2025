1. Identification des entités principales
Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?
L'élément central du jeu League of Legends est champion. 

2. Définition des attributs
Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
Pour représenter l'identifiant unique d'un champion par primery key.

Quels informations sont uniques à un champion ? Les informations non uniques seront alors des entités secondaires.
Les informations uniques à un champion est son Nom. 

3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
espece, région, genre, rôle, type de portée, Difficulté, Date de sortie
   

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
Son Nom.

5. Établissement des relations
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
Un Champion "possède" une ou plusieurs rôle.

Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
Pour exprimer les connexions entre les entités on utilsera des clés étrangères.

6. Détermination des cardinalités
Pour chaque relation que vous avez identifiée, réfléchissez :
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
un champion ne peut avoir qu'une seule instance.

Cette caractéristique peut-elle être partagée par plusieurs champions ?
Il est possible que plusieurs champions partagent la même valeur.

Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
(1,1) pour l'entité champion et (0,N) pour chaque entité secondaire.

