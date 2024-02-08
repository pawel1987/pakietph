# # thmodel(20, 25, 100)
# testthat::expect_equal(round(thmodel(20, 25, 100), 5), 45.38768)
# testthat::expect_error(thmodel(20, 25, "10"))

testthat::test_that("Wynik dla zadanych wysokośći i wieku jest zgodny", {
  testthat::expect_equal(round(thmodel(20, 25, 100), 5), 45.38768)
})

testthat::test_that("Zgłośc bład jeżeli bładny typ zmiennej", {
  testthat::expect_error(thmodel(20, 25, "10"))
})


# round(pakietph::thmodel(pakietph::df_sample[,2], pakietph::df_sample[,1], 80), 5)
# paste(round(pakietph::thmodel(pakietph::df_sample[,2], pakietph::df_sample[,1], 80), 5), collapse = ", ")
# 21.84079, 21.63869, 21.44097, 21.24748, 21.05808, 20.87262, 20.69097, 20.513, 20.33859, 20.16763, 20
testthat::test_that("Wynik dla danych przykładowych jest zgodny", {
  testthat::expect_equal(round(pakietph::thmodel(pakietph::df_sample[,2], pakietph::df_sample[,1], 80), 5), c(21.84079, 21.63869, 21.44097, 21.24748, 21.05808, 20.87262, 20.69097, 20.513, 20.33859, 20.16763, 20))
})
