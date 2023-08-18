/*
DROP PROCEDURE AddCardTrait;
DROP PROCEDURE AddCardTraits;

DELIMITER //
CREATE PROCEDURE AddCardTrait(IN _card_id integer, IN _trait_name VARCHAR(128)) 
BEGIN
	DECLARE t_id INTEGER;
	SELECT id INTO t_id FROM trait WHERE trait.trait_name = _trait_name; 
    INSERT INTO card_trait(card_id, trait_id) VALUES (_card_id, t_id);
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddCardTraits(IN _card_id integer, IN traits VARCHAR(255))
BEGIN
	DECLARE de VARCHAR(1);
	DECLARE ss VARCHAR(255);
	DECLARE trait VARCHAR(255);
	DECLARE p INTEGER;
	
    SET de = ".";
    SET ss = traits;
	SET p = POSITION(de IN ss);
	WHILE p>0 DO
		SET trait = SUBSTR(ss,1,p-1);  # extract token
        SET ss = SUBSTR(ss,p+1,LENGTH(ss) - p);  
		
        CALL AddCardTrait(_card_id,trait);
        
		SET p = POSITION(de IN ss);
	END WHILE;
    
    CALL AddCardTrait(_card_id,ss);
END//
DELIMITER ;
*/

TRUNCATE card_trait;
CALL AddCardTraits(1016,"Item.Firearm.Weapon");
CALL AddCardTraits(1017,"Talent");
CALL AddCardTraits(1018,"Ally.Police");
CALL AddCardTraits(1019,"Talent.Science");
CALL AddCardTraits(1020,"Item.Weapon.Melee");
CALL AddCardTraits(1021,"Ally.Creature");
CALL AddCardTraits(1022,"Insight");
CALL AddCardTraits(1023,"Tactic");
CALL AddCardTraits(1024,"Tactic");
CALL AddCardTraits(1025,"Practiced");
CALL AddCardTraits(1026,"Supply");
CALL AddCardTraits(1027,"Item");
CALL AddCardTraits(1028,"Ally.Police");
CALL AddCardTraits(1029,"Item.Weapon.Firearm");

#SEEKER
CALL AddCardTraits(1030,"Item.Tool");
CALL AddCardTraits(1031,"Item.Tome");
CALL AddCardTraits(1032,"Ally.Miskatonic");
CALL AddCardTraits(1033,"Ally.Miskatonic");
CALL AddCardTraits(1034,"Talent");
CALL AddCardTraits(1035,"Item.Tome");
CALL AddCardTraits(1036,"Insight");
CALL AddCardTraits(1037,"Insight");
CALL AddCardTraits(1038,"Insight.Tactic");
CALL AddCardTraits(1039,"Practiced");
CALL AddCardTraits(1040,"Item.Tool");
CALL AddCardTraits(1041,"Item.Relic");
CALL AddCardTraits(1042,"Item.Tome");
CALL AddCardTraits(1043,"Insight");

#ROGUE
CALL AddCardTraits(1044,"Item.Weapon.Melee.Illicit");
CALL AddCardTraits(1045,"Talent.Illicit");
CALL AddCardTraits(1046,"Talent.Illicit");
CALL AddCardTraits(1047,"Item.Weapon.Melee.Illicit");
CALL AddCardTraits(1048,"Ally.Criminal");
CALL AddCardTraits(1049,"Talent");
CALL AddCardTraits(1050,"Tactic");
CALL AddCardTraits(1051,"Tactic");
CALL AddCardTraits(1053,"Innate");
CALL AddCardTraits(1054,"Ally.Criminal");
CALL AddCardTraits(1055,"Ally.Criminal");
CALL AddCardTraits(1056,"Fortune.Insight");
CALL AddCardTraits(1057,"Fortune");


#MYSTIC
CALL AddCardTraits(1058,"Talent");
CALL AddCardTraits(1059,"Item.Charm");
CALL AddCardTraits(1060,"Spell");
CALL AddCardTraits(1061,"Spell");
CALL AddCardTraits(1062,"Talent");
CALL AddCardTraits(1063,"Ally.Sorcerer");
CALL AddCardTraits(1064,"Insight");
CALL AddCardTraits(1065,"Spell.Spirit");
CALL AddCardTraits(1066,"Spell");
CALL AddCardTraits(1067,"Innate");
CALL AddCardTraits(1068,"Spell");
CALL AddCardTraits(1069,"Spell");
CALL AddCardTraits(1070,"Item.Tome");
CALL AddCardTraits(1071,"Item.Relic");

#SURVIVOR
CALL AddCardTraits(1072,"Item.Armor");
CALL AddCardTraits(1073,"Talent");
CALL AddCardTraits(1074,"Item.Weapon.Melee");
CALL AddCardTraits(1075,"Item.Charm");
CALL AddCardTraits(1076,"Ally.Creature");
CALL AddCardTraits(1077,"Talent");
CALL AddCardTraits(1078,"Tactic");
CALL AddCardTraits(1079,"Fortune");
CALL AddCardTraits(1080,"Fortune");
CALL AddCardTraits(1081,"Innate");
CALL AddCardTraits(1082,"Ally");
CALL AddCardTraits(1083,"Fortune");
CALL AddCardTraits(1084,"Fortune");
CALL AddCardTraits(1085,"Spirit");

#NEUTRAL
CALL AddCardTraits(1006,"Item.Weapon.Firearm");
CALL AddCardTraits(1008,"Item");
CALL AddCardTraits(1010,"Tactic");
CALL AddCardTraits(1012,"Item.Relic");
CALL AddCardTraits(1014,"Item.Relic");
CALL AddCardTraits(1086,"Item.Weapon.Melee");
CALL AddCardTraits(1087,"Item.Tool");
CALL AddCardTraits(1088,"Supply");
CALL AddCardTraits(1089,"Innate");
CALL AddCardTraits(1090,"Practiced");
CALL AddCardTraits(1091,"Practiced");
CALL AddCardTraits(1092,"Innate");
CALL AddCardTraits(1093,"Innate");
CALL AddCardTraits(1094,"Item.Armor");
CALL AddCardTraits(1095,"Item.Relic");

#WEAKNESS
CALL AddCardTraits(1007,"Task");
CALL AddCardTraits(1009,"Item.Tome");
CALL AddCardTraits(1011,"Task");
CALL AddCardTraits(1013,"Spell");
CALL AddCardTraits(1015,"Madness");
CALL AddCardTraits(1096,"Madness");
CALL AddCardTraits(1097,"Madness");
CALL AddCardTraits(1098,"Curse");
CALL AddCardTraits(1099,"Madness");
CALL AddCardTraits(1100,"Madness");
CALL AddCardTraits(1101,"Humanoid.Criminal");
CALL AddCardTraits(1102,"Humanoid.Cultist.SilverTwilight");
CALL AddCardTraits(1103,"Humanoid.Detective");




