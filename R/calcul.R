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
