#' Dictionary Based Lemmatization
#'
#' Utilizes tokenization and dictionary lookup for lemmatization of text.
#' Lemmatization is defined as  "grouping together the inflected forms of a word
#' so they can be analysed as a single item" (wikipedia).  While dictionary
#' lookup of tokens is not a true morphological analysis, this style of lemma
#' replacement is fast and typically still robust for many applications
#' @docType package
#' @name lemmar
#' @aliases lemmar package-lemmar
NULL


#' 2012 U.S. Presidential Debates
#'
#' A dataset containing a cleaned version of all three presidential debates for
#' the 2012 election.
#'
#' @details
#' \itemize{
#'   \item person. The speaker
#'   \item tot. Turn of talk
#'   \item dialogue. The words spoken
#'   \item time. Variable indicating which of the three debates the dialogue is from
#' }
#'
#' @docType data
#' @keywords datasets
#' @name presidential_debates_2012
#' @usage data(presidential_debates_2012)
#' @format A data frame with 2912 rows and 4 variables
NULL





#' Sam I Am Text
#'
#' A dataset containing a character vector of the text from Seuss's 'Sam I Am'.
#'
#' @docType data
#' @keywords datasets
#' @name sam_i_am
#' @usage data(sam_i_am)
#' @format A character vector with 169 elements
#' @references Seuss, Dr. (1960). Green Eggs and Ham.
NULL
