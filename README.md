# 6360-graph4med
This project for Databases 6360 follows the Graph4Med paper in order to explore graph databases. ...
Taking a mix of provided and self-generated data, we built a graph database model, which allows for analysis and storage of complex medical data. 
The relationships focus mainly on the Patient Entity, and include Patient-Project, Patient-Order, and Patient-Condition relationships. ...

<em> Example: After populating the model with data, a visualizaton of the Patient- IN_PROJECT relationship can be queried <em> ...
![image](https://github.com/user-attachments/assets/4671c77a-7883-4076-b09b-f4b90c76109e)
...
<em>Example: The Patient relationships to all other entities in the current version are visualized as follows <em> ...
![image](https://github.com/user-attachments/assets/329d92f5-8dfb-4fb3-9334-c654c6553c22)
...

# How to set up our project
1. Install Neo4j here: https://neo4j.com/download/
2. Launch Neo4j Desktop
3. Create a project, and start it
4. Download the 8 .CSV files through `data` and `data > generated data` :: 
   generated_data, 
   Order.csv, 
   OrderPatient.csv, 
   main.py, 
   projectpatient.csv, 
   projects.csv, 
   conditions.csv, 
   fusions.csv, 
   patients.csv, 
   reduced_patients.csv
5. Click on the ••• > Open folder > Import to import the .CSV files into that folder
6. Click Open to open the database
7. Enter the Cypher queries from graphModel into the text area
8. Run the queries by pressing the run button
9. On the left taskbar, click on the first tab, the "Database Information", to press on the "Node Labels" to play around with the graphs

## References
J. Schäfer, M. Tang, D. Luu, A. K. Bergmann, and L. Wiese, "Graph4Med: a web application and a graph database for visualizing and analyzing medical databases," BMC Bioinformatics, vol. 23, no. 1, p. 537, 2022. doi: 10.1186/s12859-022-05092-0.
 
<b> This Project is intended as a learning excersize for the 6360 Course by our group at the University of Texas at Dallas <b>
