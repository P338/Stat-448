Mroz = read.csv("/Users/paul/Desktop/Mroz.csv", header = TRUE, sep = ",")
library(caret)
library(tibble)
for (i in 1:nrow(Mroz)){
  if (Mroz$work[i] == "yes" & Mroz$city[i] == "yes") {
    Mroz$workcity[i] = "A"
  }
  
  else if (Mroz$work[i] == "yes" & Mroz$city[i] == "no") {
    Mroz$workcity[i] = "B"
  }
  
  else if (Mroz$work[i] == "no" & Mroz$city[i] == "yes") {
    Mroz$workcity[i] = "C"
  }
  
  else if (Mroz$work[i] == "no" & Mroz$city[i] == "no") {
    Mroz$workcity[i] = "D"
  }
}
Mroz$workcity = as.factor(Mroz$workcity)
Mroz = as_tibble(Mroz)
Mroz

# Density Plots for workcity
featurePlot(x = Mroz[, c(3:6, 18)], 
            y = Mroz$workcity,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(3, 2), 
            auto.key = list(columns = 3))

featurePlot(x = Mroz[, c(9:12)], 
            y = Mroz$workcity,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(2, 2), 
            auto.key = list(columns = 3))

featurePlot(x = Mroz[, c(13:16)], 
            y = Mroz$workcity,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(2, 2), 
            auto.key = list(columns = 3))


# Density Plots for work
featurePlot(x = Mroz[, c(3:6, 18)], 
            y = Mroz$work,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(3, 2), 
            auto.key = list(columns = 2))

featurePlot(x = Mroz[, c(9:12)], 
            y = Mroz$work,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(2, 2), 
            auto.key = list(columns = 2))

featurePlot(x = Mroz[, c(13:16)], 
            y = Mroz$work,
            plot = "density", 
            scales = list(x = list(relation = "free"), 
                          y = list(relation = "free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(2, 2), 
            auto.key = list(columns = 2))




