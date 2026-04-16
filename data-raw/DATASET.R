library(readr)

url_jeu_de_donnees <- "https://data.culture.gouv.fr/explore/dataset/frequentation-des-monuments-nationaux/information/?dataChart=eyJxdWVyaWVzIjpbeyJjaGFydHMiOlt7InR5cGUiOiJjb2x1bW4iLCJmdW5jIjoiU1VNIiwieUF4aXMiOiJ0b3RhbCIsInNjaWVudGlmaWNEaXNwbGF5Ijp0cnVlLCJjb2xvciI6InJhbmdlLWN1c3RvbSIsInBvc2l0aW9uIjoiY2VudGVyIn1dLCJ4QXhpcyI6InJlZ2lvbiIsIm1heHBvaW50cyI6NTAsInNvcnQiOiIiLCJzZXJpZXNCcmVha2Rvd24iOiJhbm5lZSIsInNlcmllc0JyZWFrZG93blRpbWVzY2FsZSI6IiIsImNvbmZpZyI6eyJkYXRhc2V0IjoiZnJlcXVlbnRhdGlvbi1kZXMtbW9udW1lbnRzLW5hdGlvbmF1eCIsIm9wdGlvbnMiOnt9fX1dLCJ0aW1lc2NhbGUiOiIiLCJkaXNwbGF5TGVnZW5kIjp0cnVlLCJhbGlnbk1vbnRoIjp0cnVlfQ%3D%3D"

df <- read_csv2("data-raw/frequentation-des-monuments-nationaux.csv")

df$Total <- as.numeric(df$Total)
df$Gratuit <- as.numeric(df$Gratuit)
df$Payant <- as.numeric(df$Payant)

usethis::use_data(df, overwrite = TRUE)
