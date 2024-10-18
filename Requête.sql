/* ex1
CREATE TABLE "champion" (
    "champion_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,  
    "name" VARCHAR(50) NOT NULL,                               
    "title" VARCHAR(50) NULL,                                  
    "lore" TEXT NULL,                                          
    "gender_id" INTEGER NULL,                                  
    "resource_id" INTEGER NULL,                                
    "year_id" INTEGER NULL,                                    
    "created_at" DATETIME NULL,                                
    "updated_at" DATETIME NULL,                                
    CONSTRAINT "fk_year" FOREIGN KEY ("year_id") REFERENCES "years" ("year_id") ON DELETE SET NULL,
    CONSTRAINT "fk_resource" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id") ON DELETE SET NULL,
    CONSTRAINT "fk_gender" FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id") ON DELETE SET NULL
);


CREATE UNIQUE INDEX "champion_name_unique" ON "champion" ("name");
*/

/* ex2
ALTER TABLE champions 				-- Modifie la table champions
ADD COLUMN popularity INT;			-- Ajoute une nouvelle colonne appelée popularity de type entier (INT)
*/


/* ex3
INSERT INTO champions (name, title, lore, gender_id, resource_id, year_id, popularity) -- Insère un nouveau champion dans la table champions
VALUES (
    'Fiddlesticks',
    'The Ancient Fear',
    'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',
    3,
    1,
    1,
    5
);

INSERT INTO champion_specie (champion_id, specie_id) VALUES (11, 9);  -- Associe le champion Fiddlesticks à sa spécie dans la table champion_specie
INSERT INTO champion_region (champion_id, region_id) VALUES (11, 14);
INSERT INTO champion_range  (champion_id, range_id) VALUES (11, 2);
INSERT INTO champion_position (champion_id, position_id) VALUES (11, 2);
*/

/* ex4
SELECT *					-- Sélectionne toutes les colonnes de la table champions
FROM champions       
ORDER BY name ASC;   -- Trie les résultats par nom en ordre croissant
*/

/* ex5
SELECT *
FROM champions
WHERE name LIKE '%ar%';
*/

/* ex6
UPDATE champions
SET popularity = ABS(RANDOM() % 10) + 1;
*/

/* ex7
DELETE FROM champions
WHERE name = 'Zac';
*/

/* ex8
SELECT c.name AS champion_name, GROUP_CONCAT(p.name) AS positions
FROM champions c
JOIN champion_position cp ON c.champion_id = cp.champion_id
JOIN positions p ON cp.position_id = p.position_id
GROUP BY c.champion_id;
*/

/* ex9
SELECT r.name AS resource_name, COUNT(c.champion_id) AS champion_count
FROM resources r
LEFT JOIN champions c ON r.resource_id = c.resource_id
GROUP BY r.resource_id;
*/

/* ex10
SELECT c.name AS champion_Name, (r.name) AS Region
FROM champions c
JOIN champion_region cr ON c.champion_id = cr.champion_id
JOIN regions r ON cr.region_id = r.region_id
WHERE r.name = 'Ionia';
*/














