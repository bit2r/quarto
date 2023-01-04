# Palmer penguin project
## Analysis of penguin data
### Load libraries
library(tidyverse)
library(ggplot2)
library(gridExtra)
library(grid)
library(cowplot)
library(ggrepel)
library(ggforce)
### Load data
penguins <- read_csv("https://raw.githubusercontent.com/allisonhorst/palmerpenguins/master/inst/extdata/penguins.csv")
### Summary of data
summary(penguins)
### First look at data
glimpse(penguins)
### Remove NA values
penguins <- penguins %>% drop_na()
### Create a new column for the penguin species
penguins <- penguins %>% mutate(species = factor(species))
### Plot: penguin species
penguin_species <- ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Penguin Species",
       x = "Species",
       y = "Count") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
  penguin_species
### Plot: penguin body mass
penguin_mass <- ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Penguin Body Mass",
       x = "Body Mass (g)",
       y = "Count") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
  penguin_mass
### Plot: penguin flipper length
penguin_flipper <- ggplot(penguins, aes(x = flipper_length_mm)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Penguin Flipper Length",
       x = "Flipper Length (mm)",
       y = "Count") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
  penguin_flipper
### Plot: penguin bill length
penguin_bill <- ggplot(penguins, aes(x = bill_length_mm)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Penguin Bill Length",
       x = "Bill Length (mm)",
       y = "Count") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
  penguin_bill
### Plot: penguin bill depth
penguin_depth <- ggplot(penguins, aes(x = bill_depth_mm)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Penguin Bill Depth",
       x = "Bill Depth (mm)",
       y = "Count") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))

