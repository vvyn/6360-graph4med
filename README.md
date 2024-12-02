# 6360-Graph4Med
This project for 6360 Database Design follows the Graph4Med paper in order to explore graph databases for medical system usage. Taking a mix of provided and self-generated data, we built a graph database model which allows for analysis and storage of complex medical data. The relationships focus mainly on the Patient Entity, and include Patient-Project, Patient-Order, and Patient-Condition relationships.

Link to paper: https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-022-05092-0 

# How to set up our project
1. Install Neo4j here: https://neo4j.com/download/
2. Launch Neo4j Desktop
3. Create a project, and start it
4. Within the GitHub directory files, download the 9 .CSV files through `data` and `data > generated data` :: 
   `generated_data`, 
   `Order.csv`, 
   `OrderPatient.csv`, 
   `projectpatient.csv`, 
   `projects.csv`, 
   `conditions.csv`, 
   `fusions.csv`, 
   `patients.csv`, 
   `reduced_patients.csv`
5. Back on Neo4j Desktop, click on the ••• > Open folder > Import to import the .CSV files into that folder
6. Click Open to open the database
7. Enter the Cypher queries from the `Neo4J-code` folder into the text area
8. Run the queries by pressing the run button
9. On the left taskbar, click on the 1st tab, the "Database Information", to press on the "Node Labels" to play around with the graphs

# How to run NeoDash, Neo4j's dashboard tool
1. From the steps of "How to set up our project", the database is still active, go back to the home page by exiting the database
2. On the left taskbar, click on the 3rd tab, the "Graph Apps", to press on the "NeoDash" application
3. Then, click on "Connect to Neo4j Desktop"
4. Within the GitHub directory files, go to the `NeoDash-code` folder to copy the queries
5. Click on the "New Page" button in the middle, which should spawn a tile
6. Paste the queries onto the code editor area
7. Choose which type of visualization to use in the 1st dropdown menu i.e., Table, Graph, Bar Chart, etc.
8. Run the queries by pressing the run button

## Example Queries
<em> Ex. 1: After populating the model with data, a visualizaton of the Patient- IN_PROJECT relationship can be queried <em> 
![image](https://github.com/user-attachments/assets/4671c77a-7883-4076-b09b-f4b90c76109e)

<em>Ex. 2: The Patient relationships to all other entities in the current version are visualized as follows <em> 
![image](https://github.com/user-attachments/assets/329d92f5-8dfb-4fb3-9334-c654c6553c22)



## References
J. Schäfer, M. Tang, D. Luu, A. K. Bergmann, and L. Wiese, "Graph4Med: a web application and a graph database for visualizing and analyzing medical databases," BMC Bioinformatics, vol. 23, no. 1, p. 537, 2022. doi: 10.1186/s12859-022-05092-0.
 
<b> This Project is intended as a learning excersize for the 6360 Course by our group at the University of Texas at Dallas <b>
