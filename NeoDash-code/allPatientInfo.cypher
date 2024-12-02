// Dashboard cypher queries to display All Patient Informaion

// Number of Patients (Single value)
MATCH (p:Patient)
RETURN COUNT(p)

// Patient age distribution (in years) (Bar chart)
MATCH (p:Patient)
RETURN 
  toInteger(p.age) AS AgeInYears, 
  COUNT(p) AS Count,
  p.gender AS Gender
ORDER BY AgeInYears ASC

// Distribution of the patient's age at diagnosis (in years) (Bar chart)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)
WHERE c.fusion IS NOT NULL
RETURN 
    toInteger(p.age) AS AgeAtDiag,
    COUNT(p) AS Count,
    p.gender AS Gender
ORDER BY AgeAtDiag ASC

// Top 10 most frequent Non-disorders (Bar chart)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)
WHERE c.disorder = 'N'
RETURN 
    c.description AS Diagnosis,
    COUNT(p) AS Count,
    p.gender AS Gender
ORDER BY Count DESC
LIMIT 10

// Most frequent disorders (Bar chart)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)
WHERE c.disorder = 'Y'
RETURN 
    c.description AS Diagnosis,
    COUNT(p) AS Count
ORDER BY Count DESC
