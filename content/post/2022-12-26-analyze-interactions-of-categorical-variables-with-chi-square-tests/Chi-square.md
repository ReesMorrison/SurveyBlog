---
title: 'Analyze Interactions of Categorical Variables with Chi-square Tests '
author: Rees Morrison
date: '2022-12-26'
slug: []
categories:
  - Surveys
draft: 
---

**Categorical variables** (aka “factors”) are limited text choices as answers, such as “Male” or “Female,”  a state in the United States, or a title.  For example, a recent survey I completed produced the following simplified table of data for 94 leaders in law firms.  A categorical variable for title included “Chief”, “Director” and “Manager.”  The size of the firm created a second categorical, in the AmLaw 100 or not in the AmLaw100.  Of this survey group, therefore, 28 Directors work at AmLaw 100 law firms (the second value of the second column).
  
Title &nbsp;&nbsp;&nbsp;              	AL100 	&nbsp;&nbsp;         Not100

Chief   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                  5   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     0\
Director&nbsp;&nbsp;&nbsp;        	       28   &nbsp;&nbsp;&nbsp;                   12\
Manager&nbsp;&nbsp;&nbsp;                  42   &nbsp;&nbsp;&nbsp;                   7

For the titles, the rows show how many of them held that position at an AmLaw ranked firm of 100 or not.  This is a **cross-tabulation table** of the two categorical variables (also known as a **contingency table**, a two-way table, or a bivariate table).   Many survey findings by law firms or law departments can be presented as a crosstab table of counts (frequencies).  

From staring at the tables, however, it’s hard to figure out the interaction between the variables let alone the strength of any association.  Are the titles as likely in the two sizes of law firms?  How credible is the relationship between titles and AmLaw rank?

Riding to the rescue comes the **Chi-square test**, which starts with  crosstabs of categorical variables.  The algorithm figures out whether the differences between the expected frequencies (which assumes the two variables are not related, meaning either title might show up equally probably in either size firm) and the observed frequencies (the actual data collected) are **statistically significant**.   Chi-squares only tests whether variables are or are not independent.  It does not provide any insight into the degree of relationship  between the categories.

A statistically significant finding means that the data you collected exhibits a pattern that is quite unlikely to happen by chance, typically less than 5% (0.05) of the time. [ Any time you have a statistic designed to tell you a value's validity or reliability, part of the calculation is a **level of confidence**.  For Chi-square, the tables of confidence levels are based on probability likelihoods such as  5%, 2.5%, or 1%.  Each level has a critical value associated with it.]

For the Chi-square test, what statisticians call the **null hypothesis** is that the two variables are independent (when you don’t know at the start whether two variables are related, assume they are not) and the alternate hypothesis is that they are related.  Large values of the Chi-square statistic are evidence that the null hypothesis (the variables are independent of each other) is false.  If our statistic reaches that level, we can be confident that titles are associated with firm size.

Our data in the crosstab table produces a Chi-square statistic of 4.7, and a significance value (the **p-value**) of 0.095.  That significance value is a touch higher than 0.05 and therefore the three titles do not exhibit enough of a statistical relationship with the size categories of law firms for a statistics maven to confidently support a claim.   The p-value is very close to meaningful, however.

One more wonky comment.  If your contingency table has more than one cell with five or fewer respondents, the Chi-square calculation may not be reliable. If you encounter that situation, you should combine categories so that all cells have a count greater than five.

