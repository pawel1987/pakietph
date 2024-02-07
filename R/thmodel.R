#' Calculate TH for given age with actual age and height
#'
#' @param H1 Aktualna wysokość drzewostanu
#' @param T1 Aktualny wiek drzewostanu
#' @param T2 Wiek, dla którego liczymy wysokość
#'
#' @return wektor numeryczny
#' @export
#'
#' @examples
#' #' thmode(20, 70, 110)
thmodel = function(H1, T1, T2){
  b1 = 1.3084
  b2 = 9338.7
  b3 = 25.944
  return(H1 * (T2^b1 * (T1^b1 * ((H1 - b3) + ((H1 - b3)^2 + (2 *
                                                               b2 * H1)/(T1^b1))^0.5) + b2))/(T1^b1 * (T2^b1 * ((H1 - b3) +
                                                                                                                  ((H1 - b3)^2 + (2 * b2 * H1)/(T1^b1))^0.5) + b2))
  )
}
