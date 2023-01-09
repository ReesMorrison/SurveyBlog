---
title: "Understand the Importance of Margin of Error:"
author: Rees Morrison
date: '2023-01-09'
slug: []
categories:
  - Surveys
draft: no
---

When you produce a survey finding, you should want to understand that number’s reliability. If the research that produced the number were repeated several times (with everything else held constant), how much would the results vary?  

Say you survey 100 general counsel and collect their total cash compensation.  The median is $600,000, but you recognize that your survey produced only one **sample** of results from a larger population of all general counsel.  That is to say, if you were able to keep collecting random samples of 100 from the same population of general counsel, the median figures for those samples would fluctuate because of non-methodological variation.   The scale of that fluctuation is captured by the **margin of error** for median total compensation, which on this scenario would be approximately plus or minus 9.8 percent of $600,000.  The **confidence interval** means that you can reliably expect that 95% of all the general counsel in the population (the “**level of precision**”) would see their total compensation fall between $540,000 and $660,000. 

The margin of error depends largely on the number of survey respondents, but also on the variability in the value being described, such as general counsel total compensation.  Note: it is critical that respondents take part in the survey randomly – without any patterns that are unrepresentative of the total population – so that the survey results can be generalized to the whole population.  Thus, the margin of error (aka **sampling error**) only properly applies to a randomly sampled survey population.  
What margin of error teaches us is that minor score differentials (such as a shift from 4.1 to 4.2 on a five-point scale) will only be worth talking about if the survey has a large number of respondents.  

You can get a serviceable approximation of the margin of error by calculating 0.98/√n where the denominator is the square root of the sample size. With 100 general counsel, the margin of error is approximately 9.8 percent (0.98/square root of 100).  Ninety-five percent of a median based on a similar sample from the group of general counsel would fall into that up-or-down range of almost 10 percent.  If instead, you collected data from 200 general counsel, the margin of error (at 95% precision) shrinks to 7 percent plus or minus – doubling the number of survey participants narrows the confidence interval from the earlier range (a span of $120,000) to between $558,000 and $642,000, an interval of $84,000, which is 30 percent narrower. It follows that to calculate median total compensation for a subgroup of general counsel, the range of approximation (sampling error) will increase.  It also follows that a headline proclaiming that “GC pay packets jump $50,000!” has dramatized a finding that may merely reflect the particular set of respondents.  The median pay packet could just as likely have dropped $25,000 or appeared anywhere in the interval range.

Let’s repeat the last point to emphasize how claims of change can be statistically spurious.  Two years ago, you surveyed your 50 key law firms for their satisfaction with your law department, and the median rating was 4.7. This year, with the same number of firms, that rating rose to 4.8, an increase of 2.1 percent.  Can you pat yourself on the back, or does the improvement of 0.1 mean nothing statistically?  It means nothing, because the margin of error for a value calculated from such a small survey base is 13.8 percent!

It is also easy to turn the inquiry around.  For planning a project, how many survey respondents do you need to have a margin of error of 5%.  Here is the formula to calculate sample size needed:  divide one by your desired margin of error squared.   One divided by .0025 (5% or 0.05 squared) says that 400 participants are needed, and they all must answer the particular question (assuming you seek the 95% confidence level).

# COMMENT OUT
# n = 2 * z2
#      D2
# This formula calculates a survey’s margin of error, where:
# 
# n = sample size
# 2 = variance
# z = z value from a normal table reflecting the degree of confidence, squared
# D = level of precision, squared

<!-- End of post -->
