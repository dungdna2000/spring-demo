TRUNCATE player_card;

# 0 = asset, 1 = event, 2 = skill
INSERT INTO player_card(id,cost, exp, sub_type, is_guardian, is_seeker, is_mystic, is_rogue, is_survivor) VALUES
 (1006, 3, 0, 0,   0, 0, 0, 0, 0 )		# Roland's .38 Special
,(1008, 2, 0, 0,   0, 0, 0, 0, 0 )		# Daisy's Tote Bag

,(1016, 4, 0, 0,   1, 0, 0, 0, 0 )		# .45 Automatic
,(1017, 2, 0, 0,   1, 0, 0, 0, 0 )		# Physical Training

#WEAKNESS


#SEEKER
,(1032, 2, 0, 0,   0, 1, 0, 0, 0 )		# Researh Librarian 

#ROGUE
,(1045, 2, 0, 0,   0, 0, 0, 1, 0 )		# Burglary (1)
,(1053, 0, 1, 2,   0, 0, 0, 1, 0 )		# Opportunist (1)

,(1055, 4, 1, 0,   0, 0, 0, 1, 0 )		# Cat Burglar (1)

# MYSTIC
,(1058, 0, 0, 0,   0, 0, 1, 0, 0 )		# Forbidden Knowledge
,(1059, 2, 0, 0,   0, 0, 1, 0, 0 )		# Holy Rosary

#SURVIVOR
,(1072, 0, 0, 0,   0, 0, 0, 0, 1 )		# Leather Coat
,(1073, 1, 0, 0,   0, 0, 0, 0, 1 )		# Scavenging

# NEUTRAL
,(1089, 0, 0, 2,   0, 0, 0, 0, 0 )		# Guts

,(8084, 1, 1, 1,   1, 1, 0, 0, 0 )		# On The Trail (1)
;
