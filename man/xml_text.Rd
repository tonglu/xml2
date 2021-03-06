% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xml_text.R
\name{xml_text}
\alias{xml_text}
\alias{xml_text<-}
\title{Extract or modify the text}
\usage{
xml_text(x, trim = FALSE)

xml_text(x) <- value
}
\arguments{
\item{x}{A document, node, or node set.}

\item{trim}{If \code{TRUE} will trim leading and trailing spaces.}

\item{value}{character vector with replacement text.}
}
\value{
A character vector, the same length as x.
}
\description{
Extract or modify the text
}
\examples{
x <- read_xml("<p>This is some text. This is <b>bold!</b></p>")
xml_text(x)
xml_text(xml_children(x))

x <- read_xml("<x>This is some text. <x>This is some nested text.</x></x>")
xml_text(x)
xml_text(xml_find_all(x, "//x"))

x <- read_xml("<p>   Some text    </p>")
xml_text(x, trim = TRUE)
}

