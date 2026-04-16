#' Filtrer les données par monument
#'
#' Cette fonction filtre le jeu de données selon le nom d'un monument.
#'
#' @param data Un data frame contenant les données de fréquentation.
#' @param monument Le nom du monument à sélectionner.
#'
#' @return Un data frame filtré.
#' @export

filtrer_monument <- function(data, monument) {
  data[data$nom_etablissement == monument, ]
}

