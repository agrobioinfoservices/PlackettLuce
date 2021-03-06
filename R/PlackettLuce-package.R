#' Plackett-Luce Models for Rankings
#'
#' Plackett-Luce provides functions to prepare rankings data in order to fit
#' the Plackett-Luce model or Plackett-Luce trees. The implementation can handle
#' ties, sub-rankings and rankings that imply disconnected or weakly connected
#' preference networks. Methods are provided for summary and inference.
#'
#' The main function in the package is the model-fitting function
#' \code{\link{PlackettLuce}} and the help file for that function provides
#' details of the Plackett-Luce model, which is extended here to accommodate
#' ties.
#'
#' Rankings data must be passed to \code{PlackettLuce} in a specific form, see
#' \code{\link{rankings}} for more details. Other functions for handling
#' rankings include \code{choices} to express the rankings as
#' choices from alternatives; \code{adjacency} to create an adjacency matrix of
#' wins and losses implied by the rankings and \code{connectivity} to check the
#' connectivity of the underlying preference network.
#'
#' Several methods are available to inspect fitted Plackett-Luce models, help
#' files are available for less common methods or where arguments may be
#' specified: \code{\link{coef}}, \code{deviance}, \code{\link{fitted}},
#' \code{\link{itempar}}, \code{logLik}, \code{print},
#' \code{\link{qvcalc}}, \code{\link{summary}}, \code{\link{vcov}}.
#'
#' PlackettLuce also provides the function \code{pltree} to fit a Plackett-Luce
#' tree i.e. a tree that partitions the rankings by covariate values,
#' identifying subgroups with different sets of worth parameters for the items.
#' In this case \code{\link{group}} must be used to prepare the data.
#'
#' Several data sets are provided in the package: \code{\link{beans}},
#' \code{\link{nascar}}, \code{\link{pudding}}. The help files for these give
#' further illustration of preparing rankings data for modelling. The
#' \code{\link{read.soc}} function enables further example data sets of
#' "Strict Orders - Complete List" format (i.e. complete rankings with no ties)
#' to be downloaded from \href{https://www.preflib.org/}{PrefLib}.
#'
#' A full explanation of the methods with illustrations using the package data
#' sets is given in the vignette,
#' \code{vignette("Overview", package = "PlackettLuce")}.
#' @docType package
#' @name PlackettLuce-package
NULL
