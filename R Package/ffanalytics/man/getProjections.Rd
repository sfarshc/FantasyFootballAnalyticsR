% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getProjections.R
\name{getProjections}
\alias{getProjections}
\title{Calculate Projected Points}
\usage{
getProjections(scrapeData = NULL, avgMethod = "average",
  leagueScoring = scoringRules, vorBaseline, vorType = NULL, scoreThreshold,
  tierGroups, teams = 12, format = "standard", mflMocks = NULL,
  mflLeagues = NULL, adpSources = c("CBS", "ESPN", "FFC", "MFL", "NFL"))
}
\arguments{
\item{scrapeData}{The scraped projections data from \link{runScrape}.}

\item{avgMethod}{Which average method should be used for aggregating the
projections from different sources.}

\item{leagueScoring}{List of scoring rules for the league see \link{scoringRules}
for an example}

\item{vorBaseline}{The numbers at each position to use for the baseline when
calculating VOR}

\item{vorType}{Whether the baseline numbers are ranks or points. Defaults to Ranks}

\item{scoreThreshold}{Number of points for each position that an average starter
will score per game. This is used to determine tiers for seasonal data}

\item{tierGroups}{Number of groups to use at each position when calculating
tiers for wwekly data.}

\item{teams}{Number of teams in the league (integer)}

\item{format}{League format}

\item{mflMocks}{Include mock drafts from MFL. Set to 1 if only mock drafts
should be used, 0 if only real drafts should be used. If not speficied all
types of drafts will be used.}

\item{mflLeagues}{What type of leagues to include for MFL. Set to 0 to use
redraft leagues only; 1 to only use keeper leagues, 2 for rookie drafts, and
3 for MFL Public Leagues. If not speficied all types of drafts will be used.}

\item{ADPsource}{Character vector with one or more of \code{c("CBS", "ESPN", "FFC", "MFL", "NFL")}}
}
\description{
Calculate projected fantasy points, confidence intervals, risk, tiers, etc.
}
\examples{
getProjections(scrapeData,                    ## Baseed on data in scrapeData
               avgMethod = "weighted",        ## calculate the weighted projections
               leagueScoring = scoringRules,  ## using defined scoringRules,
               vorBaseline, vorType,          ## VOR Baselines and types
               scoreThreshold, tierGroups,    ## Defined method for tiers
               teams = 12, format = "ppr",    ## for a 12 team ppr league
               mflMocks = 0, mflLeagues = 0,  ## using only real MFL redraft league
               adpSources =  c("FFC", "MFL")) ## and ADP data from MFL and FFC
}
