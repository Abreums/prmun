## code to prepare `prmun` dataset goes here

library(sf)
prmun <- read_sf(dsn = "data-raw",
                 layer = "PR_Municipios_2019")

# pr <- pr %>%
#     dplyr::mutate(coord_x = as.character(sf::st_coordinates(st_centroid(geometry))[,1]),
#                   coord_y = as.character(sf::st_coordinates(st_centroid(geometry))[,2]))

prmun <- prmun %>%
    sf::st_drop_geometry()


usethis::use_data(prmun, overwrite = TRUE)
