TRUNCATE player_card;

# -1 = treachery, 0 = asset, 1 = event, 2 = skill
INSERT INTO player_card(id,cost, exp, sub_type, is_guardian, is_seeker, is_mystic, is_rogue, is_survivor) VALUES

 (1016, 4, 0, 0,   1, 0, 0, 0, 0 )		# .45 Automatic
,(1017, 2, 0, 0,   1, 0, 0, 0, 0 )		# Physical Training
,(1018, 4, 0, 0,   1, 0, 0, 0, 0 )		# Beat Cop
,(1019, 2, 0, 0,   1, 0, 0, 0, 0 )		# First Aid
,(1020, 3, 0, 0,   1, 0, 0, 0, 0 )		# Machete 
,(1021, 3, 0, 0,   1, 0, 0, 0, 0 )		# Guard Dog
,(1022, 1, 0, 1,   1, 0, 0, 0, 0 )		# Evidence!
,(1023, 1, 0, 1,   1, 0, 0, 0, 0 )		# Dodge
,(1024, 5, 0, 1,   1, 0, 0, 0, 0 )		# Dynamite Blast
,(1025, 5, 0, 2,   1, 0, 0, 0, 0 )		# Vicious Blow
,(1026, 2, 1, 1,   1, 0, 0, 0, 0 )		# Extra Ammunition (1)	
,(1027, 3, 2, 0,   1, 0, 0, 0, 0 )		# Police Badge (2)		
,(1028, 4, 2, 0,   1, 0, 0, 0, 0 )		# Beat Cop (2)			
,(1029, 5, 4, 0,   1, 0, 0, 0, 0 )		# Shotgun (4)				

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
,(1006, 3, 0, 0,   0, 0, 0, 0, 0 )		# Roland's .38 Special
,(1008, 2, 0, 0,   0, 0, 0, 0, 0 )		# Daisy's Tote Bag
,(1010, 1, 0, 1,   0, 0, 0, 0, 0 )		# On The Lam
,(1012, 3, 0, 0,   0, 0, 0, 0, 0 )		# Heirloom of Hyperborea: Artifact from Another Life
,(1014, 2, 0, 0,   0, 0, 0, 0, 0 )		# Wendy's Amulet

,(1089, 0, 0, 2,   0, 0, 0, 0, 0 )		# Guts


# MULTI CLASS 
,(8084, 1, 1, 1,   1, 1, 0, 0, 0 )		# On The Trail (1)
;

## WEAKNESS 
INSERT INTO player_card(id,cost, exp, sub_type, is_weakness) VALUES
 (1007, 0, 0, -1,   1 )		# Cover Up
,(1009, 0, 0,  0,   1 )		# The Necronomicon: John Dee Translation
,(1011, 0, 0, -1,   1 )		# Hospital Debts 
,(1013, 2, 0,  1,   1 )		# Dark Memory
,(1015, 0, 0, -1,   1 )		# Abandon and Alone 

;
