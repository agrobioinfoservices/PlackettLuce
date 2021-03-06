% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decode.R
\name{decode}
\alias{decode}
\title{Decode Orderings using a Key to Item Names}
\usage{
decode(orderings, items, code = NULL)
}
\arguments{
\item{orderings}{A data frame of coded orderings.}

\item{items}{A data frame of the items in each ranking, or a vector of
common items.}

\item{code}{(Optional) a vector giving the key to the code. If missing,
\code{names(items)} is used for a character code, while \code{seq(items)} is used
for a numeric code.}
}
\value{
A data frame with the coded values replaced by the item names.
}
\description{
Decode orderings by replacing numeric or character coded values with item
names.
}
\examples{
# orderings of up to 3 items coded as A, B, C
orderings <- data.frame(Rank1 = c("A", "B"),
                        Rank2 = c("C", "A"),
                        Rank3 = c("B", NA),
                        stringsAsFactors = FALSE)
items <- data.frame(A = c("banana", "apple"),
                    B = c("orange", "pear"),
                    C = c("apple", NA),
                    stringsAsFactors = FALSE)
decode(orderings, items)

# orderings with ties of up to 3 items, coded 1:3
orderings <- data.frame(Rank1 = c(1, 3),
                        Rank2 = I(list(c(2, 3), 2)),
                        Rank3 = c(NA, 1),
                        stringsAsFactors = FALSE)
items <- data.frame(A = c("banana", "apple"),
                    B = c("orange", "pear"),
                    C = c("apple", "orange"),
                    stringsAsFactors = FALSE)
decode(orderings, items)

# same items in each comparison
items <- c(A = "banana", B = "orange", C = "pear")
decode(orderings, items)
}
