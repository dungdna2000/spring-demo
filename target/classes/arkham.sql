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
    cost tinyint,			# resource cost to play 
    exp tinyint, 			# experience pts
    sub_type tinyint, 		# 0 = asset, 1 = event, 2 = skill , 3 = treachery (weakness)
	is_guardian tinyint, 
    is_seeker tinyint,
    is_mystic tinyint,
    is_rogue tinyint, 
    is_survivor tinyint,
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

