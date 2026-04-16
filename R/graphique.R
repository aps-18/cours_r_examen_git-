#' Representation de la frequentation moyenne des monuments
#'
#' Cette fonction produit un graphique des monuments les plus frequentes.
#'
#' @param data Un data frame contenant les donnees.
#' @param top_n Le nombre de monuments a afficher.
#' @importFrom rlang .data
#' @return Un graphique ggplot2.
#' @export

plot_total_moyen_par_monument <- function(data, top_n = 10) {
  df_resume <- data |>
    dplyr::group_by(.data$nom_etablissement) |>
    dplyr::summarise(
      total_moyen = mean(.data$total, na.rm = TRUE),
      .groups = "drop"
    ) |>
    dplyr::arrange(dplyr::desc(.data$total_moyen)) |>
    utils::head(top_n)

  ggplot2::ggplot(
    df_resume,
    ggplot2::aes(
      x = stats::reorder(.data$nom_etablissement, .data$total_moyen),
      y = .data$total_moyen
    )
  ) +
    ggplot2::geom_col(fill = "steelblue") +
    ggplot2::coord_flip() +
    ggplot2::labs(
      title = "Frequentation moyenne des monuments (Top 10)",
      x = "Monument",
      y = "Frequentation moyenne"
    ) +
    ggplot2::theme_minimal()
}
