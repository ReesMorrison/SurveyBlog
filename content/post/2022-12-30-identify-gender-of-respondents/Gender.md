---
title: Identify Gender of Respondents
author: Rees Morrison
date: '2022-12-30'
slug: []
categories:
  - Surveys
tags: []
draft:
---

Among the most sensitive questions a survey might present would be the seemingly simple “What is your **gender**?”.  Years ago, no problem; with the current hyper-sensitivity to anything related to biological or behavioral expressions of sexuality, that is a thin-ice inquiry.

However, while your law firm or legal vendor should be acutely wary of asking for gender, you are not prohibited from guessing the gender of respondents if you know their first name.  In a survey on compensation, I assigned traditionally male names to “Male” and traditionally female names to “Female.”  It seems a can’t miss guess with Thomas and Michael or Susan and Penelope.  If I ran into an ambiguous first name or one that was unfamiliar to me, I looked them up on their firm's website.  So, I made sure to confirm Chris and Jean and R.J or Yun Shu.  If no picture or clues appear on the firm’s website, LinkedIn and other online sources typically dredge up a shore or use a revealing pronoun.  Even the emails that respondents sent at the completion of the survey (see prior) often had a “she/her” usefully inserted.  Presumably, too, if all other means of discovery had failed, I could have written the person to ask.  My goal was not to disclose any individual’s personal information, or my supposition as to their gender.  My goal was to aggregate data, such as median total compensation by gender.

As confirmation, we used an R library that draws on millions of census names.  It attributes a probability of gender based on first names.  I made sure that its probabilities fit with my assessments.

Why add gender as a categorical variable (see prior) to my survey data set?  First, the distribution of participants (Chief Operating Officers of U.S. law firms) according to gender has interest – are there more women than men, more recently hired women than men, a pattern of titles for woman as compared to men, higher turnover of one gender or the other, etc.  Many gender-based analyses and **cross-tabulations** come into play.  

Second, compensation differences between men and woman are always newsworthy.  Whether you want your survey to be hijacked by ideological controversy is another matter.

Third, you can carry out **logistic regression** with the binary factor.  To what degree does gender predict base, bonus, or total compensation?  Finally, at one point my colleague and I wrote to all the women, pointed out that they were outnumbered by male participants, and urged them to encourage their female counterparts to take the survey.  That ability to subset the respondent group paid off.
