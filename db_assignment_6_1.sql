select m.name Name ,c.committee_name as'Committee Assignment'
FROM members m
JOIN committees c
ON   m.committee_id = c.committee_id;
