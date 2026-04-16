#' Représenter la fréquentation moyenne des monuments
#'
#' Cette fonction produit un graphique des monuments les plus fréquentés
#' selon leur fréquentation moyenne.
#'
#' @param data Un data frame contenant les données de fréquentation.
#' @param top_n Le nombre de monuments à afficher.
#'
#' @return Un graphique ggplot2.
#' @export

library(ggplot2)
plot_total_moyen_par_monument <- function(data, top_n = 10) {

  df_resume <- data |>
    dplyr::group_by(`Nom de l'établissement`) |>
    dplyr::summarise(
      total_moyen = mean(`Total`, na.rm = TRUE)
    ) |>
    dplyr::arrange(desc(total_moyen)) |>
    head(top_n)

  ggplot2::ggplot(df_resume,
                  ggplot2::aes(x = reorder(`Nom de l'établissement`, total_moyen),
                               y = total_moyen)) +
    ggplot2::geom_col(fill = "steelblue") +
    ggplot2::coord_flip() +
    ggplot2::labs(
      title = "Fréquentation moyenne des monuments (Top 10)",
      x = "Monument",
      y = "Fréquentation moyenne"
    ) +
    ggplot2::theme_minimal()
}
