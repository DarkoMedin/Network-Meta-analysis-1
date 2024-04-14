#Install and load the netmeta package
install.packages('netmeta')
library(netmeta)

#Load the dataset 'nmadataset.csv' using the link provided
#Lets explore the structure of the nma dataset
dataset=nmadataset
View(dataset)

#Exploring the use of netmeta function
net <- netmeta(TE, seTE, trt1name, trt2name, study,
               data = dataset, sm = "RR", 
               reference = "plac")

#Creating the first network meta-analysis graph
netgraph(net)


#Improved direct evidence network
netgraph(net,  plastic = FALSE,  
         points = TRUE, col = 'darkblue', 
         thickness = "number.of.studies", 
         lwd = 2.7, cex.points = 4, 
         offset=0.05, scale=1.1, col.points='red', 
         seq = 1)
