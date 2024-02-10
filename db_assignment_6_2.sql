SELECT m.name Name, c.committee_name AS 'Committee Assignment'
FROM  members m
INNER JOIN committees c
ON     m.committee_id = c.committee_id;
