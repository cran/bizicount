#' @importFrom texreg extract
#' @importFrom texreg createTexreg
#' @importFrom DHARMa createDHARMa
#' @importFrom rlang env_has
#' @importFrom rlang env_poke
#' @import Formula
#' @importFrom pbivnorm pbivnorm
#' @importFrom numDeriv hessian
#' @importFrom MASS glm.nb
#' @importFrom MASS mvrnorm
#' @import stats
#' @import utils
#' @import methods
#'
#' @title bizicount: Copula-Based Bivariate Zero-Inflated Count Regression
#'   Models
#'
#' @description The package provides regression functions for copula-based
#'   bivariate count models, with and without zero-inflation, as well as
#'   regression functions for univariate zero-inflated count models. Generic
#'   methods from the \code{\link[texreg]{texreg-package}} and
#'   \code{\link[DHARMa]{DHARMa}} are extended to support this
#'   package, namely for the purposes of producing professional tables and
#'   carrying out post-estimation diagnostics.
#'
#' @section Bivariate Functions:
#'
#' \itemize{
#'
#' \item \code{\link{bizicount}} -- The primary function of this package.
#' Carries out copula-based bivariate count regression via maximum likelihood
#' using numerical optimization. Supports both zero-inflated and non-inflated
#' distributions.
#'
#' \item \code{\link{extract.bizicount}} -- Method for the texreg package's
#' \code{\link[texreg]{extract}} generic. Creates a list of texreg objects, one
#' for each margin, for use with that package's other functions.
#'
#' \item \code{\link{make_DHARMa}} -- Creates a list of DHARMa objects, one for
#' each margin, for \code{\link{bizicount}} models. A wrapper around
#' \code{\link[DHARMa]{createDHARMa}}.
#'
#' \item \code{\link{simulate.bizicount}} -- Method that simulates observations
#' using the fitted model's parameters, primarily for use with DHARMa.
#'
#'
#' }
#'
#' @section Univariate Functions:
#'
#' \itemize{
#'
#' \item \code{\link{zic.reg}} -- Univariate zero-inflated count regression
#' models via maximum likelihood.
#'
#' \item \code{\link{extract.zicreg}} -- Method for the texreg package's
#' \code{\link[texreg]{extract}} generic. Creates a texreg object that
#' interfaces with that package's methods.
#'
#' \item \code{\link{simulate.zicreg}} -- Method for simulating from the fitted
#' model. Results are generally used for creating DHARMa objects.
#'
#' }
#'
#' @author John Niehaus
#' @docType package
#' @name bizicount-package

NULL