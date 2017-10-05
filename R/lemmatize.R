#' Lemmatize a Vector of Strings
#'
#' Lemmatize a vector of strings.
#'
#' @param x A vector of strings.
#' @param dictionary A dictionary of base terms and lemmas to use for
#' replacement.  The first column should be the full word form in lower case
#' while the second column is the corresponding replacement lemma.
#' @param \ldots Other arguments passed to \code{\link[textshape]{split_token}}.
#' @rdname lemmatize
#' @return Returns a vector of lemmatized strings.
#' @note The lemmatizer splits the string apart into tokens for speed
#' optimization.  After the lemmatizing occurs the strings are pasted back
#' together.  The strings are not guaranteed to retain exact spacing of the
#' original.
#' @export
#' @examples
#' x <- c(
#'     'the dirtier dog has eaten the pies',
#'     'that shameful pooch is tricky and sneaky',
#'     "He opened and then reopened the food bag",
#'     'There are skies of blue and red roses too!',
#'     NA,
#'     "The doggies, well they aren't joyfully running.",
#'     "The daddies are coming over...",
#'     "This is 34.546 above"
#' )
#'
#' lemmatize(x)
#'
#' ## Bigger data set
#' library(dplyr)
#' presidential_debates_2012$dialogue %>%
#'     head()
#' gc(); tic <- Sys.time()
#' presidential_debates_2012$dialogue %>%
#'     lemmatize() %>%
#'     head()
#' cat(sprintf(
#'     '%s seconds for %s rows of text\n',
#'     round(Sys.time() - tic, 2),
#'     nrow(presidential_debates_2012)
#' ))
lemmatize <- function(x, dictionary = lemma::hash_lemma_en, ...) {

    na_locs <- is.na(x)

    numbs <- stats::na.omit(unique(unlist(stringi::stri_extract_all_regex(x, numreg))))
    x2 <- textclean::sub_holder(x, numbs)
    tokens <- textshape::split_token(x2[['output']], lower = FALSE, ...)

    locs <- textshape::starts(sapply(tokens, length))[-1]

    lemmatized <- textshape::split_index(lemmatize_words(unlist(tokens), dictionary = dictionary), locs)

    lemmatized[na_locs] <- x[na_locs]
    lemmatized[!na_locs] <- gsub("(\\s+)([.!?,;:])", "\\2",
        unlist(lapply(lemmatized[!na_locs], paste, collapse = " ")), perl = TRUE)

    x2$unhold(unlist(lemmatized))
}

#' Lemmatize a Vector of Words
#'
#' Lemmatize a vector of words.
#'
#' @param x A vector of words.
#' @param dictionary A dictionary of base terms and lemmas to use for
#' replacement.  The first column should be the full word form in lower case
#' while the second column is the corresponding replacement lemma.
#' @param \ldots ignored.
#' @rdname lemmatize_words
#' @return Returns a vector of lemmatized words.
#' @export
#' @examples
#' x <- c("the", NA, 'doggies', ',', 'well', 'they', 'aren\'t', 'Joyfully', 'running', '.')
#' lemmatize_words(x)
lemmatize_words <- function(x, dictionary = lemma::hash_lemma_en, ...) {
    check_dictionary(dictionary)
    locs <- match(tolower(x), tolower(dictionary[[1]]))
    x[!is.na(locs)] <- dictionary[locs[!is.na(locs)], ][[2]]
    x
}
