---
title: 'See Which Questions Have Correlated Responses '
author: Rees Morrison
date: '2024-02-28'
slug: []
categories:
  - Surveys
draft: no
---

At times, several questions in an online survey aim to tap into a common underlying concept that interests the sponsor. The answers by respondents to these related questions should be internally consistent, i.e., the responses should correlate strongly and positively. Surely there is a statistical tool to evaluate the degree of correlation! 

Yes, Cronbach's alpha measures internal consistency or reliability and tells how strongly the responses to a group of questions correlate.^[The formula for Cronbach's alpha involves the number of items (questions) and the variances among the scores of the items and the overall variance of the items.]  If the value is below 0.7, it indicates that the questions are not internally consistent (and presumably do not draw on the same concept) or that the questions are not uni-dimensional (as they should be).  One or more of the questions may introduce a notion that departs from the core concept. 

Let’s say you’re researching courtroom calm among your litigation lawyers and you want to determine the level of anxiety they experience while before a judge.  You could ask respondents outright about their anxiety levels (“On a scale from 1 low to 10 high, how would you describe your level of anxiety when you are arguing before a judge?”), but self-reporting with a single question or on a sensitive topic may not produce accurate results.  What self-respecting litigator wants to admit to sweating, dry mouth, and knocking knees?  You could instead ask a series of questions that assess anxiety levels from different angles, and then combine the responses into a single numerical value that helps you more accurately assess overall anxiety.

To achieve this, you could devise a table a handful of questions regarding the degree of anxiety respondents experience. Score each item from 1 to 7, with 1 indicating no anxiety and 7 indicating high enough levels of anxiety to make them perform poorly as Perry Mason. You then sum the scores on all the items or take the average to determine the final score.

For this concept score to be accurate, the handful of questions need to have internal consistency. Because the questions presumably all measure an aspect of the same factor, the answers should correlate with one another.  Calculating Cronbach's alpha for the answers helps to ensure they are similar contributors to the same concept.

Here is another example.  A survey asked staff to evaluate their manager on a scale of one to five for each of 22 attributes.  It seemed to me that four of the attributes shared a notion around receptivity to the ideas of others, so I calculated Cronbach’s alpha for them: about 0.92.  By contrast, picked three attributes that had nothing in common produced a corresponding figure of 0.78.  Clearly, the first group had a robust “factor saturation,” while the second group lacked that cohesion.  That is a fancy term for the degree to which questions in a survey measure the underlying concept that they intended to assess.   

An alternative reliability measure that takes the amount of variance per question into account and thus performs better when dealing with “lumpy” data, which means it has high values and low values spread among the responses, is Guttman's Lambda 6 (G6).  In contrast to Cronbach's alpha, G6 is mostly used to evaluate the reliability of individual test items. This means that it provides information about how well individual questions reflect the concept that they aim to tap into. 

Cronbach’s Alpha and G6 are both positive functions of the number of items in a survey as well as the average intercorrelation of the items in the survey. When calculated from the item variances and total test variance, raw Cronbach’s alpha is sensitive to differences in the item variances. Standardized Cronbach’s alpha is based upon the correlations rather than the covariances. 

A third measure of reliability is “omega” measures. Hierarchical omega provides more appropriate estimates of general factor saturation while total omega provides better estimates of the reliability of the set of questions compared to both Cronbach's alpha and G6.^[Another technique is the Greatest Lower Bound (GLB) estimate which is also a very good and innovative measure of reliability according to https://www.personality-project.org/r/html/glb.algebraic.html.]

<!-- End of post -->
