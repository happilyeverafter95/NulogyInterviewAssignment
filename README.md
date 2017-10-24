# Nulogy Interview Assignment


**Tools** 


I used the igraph library in R to build this supply chain network.


**Procedure** 


* The csv file nodesAndLabel was used to create the vertices (nodes) 
* The csv file shipsAndConsignRelation was used to create the edges (links)
* I created a numerical representation of the node labels (1 = shipper, 2 = consignee) 
* I color coded the nodes based on their labels and created a legend
* I set the edge width as 1.5*total.qty (total quantity of goods shipped) to visualize the "magnitude" of the shipper-consignee relationship
* I set the vertice width as 2*degree to visualize the number of relationships each entity was involved in 
* To combat clutter, vertices were labeled based on the ID column instead of their company name


**Assumptions**


I assumed that the unnamed column in the nodesAndLabel file was some sort of numerical identification for the shippers and consignees. 
I also assumed that whoever would be using this graph would be familiar (or have easy access to) with the IDs. 


**Answers** 


**Question 1:** What is the maximum and minimum number of degrees for your network graph? 


Maximum: 13, Minimum: 1 


**Question 2:** What is the density of the network? 


0.009193054