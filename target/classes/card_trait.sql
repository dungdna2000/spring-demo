/*
DROP PROCEDURE AddCardTrait1;
DROP PROCEDURE AddCardTrait2;
DROP PROCEDURE AddCardTrait3;

DELIMITER //
CREATE PROCEDURE AddCardTrait1(IN _card_id integer, IN _trait_name VARCHAR(128)) 
BEGIN
	DECLARE t_id INTEGER;
	SELECT id INTO t_id FROM trait WHERE trait.trait_name = _trait_name; 
    INSERT INTO card_trait(card_id, trait_id) VALUES (_card_id, t_id);
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddCardTrait2(IN _card_id integer, IN _trait_name1 VARCHAR(128), IN _trait_name2 VARCHAR(128)) 
BEGIN
	CALL AddCardTrait1(_card_id, _trait_name1);
	CALL AddCardTrait1(_card_id, _trait_name2);
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddCardTrait3(IN _card_id integer, IN _trait_name1 VARCHAR(128), IN _trait_name2 VARCHAR(128), IN _trait_name3 VARCHAR(128)) 
BEGIN
	CALL AddCardTrait1(_card_id, _trait_name1);
	CALL AddCardTrait1(_card_id, _trait_name2);
	CALL AddCardTrait1(_card_id, _trait_name3);    
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddCardTrait4(IN _card_id integer, 
IN _trait_name1 VARCHAR(128), IN _trait_name2 VARCHAR(128), IN _trait_name3 VARCHAR(128), IN _trait_name4 VARCHAR(128)) 
BEGIN
	CALL AddCardTrait1(_card_id, _trait_name1);
	CALL AddCardTrait1(_card_id, _trait_name2);
	CALL AddCardTrait1(_card_id, _trait_name3);
    CALL AddCardTrait1(_card_id, _trait_name4);
END//
DELIMITER ;
*/

TRUNCATE card_trait;
CALL AddCardTrait3(1016,"Item","Firearm","Weapon");
CALL AddCardTrait1(1017,"Talent");
CALL AddCardTrait2(1018,"Ally","Police");
CALL AddCardTrait2(1019,"Talent","Science");
CALL AddCardTrait3(1020,"Item","Weapon","Melee");
CALL AddCardTrait2(1021,"Ally","Creature");
CALL AddCardTrait1(1022,"Insight");
CALL AddCardTrait1(1023,"Tactic");
CALL AddCardTrait1(1024,"Tactic");
CALL AddCardTrait1(1025,"Practiced");
CALL AddCardTrait1(1026,"Supply");
CALL AddCardTrait1(1027,"Item");
CALL AddCardTrait2(1028,"Ally","Police");
CALL AddCardTrait3(1029,"Item","Weapon","Firearm");

#SEEKER
CALL AddCardTrait2(1030,"Item","Tool");
CALL AddCardTrait2(1031,"Item","Tome");
CALL AddCardTrait2(1032,"Ally","Miskatonic");
CALL AddCardTrait2(1033,"Ally","Miskatonic");
CALL AddCardTrait1(1034,"Talent");
CALL AddCardTrait2(1035,"Item","Tome");
CALL AddCardTrait1(1036,"Insight");
CALL AddCardTrait1(1037,"Insight");
CALL AddCardTrait2(1038,"Insight","Tactic");
CALL AddCardTrait1(1039,"Practiced");
CALL AddCardTrait2(1040,"Item","Tool");
CALL AddCardTrait2(1041,"Item","Relic");
CALL AddCardTrait2(1042,"Item","Tome");
CALL AddCardTrait1(1043,"Insight");

#ROGUE
CALL AddCardTrait4(1044,"Item","Weapon","Melee","Illicit");
CALL AddCardTrait2(1045,"Talent","Illicit");
CALL AddCardTrait2(1046,"Talent","Illicit");
CALL AddCardTrait4(1047,"Item","Weapon","Melee","Illicit");
CALL AddCardTrait2(1048,"Ally","Criminal");
CALL AddCardTrait1(1049,"Talent");
CALL AddCardTrait1(1050,"Tactic");
CALL AddCardTrait1(1051,"Tactic");
CALL AddCardTrait1(1053,"Innate");
CALL AddCardTrait2(1054,"Ally","Criminal");
CALL AddCardTrait2(1055,"Ally","Criminal");
CALL AddCardTrait2(1056,"Fortune","Insight");
CALL AddCardTrait1(1057,"Fortune");


#MYSTIC
CALL AddCardTrait1(1058,"Talent");
CALL AddCardTrait2(1059,"Item","Charm");
CALL AddCardTrait1(1060,"Spell");
CALL AddCardTrait1(1061,"Spell");
CALL AddCardTrait1(1062,"Talent");
CALL AddCardTrait2(1063,"Ally","Sorcerer");
CALL AddCardTrait1(1064,"Insight");
CALL AddCardTrait2(1065,"Spell","Spirit");
CALL AddCardTrait1(1066,"Spell");
CALL AddCardTrait1(1067,"Innate");
CALL AddCardTrait1(1068,"Spell");
CALL AddCardTrait1(1069,"Spell");
CALL AddCardTrait2(1070,"Item","Tome");
CALL AddCardTrait2(1071,"Item","Relic");

#SURVIVOR
CALL AddCardTrait2(1072,"Item","Armor");
CALL AddCardTrait1(1073,"Talent");
CALL AddCardTrait3(1074,"Item","Weapon","Melee");
CALL AddCardTrait2(1075,"Item","Charm");
CALL AddCardTrait2(1076,"Ally","Creature");
CALL AddCardTrait1(1077,"Talent");
CALL AddCardTrait1(1078,"Tactic");
CALL AddCardTrait1(1079,"Fortune");
CALL AddCardTrait1(1080,"Fortune");
CALL AddCardTrait1(1081,"Innate");
CALL AddCardTrait1(1082,"Ally");
CALL AddCardTrait1(1083,"Fortune");
CALL AddCardTrait1(1084,"Fortune");
CALL AddCardTrait1(1085,"Spirit");



