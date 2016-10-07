#' Help start conversations
#'
#' This function generates some helpful text for causal conversations
#'
#' @param who character(1) The name of the person you wish to talk to.
#'
#' @param how character(1) How to greet the conversant
#'
#' @return character(1) A line of text to be used when statrting conversation.
#'
#' @examples
#' hi("Ziqiang Chen")
#' hi("Ziqiang Chen", "whisper")
#'
#' @export

hi <- function(who, how=c("shout","whisper")) {
    stopifnot(
        is.character(who),
        length(who)==1,
        !is.na(who)
    )
    how <- match.arg(how)
    fun = switch(how, shout=shout, whisper=whisper)
    paste("hello", fun(who), "you have", nchar(who),"letters in your name!")
}

shout <- function(who) {
    toupper(who)
}

whisper <- function(who) {
    tolower(who)
}
