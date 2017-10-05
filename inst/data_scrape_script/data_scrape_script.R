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

doctemp <- c(
    "#' %s Lemma Dictionary",
    "#'",
    "#' A dataset containing %s tokens and corresponding lemmas. This data set",
    "#' comes from \\url{http://www.lexiconista.com}, and is made freely available",
    "#' under the ODbL 1.0 license (\\url{https://opendatacommons.org/licenses/odbl/summary}).",
    "#' Note that tokes with more than one lemma were dropped from the data set.",
    "#'",
    "#' @details",
    "#' \\itemize{",
    "#'   \\item token. An inflected token with affixes",
    "#'   \\item lemma. A base form",
    "#' }",
    "#'",
    "#' @docType data",
    "#' @keywords datasets",
    "#' @name hash_lemma_%s",
    "#' @usage data(hash_lemma_%s)",
    "#' @format A data frame with %s rows and 2 variables",
    "#' @references \\url{http://www.lexiconista.com}",
    "NULL",
    '',
    '',
    ''
)

cat('', append = FALSE, file = 'R/hash_lemma.R')

Map(function(x, y){

    ## download the zip file & unzip it
    ziploc <- x %>%
        textreadr::download()

    utils::unzip(ziploc, exdir = dirname(ziploc))

    ## Readin and convert to keyed/hashed data.table
    hash_lemmas <- read.delim(
        file.path(dirname(ziploc), gsub('\\.zip', '.txt', basename(ziploc))),
        header = FALSE,
        encoding = 'UTF-8',
        stringsAsFactors = FALSE
    ) %>%
    setNames(c('lemma', 'token')) %>%
    select(token, lemma) %>%
    data.table::as.data.table()

    data.table::setkey(hash_lemmas, 'token')

    ## drop where lemma equals token
    hash_lemmas <- hash_lemmas[,
        'token_same_lemma' := token == lemma][
        token_same_lemma == FALSE,][,
        token_same_lemma := NULL
    ][]

    ## remove dupes, taking the first one
    uDT <- unique(hash_lemmas)
    if (nrow(uDT) != nrow(hash_lemmas)){
        hash_lemmas[, "primary":=FALSE]
        hash_lemmas[uDT, primary:=TRUE, mult="first"][]

        hash_lemmas <- hash_lemmas[primary == TRUE,][, primary := NULL][]
    }

    ## dealing with duped tokens
    ## option 1: remove dupes tokens; drop them or ignore them
    dupes <- hash_lemmas[duplicated(hash_lemmas[, 'token', with = FALSE]),][,'token', with = FALSE]
    hash_lemmas <- hash_lemmas[!dupes, on = "token"]

    ## option 2: remove first all but the first lemma for dupped tokens
    ##hash_lemmas <- hash_lemmas[!duplicated(hash_lemmas[, 'token', with = FALSE]),]

    ## rename and save data
    eval(parse(text = paste0('hash_lemma_', y, ' <- hash_lemmas')))
    eval(parse(text = paste0('pax::new_data(hash_lemma_', y, ', doc.path = NULL)')))

    lang <- meta %>%
        filter(short == y) %>%
        pull(language)

    ## add documentation
    cat(
        sprintf(paste(doctemp, collapse = '\n'), lang, lang, y, y, nrow(hash_lemmas)),
        append = TRUE, file = 'R/hash_lemma.R'
    )

}, meta$link, meta$short)


#
#
#
# chunks <- readLines('R/lemma-package.R') %>%
#     textshape::split_match()
#
#
# chunks[-1] <- lapply(chunks[-1], function(x){
#
#
#     sh <- gsub('^#\' @name hash_lemma_', '', grep('@name', x, value = TRUE))
#
#     lang <- meta %>%
#         filter(short == sh) %>%
#         pull(language)
#
#     c(gsub('<<\\d>>', lang, x), '', '')
# })
#
# cat(paste(unlist(chunks), collapse = '\n'), file = 'R/lemma-package.R')


