#' Asturian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_ast} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @param \ldots Other arguments passed to \code{\link[textshape]{split_token}}.
#' @include utils.R lemmatize.R
lemmatize_words_ast <- function(x, dictionary = lemmar::hash_lemma_ast, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Bulgarian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_bg} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_bg <- function(x, dictionary = lemmar::hash_lemma_bg, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Catalan Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_ca} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_ca <- function(x, dictionary = lemmar::hash_lemma_ca, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Czech Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_cs} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_cs <- function(x, dictionary = lemmar::hash_lemma_cs, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' English Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_en} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_en <- function(x, dictionary = lemmar::hash_lemma_en, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Estonian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_et} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_et <- function(x, dictionary = lemmar::hash_lemma_et, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' French Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_fr} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_fr <- function(x, dictionary = lemmar::hash_lemma_fr, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Galician Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_gl} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_gl <- function(x, dictionary = lemmar::hash_lemma_gl, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' German Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_de} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_de <- function(x, dictionary = lemmar::hash_lemma_de, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Hungarian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_hu} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_hu <- function(x, dictionary = lemmar::hash_lemma_hu, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Irish Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_ga} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_ga <- function(x, dictionary = lemmar::hash_lemma_ga, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Manx Gaelic Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_gv} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_gv <- function(x, dictionary = lemmar::hash_lemma_gv, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Italian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_it} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_it <- function(x, dictionary = lemmar::hash_lemma_it, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Persian/Farsi Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_fa} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_fa <- function(x, dictionary = lemmar::hash_lemma_fa, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Polish Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_pl} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_pl <- function(x, dictionary = lemmar::hash_lemma_pl, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Portuguese Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_pt} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_pt <- function(x, dictionary = lemmar::hash_lemma_pt, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Romanian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_ro} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_ro <- function(x, dictionary = lemmar::hash_lemma_ro, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Scottish Gaelic Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_gd} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_gd <- function(x, dictionary = lemmar::hash_lemma_gd, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Slovak Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_sk} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_sk <- function(x, dictionary = lemmar::hash_lemma_sk, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Slovene Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_sl} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_sl <- function(x, dictionary = lemmar::hash_lemma_sl, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Spanish Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_es} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_es <- function(x, dictionary = lemmar::hash_lemma_es, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Swedish Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_sv} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_sv <- function(x, dictionary = lemmar::hash_lemma_sv, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Ukrainian Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_uk} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_uk <- function(x, dictionary = lemmar::hash_lemma_uk, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


#' Welsh Word Lemmatizer
#'
#' A wrapper for \code{lemmatize_words} that has the default
#' \code{dictionary = lemmar::hash_lemma_cy} set.
#'
#' @export
#' @rdname lemma_words_lang
#' @inheritParams lemmatize_words
#' @include utils.R lemmatize.R
lemmatize_words_cy <- function(x, dictionary = lemmar::hash_lemma_cy, ...){
    lemmatize_words(x = x, dictionary = dictionary, ...)
}


