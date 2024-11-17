//PatientLoading
CREATE CONSTRAINT unique_ssn IF NOT EXISTS FOR (p:Patient) REQUIRE p.ssn IS UNIQUE;

LOAD CSV WITH HEADERS FROM 'file:///reduced_patients.csv' AS row
MERGE (p:Patient {
id: row.Id
})
SET p.name = row.FIRST + " " + row.LAST,
p.gender = row.GENDER,
p.birthDate = row.BIRTHDATE,
p.maritalStatus = row.MARITAL,
p.ssn = row.SSN,
p.ethnicity = row.ETHNICITY,
p.race = row.RACE,
p.deathDate = row.DEATHDATE; 

//Load Conditions and create relationships between Patients and Conditions via ID 
LOAD CSV WITH HEADERS FROM 'file:///conditions.csv' AS row
MATCH (p:Patient {id: row.PATIENT})
MERGE (c:Condition {code: row.CODE, description: row.DESCRIPTION})
SET c.start = row.START,
    c.stop = row.STOP
MERGE (p)-[:HAS_CONDITION]->(c);

//Load Fusions
LOAD CSV WITH HEADERS FROM 'file:///fusions.csv' AS row
MERGE (f:Fusion {fusion_gene: row.fusion_gene});

//Load in Orders
LOAD CSV WITH HEADERS FROM 'file:///Order.csv' AS row
MERGE (o:Order {
id: row.ID
})
SET o.order_int = row.INT;

// Loading in Projects
LOAD CSV WITH HEADERS FROM 'file:///projects.csv' as row
MERGE (p:Project {
id: row.PID
})
SET p.name = row.NAME;

//Establish relationship between patients and orders
LOAD CSV WITH HEADERS FROM 'file:///OrderPatient.csv' AS row
MATCH (pat:Patient {id:row.PATIENTID})
MATCH (ord:Order {id:row.ORDERID})
CREATE (pat)-[:HAS_ORDER {date:row.ORDER_DATE}]->(ord);

//Establish relationship between patients and projects
LOAD CSV WITH HEADERS FROM 'file:///projectpatient.csv' AS row
MATCH (n:Project {id: row.PROJECTID})
MATCH (p:Patient {id: row.PATIENTID})
CREATE (p)-[:IN_PROJECT]->(n);