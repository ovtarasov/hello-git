library(readr)
library(dplyr)

top100 <- read_csv("billboard100.csv")

top10 <- top100 |> 
  group_by(Date) |>
  filter(row_number() <= 10) |>
  ungroup()

write_csv(top10, "billboard.csv")
