library(tidyverse)

library(nycflights13)

flights_airline <- flights |>
  left_join(airlines, by = c("carrier" = "carrier"))
