#' One or more regular expression.
#'
#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rebus
#' @importFrom magrittr %>%
#' @importFrom stringr str_detect
#' @export

one_or_plus <- function(x){
    if (!is.character(x)) {
        stop("Please type value in Character.")
    }
    if (str_detect(x,'\\[|\\]')) {
        one_or_more(x)
    } else {
        x %>%
            paste0('+')
    }
}

