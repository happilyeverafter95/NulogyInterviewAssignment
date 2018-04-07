#install.packages("igraph") 
library(igraph)

nodes <- read.csv("...nodesAndLabel.csv", header = T, as.is = T)
links <- read.csv("...shipAndConsignRelation.csv", header = T, as.is = T)

colnames(links) <- c("from", "to", "weight")

links <- aggregate(links[,3], links[,-3], sum)
links <- links[order(links$from, links$to),]
rownames(links) <- NULL

nodes$label.type <- ifelse(nodes$label == 'shipper', 1, 2)

net <- graph_from_data_frame(d=links, vertices=nodes, directed=T)

colour <- c('azure3', 'coral1')
V(net)$color <- colour[V(net)$label.type]
E(net)$width <- E(net)$weight*1.5
V(net)$size <- degrees*2
plot.igraph(net, vertex.label = nodes$id, vertex.label.cex = 0.2,layout=layout_with_fr,edge.arrow.size=.3)
legend(x=-1.5, y=-1.1, c('Shipper', 'Consignee'), pch=21, col="#777777", pt.bg=colour)


# Answers to the questions: 

degrees <- degree(net, mode = 'all') # min: 1, max: 13, total: 144
density <- edge_density(net, loops =F) #0.009193054

