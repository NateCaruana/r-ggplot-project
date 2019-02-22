library(tidyverse)

interviews_plotting <- read_csv("data_output/interviews_plotting.csv")

interviews_plot <- ggplot(data = interviews_plotting,
       aes(x = no_membrs, y = number_items)) + 
  geom_jitter(alpha = .5, width = 0.15, height = 0.15) #width and height are specifying the amount of jitter. 

#Saving the figure as an imagine, specifying size and resolution (e.g., dpi)
ggsave("fig_output/membrs_item.png", interviews_plot, width = 15, height = 10, dpi = 72)

interviews_plot
