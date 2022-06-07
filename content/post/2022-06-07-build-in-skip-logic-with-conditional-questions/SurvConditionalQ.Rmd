---
title: Build in Skip Logic with Conditional Questions
author: Rees Morrison
date: '2022-06-07'
categories:
  - Surveys
draft: no
---

Designers of surveys by law firms, law departments, or legal vendors use a slew of names for the capability of an online survey to jump to a question based on the answer to a previous question.  The names designers give to this kind of question include “skip logic,” “branching,” and “conditional” questions; I will use the term **conditional question**.  Conditional questions create a custom path through a survey because the answer to one question (or more than one) dictates what the next question (or a later question) asks or how it is structured.  

Say a law firm wants to know more about the views of its partners on environmentally sound investments.  The firm’s survey asks a **Yes/No question**, “Would you support allocating 1% of our fee revenue to sustainability investments?”  If a partner checks “Yes,” the next question presents alternative investment ideas to be **ranked** by desirability or a **multiple-choice question** that invites the partner to check all desired investments.  

If, however, a partner checks “No,” the software of the hosting system interprets that choice – flips a switch, so to speak -- and conceals the ranking or multiple-choice question that would otherwise follow.  With the “No” condition satisfied, the online survey either proceeds on through the questionnaire or might ask, “Did you choose “No” to the previous question because of any of the following reasons: Check all that apply” to learn more about the partner’s negative response.  The condition evaluated by the software was the presence of the “No” choice.

The forking action described here can be based on answers to two or three previous questions, not only a single gateway question.  Consider a survey about partner compensation.  Answers to “Do you agree that bonuses might exceed 30% of base?” and “Do you believe the Executive Committee should approve bonuses larger than 30% of base?” would both need answers in the affirmative for a conditional logic question to appear on the screen that explore the intersection of those two inquiries.   If either question receives a “No,” that question disappears.

Furthermore, a question hidden because of the answer to the conditional question, or included on the screen because of that answer, might appear much later in the survey; the consequent question does not have to immediately follow the conditional question.  

Certainly, **navigation** through the survey is streamlined with conditional questions, but also you don’t want to subject your respondents to facing any more questions than they can meaningfully answer.  If one question reveals that another question has no bearing on the respondent or the respondent has rendered it inapplicable because of a previous response, they should not even see it.  You want your **hosting software** to be able to change which questions appear according to earlier answers.  

With the hosting software that I use, from [Novi Survey](https://novisurvey.net), you create a conditional question and fill in which prior question triggers it and what the trigger is (as in the example, a “No” response initiates the condition).  If your hosting software does not offer the capability to construct conditional questions, an alternative is to specify the antecedent condition in the following question: “If you answered ‘No’ to the previous question, please explain your view.”

One downside of conditional questions is that they complicate **pretesting**.  Whoever puts the draft survey through its paces needs to understand and confirm that the logic works.  They would not even detect that a conditional question had been asked unless the designer tells them about each instance.  Then they can confirm that the alternatives work.
