#CREATE DATABASE arkhamlcg;
#USE arkhamlcg;
/*
CREATE TABLE card_set(
	id integer, 
    title varchar(256), 
    primary key(id)
);
INSERT INTO card_set(id, title) VALUES
(1000, "Core Set"),
(100000,"Revised Core Set");
*/

#DROP TABLE card;

CREATE TABLE card(
	id integer NOT NULL,
    set_id integer, 
    title varchar(256), 		
    category tinyint, 			# 0 = player, 1 = encounter
    front_url varchar(1024),	# front url 
    back_url varchar(1024),		# back url
    PRIMARY KEY(id)
);

#DROP TABLE player_card;
CREATE TABLE player_card(
	id integer NOT NULL, 
    cost tinyint DEFAULT 0,			# resource cost to play 
    card_level tinyint DEFAULT 0, 	
    sub_type tinyint DEFAULT -1, 	# -2 = enemy(weakness), -1 = treachery (weakness), 0 = asset, 1 = event, 2 = skill
	is_guardian tinyint DEFAULT 0,
    is_seeker tinyint DEFAULT 0,
    is_mystic tinyint DEFAULT 0,
    is_rogue tinyint DEFAULT 0, 
    is_survivor tinyint DEFAULT 0,
    is_weakness tinyint DEFAULT 0,    

    PRIMARY KEY(id)
    #FOREIGN KEY(id) REFERENCES card(id)
);

DROP TABLE trait;
CREATE TABLE trait(
	id integer,
    trait_name VARCHAR(128),
    PRIMARY KEY(id)
);
INSERT INTO trait(id, trait_name) VALUES
	 (1,"Item.")
    ,(2,"Weapon.")
    ,(3,"Firearm.")
    ,(4,"Tome.")
    ,(5,"Task.")
    ,(6,"Tatic.")
    ,(7,"Relic.")
    ,(8,"Spell.")
    ,(9,"Madness.")
    ,(10,"Talent.")
    ,(11,"Ally.")
    ,(12,"Police.")
    ,(13,"Science.")
    ,(14,"Melee.")
    ,(15,"Creature.")
    ,(16,"Insight.")
    ,(17,"Practiced.")
    ,(18,"Supply.")
    ,(19,"Tool.")
    ,(20,"Miskatonic.")
    ,(21,"Illicit.")
    ,(22,"Criminal.")
    ,(23,"Innate.")
    ,(24,"Fortune.")
    ,(25,"Charm.")
    ,(26,"Sorcerer.")
    ,(27,"Armor.")
    ,(28,"Spirit.")
    ,(29,"Curse.")
    ,(30,"Humanoid.")
    ,(31,"Cultist.")
    ,(32,"SilverTwilight.")
    ,(33,"Detective.")
;

DROP TABLE card_trait;
CREATE TABLE card_trait (
	card_id integer,
    trait_id integer,
    PRIMARY KEY(card_id, trait_id)
);

TRUNCATE card_trait;
INSERT INTO card_trait(card_id, trait_id) VALUES
	 (1006,1), (1006,2), (1006,3) 			# Roland's .38 Special  Item.Weapon.Firearm.
	,(1007,5)								# Cover Up  Tasks.		
	,(1008,1)								# Daisy's Tote Bag	 Item.
	,(1009,1),(1009,4)						# The Necronomicon: John Dee Translation	 Item.Tome.
	,(1016,1),(1016,2),(1016,3)						# .45 Automatic	 Item.Weapon.Firearm
