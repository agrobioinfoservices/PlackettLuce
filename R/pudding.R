#' Paired Comparisons of Chocolate Pudding
#'
#' This is an example dataset from \cite{Davidson 1970} comprising paired
#' comparisons of chocolate pudding, with six brands in total. The responses
#' include tied outcomes, i.e. no preference.
#'
#' @format A data frame with 15 records and 6 variables:
#' \describe{
#'     \item{\code{i}}{The first brand in the comparison.}
#'     \item{\code{j}}{The second brand in the comparison.}
#'     \item{\code{r_ij}}{The frequency of paired comparisons of brand i and
#'     brand j.}
#'     \item{\code{w_ij}}{The frequency of preferences for i over j.}
#'     \item{\code{w_ji}}{The frequency of preferences for j over i.}
#'     \item{\code{t_ij}}{The frequency of no preference between i and j.}
#' }
#' @references
#' Davidson, R. R. (1970). On extending the Bradley-Terry model to accommodate
#' ties in paired comparison experiments. \emph{Journal of the American
#' Statistical Association}, \bold{65}, 317--328.
#' @examples
#'
#' # create orderings for each set of paired comparisons
#'
#' # wins for brand i and wins for brand j
#' i_wins <- data.frame(Winner = pudding$i, Loser = pudding$j)
#' j_wins <- data.frame(Winner = pudding$j, Loser = pudding$i)
#'
#' # ties: use an array list (easier with R >= 3.6.0)
#' if (getRversion() < "3.6.0"){
#'   n <- nrow(pudding)
#'   ties <- data.frame(Winner = array(split(pudding[c("i", "j")], 1:n), n),
#'                      Loser = rep(NA, 15))
#' } else {
#'   ties <- data.frame(Winner = asplit(pudding[c("i", "j")], 1),
#'                      Loser = rep(NA, 15))
#' }
#' head(ties, 2)
#'
#' # convert to rankings
#' R <- as.rankings(rbind(i_wins, j_wins, ties),
#'                  input = "orderings")
#' head(R, 2)
#' tail(R, 2)
#'
#' # define weights as frequencies of each ranking
#' w <- unlist(pudding[c("w_ij", "w_ji", "t_ij")])
#'
#' # fit Plackett-Luce model: limit iterations to match paper
#' mod <- PlackettLuce(R, npseudo = 0, weights = w, maxit = 7)
"pudding"
