install.packages("arules")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("arulesViz", dependencies = TRUE)
library(dplyr)
library(arulesViz)
library(tidyverse)
library(arules)
library(arulesViz)
library(RColorBrewer)
Summary(Groceries)
apriori(Groceries.parameter=list(support=0.002,confidence=0.5))->rule1
str(Groceries)
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
inspect(rules[1:10])
arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
