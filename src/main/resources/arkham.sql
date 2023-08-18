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



DROP TABLE trait;
CREATE TABLE trait(
	id integer,
    trait_name VARCHAR(128),
    PRIMARY KEY(id)
);

DROP TABLE card_trait;
CREATE TABLE card_trait (
	card_id integer,
    trait_id integer,
    PRIMARY KEY(card_id, trait_id)
);

DROP TABLE asset_property;
CREATE TABLE assset_property (
	card_id integer,
    is_one_hand tinyint DEFAULT 0,
    is_two_hand tinyint DEFAULT 0,
    is_one_arcane tinyint DEFAULT 0,
    is_two_arcane tinyint DEFAULT 0,
    is_accesory tinyint DEFAULT 0,
    is_body tinyint DEFAULT 0,
    is_ally tinyint DEFAULT 0,
    is_tarot tinyint DEFAULT 0,
    health tinyint DEFAULT 0, 
    sanity tinyint DEFAULT 0
)

