---
title: 'Deal with Range Questions, or Don’t Ask Them '
author: Rees Morrison
date: '2023-02-22'
slug: []
categories:
  - Surveys
draft: no
---

Most survey experts look down on **range questions**, those that ask for a selection from a list of ranges. “Was your total income last year: Less than $50,000; Between $50,000 and $100,000; $100,000 to $150,000” etc.  Far better to ask for specific numbers, even if they are **approximations**, so that you can work with the resulting figures. You can do statistical analysis, for example, and your graphics can flourish immensely more detail.

Survey sponsors still use ranges.  One justification is that personal information hides specificity when it is concealed in a range.  “I am 55-60 years old” doesn’t reveal as much as “How old are you?”   Other sponsors include range questions because respondents are unlikely to know the precise number, but they can feel comfortable picking from a range: “How many subpoenas did your company respond to in the previous 12 months?   “Less than 50; 50-200” etc.  Third, if the questionnaire collects range responses, the analyst does not have to **binify** the values to create a factor.

If you do use ranges, their widths should be similar.  Extending the three compensation ranges above, the highest range should not be “$450,000 to $1 million.”  Even more problematic are open-ended ranges, such as “Over 1 million.”

In the Major, Lindsey & Africa 2022 Partner Compensation survey (conducted with Law360), the report explained at page 9 its methodology regarding ranges:

“For a number of Survey questions, respondents were given ranges as response choices. For example, total compensation values were typically grouped in $50,000 ranges (e.g., $800,000 to $850,000).  In order to calculate the data for this Report, Law360 used, wherever possible, the midpoint for all responses that were expressed as ranges."

The midpoint of a range, like the median of a distribution, has the benefit of being easy to explain and easy to find, but it is likely to misrepresent the central tendency of the values.  Many distributions lack consistent dispersion throughout (a statistical term for the measure of  dispersion is “heteroskedasticity.”) That means the **variance** is not constant throughout the sorted data. At least four tests measure heteroskedasticity: Bartlett Test; studentized Breusch Pagan Test for a linear regression model; Score Test; and the F Test.  

My sense of ranges is that the values thin out either as you go up or as you go down.  For example, if you ask for height of men in ranges of three inches, the results will thin from 72 to 75, as people six feet tall up to six foot three inches are much more frequent at six feet than three inches taller.  The variance of each inch will vary; heteroskedasticity will rule.  Likewise, in the United States, a range for men from 68 inches to 71 inches will likely have fewer in the 68 inches stratum than the 69- or 70-inch strata because more men are in that taller interval.  With either range, the distribution (the variance) will differ depending what height in inches you test.  What all this means is that the mid-point of a range may not represent the most likely value. 

Returning to the MLA report, it continues with a more puzzling analytic step, “In those cases where midpoints were not identifiable (e.g., responses where one parameter of the range was open-ended), Law360 and MLA jointly agreed on values to be used for those responses, applying consistent criteria from previous surveys.”  

The last step that the report explains, plugging in a value for the open-ended ranges, strikes me as quite odd, a troubling form of **imputation**.   But it is not a mathematical imputation for a missing value, it is replacing the open-ended range with a subjective number “jointly agreed on”.  From what data did they pluck that number, and why didn’t they explain how they chose it?  Hand waving explanations are objectionable.

<!-- End of post -->
