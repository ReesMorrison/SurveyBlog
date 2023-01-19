---
title: Weight Response Data to Better Match the Population
author: Rees Morrison
date: '2023-01-19'
slug: []
categories:
  - Surveys
draft: no
---

Surveyor sponsors sometimes **weight** their data to make the findings more representative of the underlying population.   After all, a single survey only provides a partial sample of the entire group (the population), and it may have “holes” or “bulges” – too few respondents of some kind or too many of another.  This point comes through in an article in the New York Times, July 23, 2015, at 83 regarding political polls. Pollsters may get too few responses from a demographic slice, such as the class of farmers, and want to correct for that imbalance when they present conclusions for the entire population. The polling company weights the few farmer respondents more heavily to make up for the imbalance and represent the locations of residents more in line with the reality of actual figures.   Statisticians say that the “classes are imbalanced” until they are weighted. 

How does this transformation of data apply in surveys for the legal industry? Let’s assume that we know roughly how many companies in the United States have revenue over $400 million by each major industry. Let’s also assume that a survey has gathered compensation data regarding the lawyers in the responding law departments and also learned the industry of the respondents.

If the participants collected by the survey materially under-represent or over-represent some industry — the proportions in each industry don’t match the real-world proportions (technically, their “marginal probabilities”) for the industries that we know to be true – it is not hard to adjust the compensation data. One way to do it is called “**raking**,” a process that increases or decreases a survey metric so that it comes closer to replicating representativeness in your survey data. This is what is happens when a surveyor weights survey data to present more proportional data.   We should note that the analyst may need to **impute** reasonable values for missing data so that the raking (weighting) can be carried out more accurately.

As another example, my COO compensation survey might have relatively too few COOs with 9-11 years of experience.  A graph of the frequencies of respondents by years of experience, a histogram, would suggest the benchmark number (the marginal probabilities among the population of all COOs) and thus the shortfall.^[I am not certain that the data of a survey can bootstrap a population’s probability distribution.]  Or perhaps you conducted a similar survey before and therefore have a basis to spot imbalances in the class of experience years.

In some cases, weighting survey data results in particularly large or small weights, which can reduce the effective sample size (which influences margin of error and other calculations).  Weight trimming is one way to reduce the design effect from weighting by setting bounds on the maximum and minimum values of the weights.

To summarize, you need to have some basis to know the underlying distribution of data, such as numbers of companies above a certain size or in an industry or the percentage of female partners in large law firms. Secondly, you need survey numbers that you can adjust by weighting so that it reflects the proportions of the known data set.  You can even weight variables that show interactions, such as gender by years of experience.

Weighting sounds cool and sophisticated, and it certainly can improve the extensibility of a survey’s data to a population, yet in all the hundreds of legal industry surveys I have read, I can't recall one that weighted its respondent data set to make it more representative. Heavy sigh …

<!-- End of post -->