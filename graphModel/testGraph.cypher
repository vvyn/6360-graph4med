//Test relationship HAS_CONDITION for one user

MATCH (p:Patient {id:'b58731cc-2d8b-4c2d-b327-4cab771af3ef'})-[ :HAS_CONDITION]->(c:Condition)
RETURN c.description

//Test relationship HAS_ORDER for one user

MATCH(a:Patient {name: "Luciana251 Jakubowski832"})-[r:HAS_ORDER]->(b) RETURN r,a,b

// Get all patients who are in the Otolaryngology Project
MATCH (a:Patient)-[:IN_PROJECT]->(b:Project)
WHERE b.name = 'Otolaryngology'
RETURN a.name