library(rosdata)
library(tidyverse)
beauty<-rosdata::beauty
beauty %>%
  ggplot(aes(y=beauty,x=eval)) +
  geom_point() +
  geom_smooth(method = "lm",se=FALSE) ->g1
ggsave(g1,filename = "beauty.png")
