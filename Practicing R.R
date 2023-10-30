library(tidyverse)
library(palmerpenguins)
library(ggthemes)
penguins #will show you the tibble
view(penguins) #will show you the df in a new tab
glimpse(penguins) #will summarize the rows, columns, and variables 

#making a plot summarizing the correlation between the length of the flippers of a penguin and it's height, 
  #segmented by species
ggplot(
  data=penguins, 
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) + 
  geom_point(mapping =aes(color = species, shape = species)) + 
  geom_smooth(method = "lm") + #adding a line of best fit 
  labs( 
    title = "Body mass and fliper length", 
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y ="Body mass (g)", 
      color = "Species", shape = "Species", 
    ) + 
    scale_color_colorblind() 

#2.2.5 Exercis
#1 
glimpse(penguins)
#there are 344 rows
#2
?penguins
#bill_depth_mm = a number denoting bill depth (millimeters)
#3 
ggplot(
  data=penguins, 
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
  ) + 
  geom_point(aes(color = species, shape = species))
             
#4 scaterplot of species and bill depth? 
ggplot( 
  data=penguins, 
  mapping = aes(x = bill_depth_mm, y = species)
) + 
  geom_boxplot()
#5why is there an error?
ggplot(data = penguins) + 
    geom_point()
