## code to prepare `DATASET` dataset goes here

Flagstaff_Weather <- read.csv('./data-raw/Pulliam_Airport_Weather_Station.csv')
Flagstaff_Weather <- dplyr::select(Flagstaff_Weather, DATE, PRCP, SNOW, TMAX, TMIN)
Flagstaff_Weather <- dplyr::mutate(Flagstaff_Weather, DATE = as.Date(DATE))

usethis::use_data(Flagstaff_Weather, overwrite = TRUE)

