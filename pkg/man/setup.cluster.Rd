% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster.r
\name{setup.cluster}
\alias{setup.cluster}
\title{Helper function to setup cluster}
\usage{
setup.cluster(expr = NULL, varlist = NULL, envir = .GlobalEnv, cores = 1000)
}
\description{
load.packages('parallel')
cl = setup.cluster({source('post.fn.r')}, 'spyRets,sma.lens,data,run.backtest',envir=environment())
out = clusterApplyLB(cl, vol.lens, function(j) { run.backtest(j) } )	
stopCluster(cl)
}
