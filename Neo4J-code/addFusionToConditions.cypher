// Add fusion column to Condition
MATCH (c:Condition)
WITH c,
CASE 
    WHEN c.description CONTAINS "Malignant neoplasm of breast" OR 
         c.description CONTAINS "Metastasis from malignant tumor of prostate" OR 
         c.description CONTAINS "Neoplasm of prostate" OR 
         c.description CONTAINS "Carcinoma in situ of prostate" 
    THEN CASE
            WHEN rand() < 0.33 THEN "BRCA1"
            WHEN rand() < 0.67 THEN "BRCA2"
            ELSE "BRCA2-NBEA"
         END
    WHEN c.description CONTAINS "colon" THEN "APC"
    WHEN c.description CONTAINS "Metabolic syndrome X" THEN 
        CASE 
            WHEN rand() < 0.25 THEN "FTO"
            WHEN rand() < 0.5 THEN "ADIPOQ"
            WHEN rand() < 0.75 THEN "PPARG"
            ELSE "CD36"
        END
    ELSE null
END AS fusion
SET c.fusion = fusion
RETURN c.description, c.fusion


// Create relation between Condition.fusion and Fusion.fusion_gene
MATCH (c:Condition), (f:Fusion)
WHERE c.fusion = f.fusion_gene
MERGE (c)-[:HAS_FUSION]->(f)
RETURN c.description, c.fusion, f.fusion_gene
