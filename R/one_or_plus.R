#' One or more regular expression.
#'
#' @param x input.
#'
#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rebus
#' @importFrom stringr str_detect
#' @export
#' @examples
#' one_or_plus("a")

one_or_plus <- function(x){
    if (!is.character(x)) {
        stop("Please type value in Character.")
    }
    if (stringr::str_detect(x,'\\[|\\]')) {
        rebus::one_or_more(x)
    } else {
        x %>%
            paste0('+')
    }
}

