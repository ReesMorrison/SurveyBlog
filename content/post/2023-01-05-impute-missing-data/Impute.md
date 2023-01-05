---
title: 'Impute Missing Data:'
author: Rees Morrison
date: '2023-01-05'
slug: []
categories:
  - Surveys
draft: no
---

Every set of survey data has values missing.  This person didn’t say how many people report to them; that person didn’t fill in base compensation.  Worse, missing values cause many algorithms (notably **multiple regression**) to drop all the data for a person if even a single number missing. So, if your survey data aims to predict your law firm's fees for reviewing securities law filings and you have completed 65 such matters, if 10 of them are missing total fees, you have an analyzable set of only 55 matters.  But you have tricks to solve that problem.  Here is an explanation of imputation drawn from my article, "Missing in Action: Impute Intelligently Before Deciding Based on Data," *LegalTech. News* (April 6, 2017).

When your survey responses have gaps in their answers, you could drop those responses.  But leaving out responses loses valuable information, such as number of timekeepers, duration, etc.  To counter this problem, analysts often plug in plausible numbers for missing numbers and thereby save the remaining data: these plug-in methods are called "imputation."

Before imputing, however, the analyst should determine why data is missing. If numbers are missing because of an identifiable reason, such as the Los Angeles corporate practice group failed to provide any data on fees, you take a different tack than imputation to obtain the absent data. More commonly, however, data is missing with no discernible pattern.  Software can help visualize the gaps and suggest if there is a pattern or simply the slip-through-the cracks of life.  

With **single imputation**, software produces a single fill in for each missing value.  Assuming randomly missing data, the simplest method sticks in the average (or median) of all the other numbers available for that variable.   If the average fee was $41,000, that's what goes into the missing few.  

More complex imputation fills in missing data with the mean (or median) of matters that have variables conditionally related to the matters with missing data.  For instance, a law firm could calculate the missing total fees conditional upon the office of the firm handling the matter.  The imputed figure would be calculated from a subset of matters that match the one with the missing data - the condition for selecting them. This conditional method can yield a more accurate estimate of the mean for the missing variables, but it usually requires quite a bit of data if you have several variables (or levels of them) to condition on.  

Another method of imputation figures out the distribution of the available numbers and picks for the missing values ones that are reasonable given that distribution.  Alternatively, software creates a regression model to predict (fill in) the missing number based on some or all the other variables that are in the data set.  Such a model takes other "predictor variables" and estimates from them the "dependent variable" - the missing total fees value.   A third  way to impute single values uses "matching": for each matter that is missing total fees, software finds a matter in the data set with similar values of other variables and imputes its total fees value.   In other words, a matter that resembles one that has a data hole should offer a reasonable "fill-in" for that hole.

Extending single imputation methods, **multiple imputation** methods develop distributions for missing values and generate multiple instances of individual missing values by repeatedly drawing from this distribution and "pooling" the estimates for the value to be imputed.  For example, with a "bootstrap" technique, software repeatedly takes random samples from the data set, such as 30 of the 75 matters.  The result is multiple data sets with identical values for the non-missing values and slightly different values for the imputed values in each data set. The determination of the imputed value is performed separately on each data set, and the results are then averaged to generate the imputed value.

Another methodology analyzes the full, incomplete data set using “maximum likelihood estimation.” This method uses each observation’s available data to compute the estimates. The maximum likelihood estimate of a missing number is the value that is most likely to have resulted from the observed data and a complex set of calculations of probabilities.  The likelihood is computed separately for those cases with complete data on some variables and those with complete data on all variables. These two likelihoods are then maximized together to generate the estimates. 

Even more sophisticated software algorithms take a Bayesian approach to imputing missing values. They repeatedly select samples from the data and derive imputed values from conditional distributions of observed and imputed data.  


Every time you fill in a missing number with one of the imputation techniques described above, you change the statistical properties of that variable's distribution.   You can be less confident in your results to the degree that you have introduced artificial numbers for missing numbers.  Simple approaches to imputation such as replacing the missing values of each variable with the variable average, or the most common value (the mode), will produce a "completed" data set reflecting an artificial amount of certainty that will likely underestimate the variability of the data and bias results.


<!-- End of post -->