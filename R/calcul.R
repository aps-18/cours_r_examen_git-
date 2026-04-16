#' Calculer la fréquentation moyenne par monument
#'
#' Cette fonction calcule la fréquentation moyenne pour chaque monument.
#'
#' @param data Un data frame contenant les données de fréquentation.
#'
#' @return Un tibble avec le nom du monument et sa fréquentation moyenne.
#' @export

calcul_total_moyen_par_monument <- function(data) {

  resultat <- data |>
    dplyr::group_by(`Nom de l'établissement`) |>
    dplyr::summarise(
      `Fréquentation moyenne` = mean(`Total`, na.rm = TRUE)
    ) |>
    dplyr::arrange(desc(`Fréquentation moyenne`)) |>
    dplyr::ungroup()

  return(resultat)
}
