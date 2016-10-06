#' Help start conversations
#'
#' This function generates some helpful text
#'
#' @param who character(1) The name of the person you wish to talk to.
#'
#' @param how character(1) How to greet the conversant
#'
#' @return character(1) A line of text to be used when statrting conversation.
#'
#' @examples
#' hi("Ziqiang Chen")
#'
#' @export

hi <- function(who) {
    stopifnot(
        is.character(who),
        length(who)==1,
        !is.na(who)
    )
    paste("hello", shout(who), "you have", nchar(who),"letters in your name!")
}

shout <- function(who) {
    toupper(who)
}
