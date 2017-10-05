if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, tidyverse, xml2, rvest, textreadr, data.table)

root <- 'http://www.lexiconista.com/datasets/lemmatization'

dats <- root %>%
    xml2::read_html() %>%
    html_nodes('.downloads') %>%
    html_nodes('.zip')


meta <- dats %>%
    html_text() %>%
    data_frame(text = .) %>%
    mutate(
        language = gsub('(^.+?List:\\s+)([A-Za-z/ ]+)(\\s+\\(.+?$)', '\\2', text),
        short = gsub('(^[^(]+\\()([a-z]+)(\\).+$)', '\\2', text),
        n = as.numeric(gsub(',', '', gsub('(^.+?ZIP,\\s+)([0-9,]+)( pairs\\))', '\\2', text)))
    ) %>%
    select(-text) %>%
    bind_cols(
        dats %>%
            html_nodes('a') %>%
            html_attr('href') %>%
            {file.path('http://www.lexiconista.com', .)} %>%
            data_frame(link = .)
    )
##string version
lemma_lang_temp <- c(
    "#' %s Lemmatizer", 
    "#'", 
    "#' A wrapper for \\code{lemmatize} that has the default", 
    "#' \\code{dictionary = lemma::hash_lemma_%s} set.", 
    "#'", 
    "#' @export", 
    "#' @rdname lemma_lang", 
    "#' @inheritParams lemmatize", 
    "#' @include utils.R lemmatize.R",
    "lemmatize_%s <- function(x, dictionary = lemma::hash_lemma_%s, ...){",
    '    lemmatize(x = x, dictionary = dictionary, ...)',
    '}',
    '',
    '',
    ''
) %>%
    paste(collapse = '\n')

cat('', append = FALSE, file = 'R/lemma_lang.R')

Map(function(x, y){
    
    cat(sprintf(lemma_lang_temp, x, y, y, y), append = TRUE, file = 'R/lemma_lang.R')
    
}, meta$language, meta$short)

## word version
lemma_word_lang_temp <- c(
    "#' %s Word Lemmatizer", 
    "#'", 
    "#' A wrapper for \\code{lemmatize_words} that has the default", 
    "#' \\code{dictionary = lemma::hash_lemma_%s} set.", 
    "#'", 
    "#' @export", 
    "#' @rdname lemma_words_lang", 
    "#' @inheritParams lemmatize_words", 
    "#' @include utils.R lemmatize.R",
    "lemmatize_words_%s <- function(x, dictionary = lemma::hash_lemma_%s, ...){",
    '    lemmatize_words(x = x, dictionary = dictionary, ...)',
    '}',
    '',
    '',
    ''
) %>%
    paste(collapse = '\n')

cat('', append = FALSE, file = 'R/lemma_words_lang.R')

Map(function(x, y){
    
    cat(sprintf(lemma_word_lang_temp, x, y, y, y), append = TRUE, file = 'R/lemma_words_lang.R')
    
}, meta$language, meta$short)
