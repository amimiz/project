\name{Shiny Project}
\alias{Shiny Project}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
a Shiny web application to show different graphs of 2010 census of counties
}
\description{
a Shiny web application to show different graphs of 2010 census of counties
the user can choose which data to show

}
\usage{
runGitHub ("project", username="amimiz")
}
%- maybe also 'usage' for other objects documented here.
\arguments{ Choose variable to display ; Graph Type
  \item{Variable}{
White / black / asian / hispanic / total population}
\item{Type}{
Histogram / Boxplot (descriptive statistics) / Dot Chart
}
}
\details{
Graphical Descriptive statistic of Census data
Data is stored on subdirectory /data 
}
\value{
%% 
%% 
}
\references{
 http://shiny.rstudio.com/tutorial/lesson5/
}
\author{
ami
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

runGitHub ("project", username="amimiz")


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Census }
\keyword{ Shiny }% __ONLY ONE__ keyword per line
