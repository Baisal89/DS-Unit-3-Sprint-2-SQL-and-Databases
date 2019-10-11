-- SQLite
/*How many total Characters are there?
How many of each specific subclass?
How many total Items?
How many of the Items are weapons? How many are not?
How many Items does each character have? (Return first 20 rows)
How many Weapons does each character have? (Return first 20 rows)
On average, how many Items does each Character have?
On average, how many Weapons does each character have?*/

SELECT count(*) from charactercreator_character;
SELECT count(*) from charactercreator_cleric;
SELECT count(*) from charactercreator_fighter;
SELECT count(*) from charactercreator_mage;
SELECT count(*) from charactercreator_necromancer;
SELECT count(*) from charactercreator_thief;
SELECT count(*) from charactercreator_character_inventory;
SELECT count(item_ptr_id), count(charactercreator_character_inventory.item_id) - count(item_ptr_id) 
    from charactercreator_character_inventory  
        JOIN armory_item
        ON armory_item.item_id = charactercreator_character_inventory.item_id
        JOIN armory_weapon
        ON charactercreator_character_inventory.item_id = item_ptr_id 


    