// Dashboard cypher queries for Patient data with Condition data

// Patient-Condition (Graph)
MATCH (n)-[e]->(m) RETURN n,e,m LIMIT 20

// Number of Patients (Single Value)
MATCH (p:Patient)
WITH COUNT(p) AS Patients
RETURN Patients

// Patient Gender Distribution (Bar Chart)
MATCH (p:Patient)
WITH p.gender AS Gender, COUNT(p) AS Patients
RETURN Gender, Patients

// Patient Race Distribution (Table)
MATCH (p:Patient)
WITH p.race AS Race, COUNT(p) AS Patients
RETURN Race, Patients
ORDER BY Patients DESC