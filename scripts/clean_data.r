library(tidyverse)

library(nycflights13)

flights_airline <- flights |>
  left_join(airlines, by = c("carrier" = "carrier")) |>
  left_join(planes, by = c("tailnum" = "tailnum")) |>
  group_by(carrier) |>
  summarize(n())
