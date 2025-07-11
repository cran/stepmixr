\name{fit}
\alias{fit}
\alias{print.stepmix.stepmix.StepMix}
\alias{identify_coef}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fit a mixture using the stepmix python package. 
}
\description{
  This function initializes the stepmix object in python and fit X and
  optionnally Y to the object.  
}
\usage{
fit(smx, X = NULL, Y = NULL, ...)
\method{print}{stepmix.stepmix.StepMix}(x, x_names = NULL, y_names = NULL, ...)
identify_coef(coef)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{smx}{An object created with the stepmix function.}
  \item{X}{The X matrix or data.frame for the measurement part of the model}
  \item{Y}{The Y matrix or data.frame for the structural part of the
    model}   
  \item{x}{An object fitted with the fit method}
  \item{coef}{Matrix of coefficients to be modified}
  \item{x_names}{Optional name of x variables}
  \item{y_names}{Optional name of y variables}
  \item{...}{unused but included to be inline with requirement of generic function}
}
\details{
  This methods returns a pointer to a python object of type StepMix. It can be
  used within reticulate but not within R. To save this type of object,
  you need to use the savefit function. The print method, uses the same
  print methods used when verbose = TRUE, it takes the last X and Y
  arguments used with the fit method. identify_coef find a reference
  configuration of the coefficients. 
}
\value{
   A pointer to a python object of type StepMix.
}
\references{
Morin, S., Legault, R., Laliberté, F., Bakk, S., Giguère, C.-E., de la
Sablonnière, R. (2025). \emph{Journal of Statistical Software}. StepMix: A
python Package for Pseudo-Likelihood Estimation of Generalized Mixture
Models with External Variables.<doi:10.18637/jss.v113.i08>

Bolck, A., Croon, M., and Hagenaars, J. Estimating latent structure
models with categorical variables: One-step versus three-step
estimators. Political analysis, 12(1): 3-27, 2004. 

Vermunt, J. K. Latent class modeling with covariates: Two improved
three-step approaches. Political analysis, 18 (4):450-469, 2010. 

Bakk, Z., Tekle, F. B., and Vermunt, J. K. Estimating the association
between latent class membership and external variables using
bias-adjusted three-step approaches. Sociological Methodology,
43(1):272-311, 2013. 

Bakk, Z. and Kuha, J. Two-step estimation of models between latent
classes and external variables. Psychometrika, 83(4):871-892, 2018 
}
\author{
  Éric Lacourse, 
  Roxane de la Sablonnière,
  Charles-Édouard Giguère,
  Sacha Morin,
  Robin Legault,
  Félix Laliberté,
  Zsusza Bakk
}

%\seealso{
% \code{\link{fit}}, \code{\link{help}} 
%}

\examples{
\dontrun{
if (reticulate::py_module_available("stepmix")) {
  model1 <- stepmix(n_components = 3, n_steps = 2, measurement = "continuous", progress_bar = 0)
  X <- iris[c(1:10, 51:60, 101:110), 1:4]
  fit1 <- fit(model1, X)
}
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
