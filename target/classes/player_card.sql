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
,(1030, 1, 0, 0,   0, 1, 0, 0, 0 )		# Magnifying Glass	 
,(1031, 3, 0, 0,   0, 1, 0, 0, 0 )		# Old Book of Lore		 
,(1032, 2, 0, 0,   0, 1, 0, 0, 0 )		# Researh Librarian 
,(1033, 4, 0, 0,   0, 1, 0, 0, 0 )		# Dr. Milan Christopher: Professor of Entomology 
,(1034, 2, 0, 0,   0, 1, 0, 0, 0 )		# Hyperawareness	 
,(1035, 2, 0, 0,   0, 1, 0, 0, 0 )		# Medical Texts		 
,(1036, 1, 0, 1,   0, 1, 0, 0, 0 )		# Mind over Matter			 
,(1037, 2, 0, 1,   0, 1, 0, 0, 0 )		# Working a Hunch				 
,(1038, 0, 0, 1,   0, 1, 0, 0, 0 )		# Barricade	
,(1039, 0, 0, 2,   0, 1, 0, 0, 0 )		# Deduction		
,(1040, 0, 1, 0,   0, 1, 0, 0, 0 )		# Magnifying Glass (1)	
,(1041, 3, 2, 0,   0, 1, 0, 0, 0 )		# Disc of Itzamna: Protective Amulet (2)		
,(1042, 2, 2, 0,   0, 1, 0, 0, 0 )		# Encyclopedia (2)			
,(1043, 0, 4, 1,   0, 1, 0, 0, 0 )		# Cryptic Research (4)			


#ROGUE
,(1044, 1, 0, 0,   0, 0, 0, 1, 0 )		# Switchblade	
,(1045, 1, 0, 0,   0, 0, 0, 1, 0 )		# Burglary
,(1046, 2, 0, 0,   0, 0, 0, 1, 0 )		# Pickpocketing	
,(1047, 3, 0, 0,   0, 0, 0, 1, 0 )		# .41 Derringer		
,(1048, 6, 0, 0,   0, 0, 0, 1, 0 )		# Leo De Luca: The Louisiana Lion
,(1049, 2, 0, 0,   0, 0, 0, 1, 0 )		# Hard Knocks
,(1050, 2, 0, 1,   0, 0, 0, 1, 0 )		# Elusive
,(1051, 3, 0, 1,   0, 0, 0, 1, 0 )		# Backstab	
,(1052, 2, 0, 1,   0, 0, 0, 1, 0 )		# Sneak Attack		
,(1053, 0, 0, 2,   0, 0, 0, 1, 0 )		# Opportunist
,(1054, 5, 1, 0,   0, 0, 0, 1, 0 )		# Leo De Luca: The Louisiana Lion (1)
,(1055, 4, 1, 0,   0, 0, 0, 1, 0 )		# Cat Burglar (1)
,(1056, 2, 3, 1,   0, 0, 0, 1, 0 )		# Sure Gamble (3)
,(1057, 3, 4, 1,   0, 0, 0, 1, 0 )		# Hot Streak (4)

# MYSTIC
,(1058, 0, 0, 0,   0, 0, 1, 0, 0 )		# Forbidden Knowledge
,(1059, 2, 0, 0,   0, 0, 1, 0, 0 )		# Holy Rosary
,(1060, 3, 0, 0,   0, 0, 1, 0, 0 )		# Shrivelling
,(1061, 1, 0, 0,   0, 0, 1, 0, 0 )		# Scrying
,(1062, 2, 0, 0,   0, 0, 1, 0, 0 )		# Arcane Studies
,(1063, 1, 0, 0,   0, 0, 1, 0, 0 )		# Arcane Initiate	
,(1064, 0, 0, 1,   0, 0, 1, 0, 0 )		# Drawn to the Flame	
,(1065, 1, 0, 1,   0, 0, 1, 0, 0 )		# Ward of Protection	
,(1066, 2, 0, 1,   0, 0, 1, 0, 0 )		# Blinding Light	
,(1067, 0, 0, 2,   0, 0, 1, 0, 0 )		# Fearless
,(1068, 1, 1, 1,   0, 0, 1, 0, 0 )		# Mind Wipe (1)	
,(1069, 1, 2, 1,   0, 0, 1, 0, 0 )		# Blinding Light (2)	
,(1070, 4, 3, 0,   0, 0, 1, 0, 0 )		# Book of Shadows (3)	
,(1071, 2, 4, 0,   0, 0, 1, 0, 0 )		# Grotesque Statue (4)	

#SURVIVOR
,(1072, 0, 0, 0,   0, 0, 0, 0, 1 )		# Leather Coat
,(1073, 1, 0, 0,   0, 0, 0, 0, 1 )		# Scavenging
,(1074, 2, 0, 0,   0, 0, 0, 0, 1 )		# Baseball Bat
,(1075, 1, 0, 0,   0, 0, 0, 0, 1 )		# Rabbit's Foot
,(1076, 1, 0, 0,   0, 0, 0, 0, 1 )		# Stray Cat
,(1077, 2, 0, 0,   0, 0, 0, 0, 1 )		# Dig Deep
,(1078, 5, 0, 1,   0, 0, 0, 0, 1 )		# Cunning Distraction
,(1079, 2, 0, 1,   0, 0, 0, 0, 1 )		# "Look what I found!"
,(1080, 1, 0, 1,   0, 0, 0, 0, 1 )		# Lucky!
,(1081, 0, 0, 2,   0, 0, 0, 0, 1 )		# Survival Instinct
,(1082, 5, 1, 0,   0, 0, 0, 0, 1 )		# Aquinnah: The Forgotten Daughter (1)
,(1083, 2, 2, 1,   0, 0, 0, 0, 1 )		# Close Call (2)
,(1084, 1, 2, 1,   0, 0, 0, 0, 1 )		# Lucky! (2)
,(1085, 4, 3, 1,   0, 0, 0, 0, 1 )		# Will to Survive (3)

# NEUTRAL UNIQUE
,(1006, 3, 0, 0,   0, 0, 0, 0, 0 )		# Roland's .38 Special
,(1008, 2, 0, 0,   0, 0, 0, 0, 0 )		# Daisy's Tote Bag
,(1010, 1, 0, 1,   0, 0, 0, 0, 0 )		# On The Lam
,(1012, 3, 0, 0,   0, 0, 0, 0, 0 )		# Heirloom of Hyperborea: Artifact from Another Life
,(1014, 2, 0, 0,   0, 0, 0, 0, 0 )		# Wendy's Amulet

# NEUTRAL
,(1086, 1, 0, 0,   0, 0, 0, 0, 0 )		# Knife
,(1087, 2, 0, 0,   0, 0, 0, 0, 0 )		# Flashlight
,(1088, 0, 0, 1,   0, 0, 0, 0, 0 )		# Emergency Cache
,(1089, 0, 0, 2,   0, 0, 0, 0, 0 )		# Guts
,(1090, 0, 0, 2,   0, 0, 0, 0, 0 )		# Perception
,(1091, 0, 0, 2,   0, 0, 0, 0, 0 )		# Overpower
,(1092, 0, 0, 2,   0, 0, 0, 0, 0 )		# Manual Dexterity
,(1093, 0, 0, 2,   0, 0, 0, 0, 0 )		# Unexpected Courage
,(1094, 2, 3, 0,   0, 0, 0, 0, 0 )		# Bulletproof Vest (3)
,(1095, 2, 3, 0,   0, 0, 0, 0, 0 )		# Elder Sign Amulet (3)

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
