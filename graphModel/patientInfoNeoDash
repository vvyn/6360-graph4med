MATCH (n)-[e]->(m) RETURN n,e,m LIMIT 20

MATCH (n)-[e]-> (m) RETURN COUNT(e) as Patients

MATCH (p:Patient)
WITH p.gender AS Gender, COUNT(p) AS Patients
RETURN Gender, Patients

MATCH (p:Patient)
WITH p.healthcare_coverage AS Coverage, COUNT(p) AS Patients
RETURN Coverage, Patients

MATCH (p:Patient)
WITH p.race AS Race, COUNT(p) AS Patients
RETURN Race, Patients

Match (p:Patient)-[e]->(c:Condition)
RETURN c.description AS Condition, COUNT(p) as People, p.gender as Gender
