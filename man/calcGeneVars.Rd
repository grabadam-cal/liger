% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/liger.R
\name{calcGeneVars}
\alias{calcGeneVars}
\title{Calculate variance of gene expression across cells in an online fashion}
\usage{
calcGeneVars(object, chunk = 1000)
}
\arguments{
\item{object}{\code{liger} object. The input raw.data should be a list of hdf5 files.
Should call normalize and selectGenes before calling.}

\item{chunk}{size of chunks in hdf5 file. (default 1000)}
}
\value{
\code{liger} object with scale.data slot set.
}
\description{
This function calculates the variance of gene expression values across cells for hdf5 files.
}
\examples{
\dontrun{
Y <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 4, byrow = T)
Z <- matrix(c(1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, 2), nrow = 4, byrow = T)
ligerex <- createLiger(list(y_set = Y, z_set = Z))
ligerex <- normalize(ligerex)
# select genes
ligerex <- selectGenes(ligerex)
ligerex <- scaleNotCenter(ligerex)
}
}
