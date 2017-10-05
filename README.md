lemmar   
============


[![Build
Status](https://travis-ci.org/trinker/lemmar.svg?branch=master)](https://travis-ci.org/trinker/lemmar)

![](tools/lemmar_logo/r_lemmar.png)

**lemmar** utilizes tokenization and dictionary lookup for lemmatization
of text. Lemmatization is defined as

> "grouping together the inflected forms of a word so they can be
> analysed as a single item" (wikipedia)

While dictionary lookup of tokens is not a true morphological analysis,
this style of lemma replacement is fast and typically still robust for
many applications.


Table of Contents
============

-   [Data Source](#data-source)
-   [Installation](#installation)
-   [Contact](#contact)

Data Source
============


The dictionaries provided by this package come from
<http://www.lexiconista.com>, and are made freely available under the
ODbL 1.0 license (<https://opendatacommons.org/licenses/odbl/summary>).
Please respect this license in reusing the data within the lemmar
package including:

1.  Proper attribution to <http://www.lexiconista.com>
2.  Freely re-sharing any adapted data produced this data
3.  Keep the data open

Installation
============

To download the development version of **lemmar**:

Download the [zip
ball](https://github.com/trinker/lemmar/zipball/master) or [tar
ball](https://github.com/trinker/lemmar/tarball/master), decompress and
run `R CMD INSTALL` on it, or use the **pacman** package to install the
development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_current_gh("trinker/lemmar")

Contact
=======

You are welcome to:    
- submit suggestions and bug-reports at: <https://github.com/trinker/lemmar/issues>    
- send a pull request on: <https://github.com/trinker/lemmar/>    
- compose a friendly e-mail to: <tyler.rinker@gmail.com>    
