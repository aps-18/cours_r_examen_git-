#' Calculer la fréquentation moyenne par monument
#'
#' Cette fonction calcule la fréquentation moyenne pour chaque monument.
#'
#' @param data Un data frame contenant les données de fréquentation.
#' @importFrom rlang .data
#' @return Un tibble avec le nom du monument et sa fréquentation moyenne.
#' @export
#'

calcul_total_moyen_par_monument <- function(data) {
  resultat <- data |>
    dplyr::group_by(.data$nom_etablissement) |>
    dplyr::summarise(
      total_moyen = mean(.data$total, na.rm = TRUE),
      .groups = "drop"
    ) |>
    dplyr::arrange(dplyr::desc(.data$total_moyen))

  return(resultat)
}
