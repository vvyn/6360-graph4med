// Dashboard cypher queries for Projects data

// Patients per Project (Bar chart)
MATCH (p:Patient)-[:IN_PROJECT]->(n:Project)
WITH n, COUNT(p) AS NumPatients
RETURN
  n.name AS Project,
  NumPatients

// All Projects (Table)
MATCH (n:Project)
RETURN
  n.name AS Project

// Select Project Name (parameter input selected by user)
// $neodash_project_name

// Distribution of conditions by patient frequency for chosen Project (Bar chart)
MATCH (p:Patient)-[:IN_PROJECT]->(proj:Project)
MATCH (p)-[:HAS_CONDITION]->(c:Condition)
WHERE proj.name=$neodash_project_name
RETURN 
  c.description AS Condition,  
  COUNT(DISTINCT p) AS NumPatients,
  p.gender AS Gender
