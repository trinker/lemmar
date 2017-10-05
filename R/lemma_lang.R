#' Asturian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_ast} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @param \ldots Other arguments passed to \code{\link[textshape]{split_token}}.
#' @include utils.R lemmatize.R
lemmatize_ast <- function(x, dictionary = lemmar::hash_lemma_ast, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Bulgarian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_bg} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_bg <- function(x, dictionary = lemmar::hash_lemma_bg, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Catalan Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_ca} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_ca <- function(x, dictionary = lemmar::hash_lemma_ca, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Czech Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_cs} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_cs <- function(x, dictionary = lemmar::hash_lemma_cs, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' English Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_en} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_en <- function(x, dictionary = lemmar::hash_lemma_en, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Estonian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_et} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_et <- function(x, dictionary = lemmar::hash_lemma_et, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' French Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_fr} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_fr <- function(x, dictionary = lemmar::hash_lemma_fr, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Galician Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_gl} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_gl <- function(x, dictionary = lemmar::hash_lemma_gl, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' German Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_de} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_de <- function(x, dictionary = lemmar::hash_lemma_de, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Hungarian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_hu} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_hu <- function(x, dictionary = lemmar::hash_lemma_hu, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Irish Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_ga} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_ga <- function(x, dictionary = lemmar::hash_lemma_ga, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Manx Gaelic Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_gv} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_gv <- function(x, dictionary = lemmar::hash_lemma_gv, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Italian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_it} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_it <- function(x, dictionary = lemmar::hash_lemma_it, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Persian/Farsi Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_fa} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_fa <- function(x, dictionary = lemmar::hash_lemma_fa, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Polish Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_pl} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_pl <- function(x, dictionary = lemmar::hash_lemma_pl, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Portuguese Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_pt} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_pt <- function(x, dictionary = lemmar::hash_lemma_pt, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Romanian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_ro} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_ro <- function(x, dictionary = lemmar::hash_lemma_ro, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Scottish Gaelic Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_gd} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_gd <- function(x, dictionary = lemmar::hash_lemma_gd, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Slovak Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_sk} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_sk <- function(x, dictionary = lemmar::hash_lemma_sk, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Slovene Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_sl} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_sl <- function(x, dictionary = lemmar::hash_lemma_sl, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Spanish Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_es} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_es <- function(x, dictionary = lemmar::hash_lemma_es, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Swedish Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_sv} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_sv <- function(x, dictionary = lemmar::hash_lemma_sv, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Ukrainian Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_uk} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_uk <- function(x, dictionary = lemmar::hash_lemma_uk, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


#' Welsh Lemmatizer
#'
#' A wrapper for \code{lemmatize} that has the default
#' \code{dictionary = lemmar::hash_lemma_cy} set.
#'
#' @export
#' @rdname lemma_lang
#' @inheritParams lemmatize
#' @include utils.R lemmatize.R
lemmatize_cy <- function(x, dictionary = lemmar::hash_lemma_cy, ...){
    lemmatize(x = x, dictionary = dictionary, ...)
}


