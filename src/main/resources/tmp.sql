DROP PROCEDURE AddCardTraits;


#DELETE FROM card_trait WHERE card_id = 1103;
SELECT * FROM card_trait INNER JOIN trait ON card_trait.trait_id = trait.id WHERE card_id = 1103;

#SELECT POSITION("." IN "Item.Weapon.Firearm");
#SUBSTRING("Item.Weapon.Firearm",1,4)