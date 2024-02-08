df_sample = data.frame(wiek = 70:80, wysokosc = 20)
write.csv2(df_sample, "inst/dane_przykladowe/dane_przykladowe.csv", row.names = F)
usethis::use_data(df_sample)
