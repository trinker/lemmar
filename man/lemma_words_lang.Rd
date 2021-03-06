% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lemma_words_lang.R
\name{lemmatize_words_ast}
\alias{lemmatize_words_ast}
\alias{lemmatize_words_bg}
\alias{lemmatize_words_ca}
\alias{lemmatize_words_cs}
\alias{lemmatize_words_en}
\alias{lemmatize_words_et}
\alias{lemmatize_words_fr}
\alias{lemmatize_words_gl}
\alias{lemmatize_words_de}
\alias{lemmatize_words_hu}
\alias{lemmatize_words_ga}
\alias{lemmatize_words_gv}
\alias{lemmatize_words_it}
\alias{lemmatize_words_fa}
\alias{lemmatize_words_pl}
\alias{lemmatize_words_pt}
\alias{lemmatize_words_ro}
\alias{lemmatize_words_gd}
\alias{lemmatize_words_sk}
\alias{lemmatize_words_sl}
\alias{lemmatize_words_es}
\alias{lemmatize_words_sv}
\alias{lemmatize_words_uk}
\alias{lemmatize_words_cy}
\title{Asturian Word Lemmatizer}
\usage{
lemmatize_words_ast(x, dictionary = lemmar::hash_lemma_ast, ...)

lemmatize_words_bg(x, dictionary = lemmar::hash_lemma_bg, ...)

lemmatize_words_ca(x, dictionary = lemmar::hash_lemma_ca, ...)

lemmatize_words_cs(x, dictionary = lemmar::hash_lemma_cs, ...)

lemmatize_words_en(x, dictionary = lemmar::hash_lemma_en, ...)

lemmatize_words_et(x, dictionary = lemmar::hash_lemma_et, ...)

lemmatize_words_fr(x, dictionary = lemmar::hash_lemma_fr, ...)

lemmatize_words_gl(x, dictionary = lemmar::hash_lemma_gl, ...)

lemmatize_words_de(x, dictionary = lemmar::hash_lemma_de, ...)

lemmatize_words_hu(x, dictionary = lemmar::hash_lemma_hu, ...)

lemmatize_words_ga(x, dictionary = lemmar::hash_lemma_ga, ...)

lemmatize_words_gv(x, dictionary = lemmar::hash_lemma_gv, ...)

lemmatize_words_it(x, dictionary = lemmar::hash_lemma_it, ...)

lemmatize_words_fa(x, dictionary = lemmar::hash_lemma_fa, ...)

lemmatize_words_pl(x, dictionary = lemmar::hash_lemma_pl, ...)

lemmatize_words_pt(x, dictionary = lemmar::hash_lemma_pt, ...)

lemmatize_words_ro(x, dictionary = lemmar::hash_lemma_ro, ...)

lemmatize_words_gd(x, dictionary = lemmar::hash_lemma_gd, ...)

lemmatize_words_sk(x, dictionary = lemmar::hash_lemma_sk, ...)

lemmatize_words_sl(x, dictionary = lemmar::hash_lemma_sl, ...)

lemmatize_words_es(x, dictionary = lemmar::hash_lemma_es, ...)

lemmatize_words_sv(x, dictionary = lemmar::hash_lemma_sv, ...)

lemmatize_words_uk(x, dictionary = lemmar::hash_lemma_uk, ...)

lemmatize_words_cy(x, dictionary = lemmar::hash_lemma_cy, ...)
}
\arguments{
\item{x}{A vector of words.}

\item{dictionary}{A dictionary of base terms and lemmas to use for
replacement.  The first column should be the full word form in lower case
while the second column is the corresponding replacement lemma.}

\item{\ldots}{Other arguments passed to \code{\link[textshape]{split_token}}.}
}
\description{
A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_ast} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_bg} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_ca} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_cs} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_en} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_et} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_fr} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_gl} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_de} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_hu} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_ga} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_gv} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_it} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_fa} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_pl} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_pt} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_ro} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_gd} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_sk} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_sl} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_es} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_sv} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_uk} set.

A wrapper for \code{lemmatize_words} that has the default
\code{dictionary = lemmar::hash_lemma_cy} set.
}
