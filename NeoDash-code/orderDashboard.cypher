// Dashboard cypher queries for Order data

// Patients' Orders (Table)
MATCH (p:Patient)-[relation:HAS_ORDER]->(o:Order)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)
RETURN DISTINCT 
  p.id AS Patient,
  p.gender AS Gender,
  p.age AS Age,
  relation.date AS OrderDate,
  c.description AS Diagnosis
