SELECT c.id, c.title, t.trait_name 
FROM card c 
LEFT JOIN card_trait ct ON c.id = ct.card_id
LEFT JOIN trait t ON ct.trait_id = t.id
WHERE 
	c.id IN 
    (
     SELECT c2.id FROM card c2 
     INNER JOIN card_trait ct2 ON c2.id = ct2.card_id
     INNER JOIN trait t2 ON ct2.trait_id = t2.id
     WHERE t2.trait_name = "Weapon."
	)
	