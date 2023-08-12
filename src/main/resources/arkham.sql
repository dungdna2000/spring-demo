CREATE DATABASE arkhamlcg;
USE arkhamlcg;
DROP TABLE card;

CREATE TABLE card_set(
	id integer, 
    title varchar(256), 
    primary key(id)
);
INSERT INTO card_set(id, title) VALUES
(1000, "Core Set"),
(100000,"Revised Core Set");

DROP TABLE card;
CREATE TABLE card(
	id integer,			
    set_id integer, 
    title varchar(256), 		
    card_type tinyint, 			# 0 = player, 1 = encounter
    front_url varchar(1024),	# front url 
    back_url varchar(1024),		# back url
    primary key(id)
);
    
CREATE TABLE player_card(
	id integer, 
    cost tinyint,			# resource cost to play 
    exp tinyint, 			# experience pts
    sub_type tinyint, 		# 0 = asset, 1 = event, 2 = skill , 3 = treachery (weakness), 4 = investigator 
	is_guardian tinyint, 
    is_seeker tinyint,
    is_mystic tinyint,
    is_rouge tinyint, 
    is_survivor tinyint,
    slot tinyint, 			# 0 = no slot, 1 = one hand, 2 = two hand, 3 = one arcane, 4 = two arcane, 5 = body, 6 = accessory, 7 = ally 
    # icon ? 
    # traits ? 
    primary key(id)
);
TRUNCATE player_card;
INSERT INTO player_card(id,cost, exp, sub_type, is_guardian, is_seeker, is_mystic, is_rouge, is_survivor, slot) VALUES
 (1016, 4, 0, 0, 1, 0, 0, 0, 0, 1)		# .45 Automatic
,(1032, 2, 0, 0, 0, 1, 0, 0, 0, 7)		# Researh Librarian 
,(1045, 2, 0, 0, 0, 0, 0, 1, 0, 0)		# Burglary (1)
,(1053, 0, 1, 2, 0, 0, 0, 1, 0, 0)		# Opportunist (1)
,(1055, 4, 1, 0, 0, 0, 0, 1, 0, 7)		# Cat Burglar (1)
,(8084, 1, 1, 1, 1, 1, 0, 0, 0, 0)		# On The Trail (1)

;
