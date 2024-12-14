top10 <- read_csv("billboard.csv") |>
  select(date = "Date",
         song = "Song",
         artist = "Artist")
