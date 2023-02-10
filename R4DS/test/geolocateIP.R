library(iptools)
library(IPtoCountry)

PROTOCOL_REGEX <- "^(?:(?:[[:alpha:]+.-]+)://)?"
PREFIX_REGEX <- "(?:www\\.)?"
HOSTNAME_REGEX <- "([^/]+)"
REST_REGEX <- ".*$"
URL_REGEX <- 
    paste0(PROTOCOL_REGEX, PREFIX_REGEX, HOSTNAME_REGEX, REST_REGEX)
domain.name <- function(urls) gsub(URL_REGEX, "\\1", urls)

for(i in seq(1,nrow(head(ipnocountry,1000)))){
    print(i)
    ip <- hostname_to_ip(domain.name(ipnocountry[i,4]))
    print(ip[[1]][1])
    ipnocountry[i,"ipad"] <- ip[[1]][1]
    ip <- NULL
}

ipnocountry[ipnocountry == "Not resolved"] <- NA

naremovedipnocountry <- ipnocountry |> filter(!is.na(ipad))

for(i in seq(1,nrow(head(naremovedipnocountry,1000)))){
    naremovedipnocountry[i,"CC"] <-
        as.character(
            IP_country(
                naremovedipnocountry[i,"ipad"],
            )
        )
    print(naremovedipnocountry[i,"CC"])
}