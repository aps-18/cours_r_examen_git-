filtrer_monument <- function(data, monument) {
  data[data$`Nom de l'établissement` == monument, ]
}
