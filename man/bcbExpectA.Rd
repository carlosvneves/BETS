% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bcbExpectA.R
\name{bcbExpectA}
\alias{bcbExpectA}
\title{bcbExpectA}
\usage{
bcbExpectA(indicator = "IPCA", limit = 100, variables = c("Media",
  "Mediana", "DesvioPadrao", "CoeficienteVariacao", "Minimo", "Maximo",
  "numeroRespondentes", "baseCalculo"), start, end)
}
\arguments{
\item{indicator}{A string. Available indicator.}

\item{limit}{A integer. A limint of data in request, top is 10000.}

\item{variables}{Possible options: "Media", "Mediana", "DesvioPadrao",
"CoeficienteVariacao", "Minimo", "Maximo".}

\item{start}{Initial date at which the data was projected, in ISO format.}

\item{end}{Final date at which the data was projected, in ISO format.}
}
\value{
A data.frame.
}
\description{
Market Expectations with annual reference.
}
\note{
The available indicators are: Balanca comercial, Balanco de pagamentos, Fiscal, IGP-DI,
  IGP-M, INPC, IPA-DI, IPA-M, IPCA, IPCA-15, IPC-FIPE, Precos administrados por contrato e 
  monitorado, Producao industrial, PIB Industrial, PIB Servicos, PIB Total, Meta para taxa 
  over-selic e Taxa de cambio.  
  
  
  In collaboration with Angelo Salton <https://github.com/angelosalton>.
}
\examples{
 # bcbExpectA()



}
