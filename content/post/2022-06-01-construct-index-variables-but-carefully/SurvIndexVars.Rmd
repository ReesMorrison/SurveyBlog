---
title: Construct Index Variables, but Carefully
author: Rees Morrison
date: '2022-06-01'
categories:
  - Surveys
draft: no
---

An **index variable** (sometimes called a “synthetic variable”) takes related questions on a survey and weaves their answers into a new, consolidated variable.  Like the Consumer Price Index combines the prices of a range of goods and services, a survey index variable consists of the amalgamation of several questions’ answers.  

What good is an index variable?  One benefit is consolidating the data from multiple questions that would otherwise be difficult to picture and comprehend as an overall whole.  Also, index variables help you understand and communicate a complicated situation with quantification.  Third, you can employ the new variable as a classification category (a **factor**) for further analyses or graphical depictions.  You can show how other metrics associate or correlate to that index variable.  

Let’s imagine creating an index variable.  A law firm surveys its partners regarding their opinions of the firm’s strategic planning process.  Here is an opportunity to create an index variable made up of the partners’ views scattered across three or four questions so that we can grasp the overall attitude of the partners.  Let’s call those who dislike the current process “Critics”, those who accept the extant system or are neutral we’ll call “Centrists”, and those who support the system are “Champs.”  An index variable classifies the Critics, Centrists, and Champs based on their responses to two **rating** questions and a **text question**.  

•	One rating question asks for a level of agreement with several aspects of the strategic planning system on a scale of 1 (strongly disagreeing) to 7 (strongly agreeing).  The average of the ratings on all the aspects lets us classify the partners as relative Critics, Centrists, or Champs.  
•	A second rating questions asks for assessments from low to high of several other elements of the strategic planning system *as it is* and then what the system *should be* on the same scale.  The “should be” assessment subtracted from the “as it is” assessment produces a “gap” number and lets us classify the partners again as relative Critics, Centrists, or Champs – larger gaps mean more dissatisfaction with what presently happens.  
•	Third, we score an open-ended text question on a **sentiment scale** (a natural language processing technique), which lets us classify the partners in the same three categories.

Finally, adding together each of the three values for a partner (where Critic is assigned 1, Centrist assigned 5, and Champs 7) yields the partner’s index score.  **Analysis software** can place each partner into a quintile on the index score.  Thus, the top third of the index scores would be Overall Champs (the relatively strongest advocates for how long-range planning currently takes place), the next third would be Overall Centrists, and the lowest third of the index scores would be Overall Critics.  By the construction of this index variable that describes the overall attitudes of the partners to the firm’s strategic planning process we can reap its benefits.

However, the index variable as imagined above would be an unadjusted measure, and not every question in it may deserve the same **weight** in the summing of values.  A **survey analyst**, collaborating with a **Subject Matter Expert** and others on the **project team**, might decide that one of the components of the index should influence the index score differently than the other two.  Perhaps they decide the “gap” score is twice as important in the overall score as each of the other two scores or that the data resulting from the other two questions feel squishy, weak, or less certain to have captured the views of the partners.  The **analysis software** can weight the “gap” score double and then calculate the weighted index score.  Weights, I should point out, can be 0.3, 1.8 or any other amount and each component of the index variable can have its own weight.

Survey analysts who follow this path to extend their data ought to keep in mind that they are constructing a variable from other variables.  It can produce an untrustworthy sandcastle to the degree one or more of the component variables lack credibility or reliability.  Sponsors and readers of reports forget this risk; the new index variable takes on a reality and concreteness.  People quickly accept it as hard and real as they talk about it uncritically and without appreciating the possible frailty of its construction.  As a rebuttal, an analyst might point out that when you combine multiple indicators, the resulting index score washes out or moderates aberrant data, much like an average of a group of numbers smooths extreme values.  

If your analysis generates an index variable, you must explain carefully in your **methodology section** of the **appendix** how you arrived at it.   If you are scrupulous, you will explain the pros and cons of the synthetic creature.

Index variables introduce a more sophisticated manipulation of data, but not without analytic risks.  Used skillfully they help us understand and quantify a domain better than we did before.
