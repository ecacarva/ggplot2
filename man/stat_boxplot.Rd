\name{stat_boxplot}
\alias{stat_boxplot}
\title{Calculate components of box and whisker plot.}
\usage{
  stat_boxplot(mapping = NULL, data = NULL,
    geom = "boxplot", position = "dodge", na.rm = FALSE,
    coef = 1.5, ...)
}
\arguments{
  \item{coef}{length of the whiskers as multiple of IQR.
  Defaults to 1.5}

  \item{na.rm}{If \code{FALSE} (the default), removes
  missing values with a warning.  If \code{TRUE} silently
  removes missing values.}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{geom}{The geometric object to use display the data}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{layer}}
  for more details.}
}
\value{
  A data frame with additional columns: \item{width}{width
  of boxplot} \item{ymin}{lower whisker = smallest
  observation greater than or equal to lower hinge - 1.5 *
  IQR} \item{lower}{lower hinge, 25\% quantile}
  \item{notchlower}{lower edge of notch = median - 1.58 *
  IQR / sqrt(n)} \item{middle}{median, 50\% quantile}
  \item{notchupper}{upper edge of notch = median + 1.58 *
  IQR / sqrt(n)} \item{upper}{upper hinge, 75\% quantile}
  \item{ymax}{upper whisker = largest observation less than
  or equal to upper hinge + 1.5 * IQR}
}
\description{
  Calculate components of box and whisker plot.
}
\section{Aesthetics}{
  \Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("stat",
  "boxplot")}
}
\examples{
# See geom_boxplot for examples
}

