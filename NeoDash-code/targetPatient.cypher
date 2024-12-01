// Dashboard cypher queries for a specific patient

// Select a patient by ID (parameter input selected by user)
// $neodash_patient_id

// Target Patient Information (Table)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE p.id = $neodash_patient_id
RETURN
    p.gender AS Gender,
    toInteger(p.age) AS Age,
    c.start AS StartDate,
    c.description AS Diagnosis,
    c.fusion AS Fusion

// Target Patient Information (Graph)
MATCH relation=(p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE p.id = $neodash_patient_id
RETURN relation

// Similar Patients (Graph)
MATCH (target:Patient {id: $neodash_patient_id})-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
MATCH similar_p=(p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE p.id <> target.id
RETURN similar_p
