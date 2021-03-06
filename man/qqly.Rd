% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qqly.R
\name{qqly}
\alias{qqly}
\alias{qqly.default}
\alias{qqly.qqr}
\title{Creates a plotly Q-Q plot}
\usage{
qqly(x, col = "#252525", size = 1, type = 20, abline_col = "red",
  abline_size = 0.5, abline_type = 1, highlight = NULL,
  highlight_color = "#00FF00", xlab = "Expected -log10(p)",
  ylab = "Observed -log10(p)", title = "Q-Q Plot", ...)
}
\arguments{
\item{x}{Can be an object of class \code{qqr} produced by the
\code{\link{qqr}} function or a \code{data.frame} which must contain at
least the following column: \itemize{ \item{a p-value, must be numeric} }}

\item{col}{A \code{character} indicating the color of the points. Can
be \href{http://www.rapidtables.com/web/color/RGB_Color.htm}{Hex Codes} as
well.}

\item{size}{A \code{numeric} specifying the size of the points. Default
is 1}

\item{type}{An integer between 0 and 25 specifying the point shape.
Default is 20 (filled circle). See
\href{http://www.cookbook-r.com/Graphs/Shapes_and_line_types/}{R Cookbook}
for complete list}

\item{abline_col}{A \code{character} indicating the color of the 45 degree
diagonal line. Can be
\href{http://www.rapidtables.com/web/color/RGB_Color.htm}{Hex Codes} as
well. Default is \code{"red"}.}

\item{abline_size}{A \code{numeric} indicating the size of the 45 degree
diagonal line. Default is 0.5.}

\item{abline_type}{An integer between 0 and 6 specifying the line type of the
diagonal 45 degree line. Default is 1 (solid line). See
\href{http://www.cookbook-r.com/Graphs/Shapes_and_line_types/}{R Cookbook}
for complete list}

\item{highlight}{A character vector of SNPs in your dataset to highlight.
These SNPs should all be in your dataset. Default is \code{NULL} which
means that nothing is highlighted.}

\item{highlight_color}{Color used to highlight points. Only used if
\code{highlight} argument has been specified}

\item{xlab}{X-axis label. Default is \code{"Expected -log10(p)"}}

\item{ylab}{Y-axis label. Default is \code{"Observed -log10(p)"}}

\item{title}{Title of the plot. Default is \code{"Q-Q Plot"}}

\item{...}{other parameters passed to \code{\link{qqr}}}
}
\value{
An interactive Q-Q plot.
}
\description{
Creates an interactive Q-Q plot with multiple annotation options
}
\note{
This function first creates a \code{ggplot2} object and then converts
  it to a \code{plotly} object using \code{\link[plotly]{ggplotly}}
}
\examples{
\dontrun{
library(manhattanly)
qqly(HapMap)

# highlight SNPs of interest
# 'signigicantSNP' is a character vector of SNPs included in this package
qqly(HapMap, snp = "SNP", highlight = significantSNP)
}

}
\seealso{
\code{\link{qqr}}, \code{\link{HapMap}},
  \code{\link{significantSNP}}, \code{\link[qqman]{qq}},
  \url{https://github.com/stephenturner/qqman}
}

