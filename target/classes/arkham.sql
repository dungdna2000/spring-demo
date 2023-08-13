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

#DROP TABLE player_card;
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

CREATE TABLE player_card(
	id integer NOT NULL, 
    cost tinyint DEFAULT 0,			# resource cost to play 
    exp tinyint DEFAULT 0, 			# experience pts
    sub_type tinyint DEFAULT -1, 	# -1 = no type (usually used by weakness cards), 0 = asset, 1 = event, 2 = skill
	is_guardian tinyint DEFAULT 0,
    is_seeker tinyint DEFAULT 0,
    is_mystic tinyint DEFAULT 0,
    is_rogue tinyint DEFAULT 0, 
    is_survivor tinyint DEFAULT 0,
    is_weakness tinyint DEFAULT 0,    
    #slot_one_hand tinyint,
    #slot_two_hands tinyint,
    #slot_one_arcane tinyint,
    #slot_two_arcanes tinyint,
    #slot_ally tinyint,
    #slot_accessory tinyint, 
    #slot_tarrot tinyint
    # icon ? 
    # traits ? 
    PRIMARY KEY(id)
    #FOREIGN KEY(id) REFERENCES card(id)
);

