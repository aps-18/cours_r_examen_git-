test_that("filtrer_monument filtre correctement un monument", {
  res <- filtrer_monument(df, "Arc de Triomphe")
  expect_true(all(res$nom_etablissement == "Arc de Triomphe"))
})

test_that("calcul_total_moyen_par_monument retourne un tableau", {
  res <- calcul_total_moyen_par_monument(df)
  expect_true(is.data.frame(res))
  expect_true("nom_etablissement" %in% names(res))
  expect_true("total_moyen" %in% names(res))
})

test_that("plot_total_moyen_par_monument retourne un graphique", {
  res <- plot_total_moyen_par_monument(df, top_n = 5)
  expect_s3_class(res, "ggplot")
})
