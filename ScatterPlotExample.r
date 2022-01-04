---
title: "Intro To GGPlot2"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries and data
library(readr)
library(dplyr)
library(ggplot2)
movies <- read_csv("imdb.csv")
```

```{r}
# Add labels as specified
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
       geom_point(aes(color=nrOfGenre), alpha=0.5)  + labs(title ="Movie Ratings Vs Award Wins", subtitle="From IMDB dataset", x="Movie Rating", y="Number of Award Wins", color="Number of Genre")


# Prints the plot
viz
```

```{r message=FALSE}
```