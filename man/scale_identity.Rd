\name{scale_colour_identity}
\alias{scale_alpha_identity}
\alias{scale_colour_identity}
\alias{scale_fill_identity}
\alias{scale_linetype_identity}
\alias{scale_shape_identity}
\alias{scale_size_identity}
\title{Use values without scaling.}
\usage{
  scale_colour_identity(..., legend = FALSE)

  scale_fill_identity(..., legend = FALSE)

  scale_shape_identity(..., legend = FALSE)

  scale_linetype_identity(..., legend = FALSE)

  scale_alpha_identity(..., legend = FALSE)

  scale_size_identity(..., legend = FALSE)
}
\arguments{
  \item{...}{Other arguments passed on to
  \code{\link{discrete_scale}}}

  \item{legend}{Should this scale have a legend?  Defaults
  to \code{FALSE}}
}
\description{
  Use values without scaling.
}
\examples{
colour <- c("red", "green", "blue", "yellow")
qplot(1:4, 1:4, fill = colour, geom = "tile")
qplot(1:4, 1:4, fill = colour, geom = "tile") + scale_fill_identity()

# To get a legend, you also need to supply labels, and specify legend = T
qplot(1:4, 1:4, fill = colour, geom = "tile") +
scale_fill_identity("trt", labels = letters[1:4], breaks = colour,
legend = TRUE)

# cyl scaled to appropriate size
qplot(mpg, wt, data = mtcars, size = cyl)

# cyl used as point size
qplot(mpg, wt, data = mtcars, size = cyl) + scale_size_identity()
}
