// Dashboard cypher queries for Fusion data

// Fusions per Patient (Bar chart)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)
OPTIONAL MATCH (c:Condition)-[:HAS_FUSION]->(f:Fusion)
WITH p, COUNT(DISTINCT f) AS FusionsPerPatient
RETURN
    FusionsPerPatient,
    COUNT(p) AS NumPatients
ORDER BY FusionsPerPatient

// Frequency of Fusions (Bar chart)
MATCH (c:Condition)-[:HAS_FUSION]->(f:Fusion)
RETURN
    c.fusion AS Fusion,
    COUNT(c) AS NumPatient

// Fusion Names (Table)
MATCH (f:Fusion)
RETURN
    f.fusion_gene AS Name

// Select a Fusion (parameter input selected by user)
// $neodash_fusion_fusion_gene

// Age distribution of patients with selected fusion gene (Bar chart)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE c.fusion = $neodash_fusion_fusion_gene
RETURN
    toInteger(p.age) AS AgeInYears, 
    COUNT(p) AS NumPatients,
    p.gender AS Gender
ORDER BY AgeInYears

// Patients with selected fusion (and their other fusions) (Graph)
MATCH relation=(p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE c.fusion = $neodash_fusion_fusion_gene
RETURN relation

// Patients with selected fusion (Table)
MATCH (p:Patient)-[:HAS_CONDITION]->(c:Condition)-[:HAS_FUSION]->(f:Fusion)
WHERE c.fusion = $neodash_fusion_fusion_gene
RETURN
    p.gender AS Gender,
    p.age AS AgeInYears,
    c.description AS Diagnosis
