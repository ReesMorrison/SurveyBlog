---
title: Export Early Responses or Pre-Test Data and Review
author: Rees Morrison
date: '2023-01-11'
slug: []
categories:
  - Surveys
draft: no
---

As soon as you have accumulated a few responses to your survey of law firms or law departments, you should download them and scrutinize them.  It is far better to find and fix a problem early, or make a change that facilitates your analysis, than to proceed deep into the survey project.   After all, we know what an ounce of prevention is worth.  Here are several jagged edges to avoid.

Variable names:  You can realize that selections are not mutually exclusive, they are ambiguous, or that a likely candidate was overlooked.  See what people write in the “**Other**” box and guide yourself accordingly.  Or absorb email feedback when you send a **thank you email**.

Recast variables to short names:  Assuming your **hosting software** enables brief names for questions, you might create them or revise them after you have looked at the first handful of answers.  As described elsewhere, brief variable names have many advantages.

Treat numbers and factors correctly:  This point goes to **validation checks**.   If you want numbers only – no commas, dollar signs or text – have you made those undesirable pieces of answers impossible to enter?   Are your instructions as clear as you can make them now that you see real-world interpretations?   Can you add a descriptor in the answer box so that there is, for example, a space and then the word “dollars”?

Create usable **matrix table questions**:  Whenever you collect data in a table, with rows and columns, you should look carefully at what comes back.  The format of the exported data may be awkward.  You want your analysis **script** to be able to parse the replies.

Sharpen instructions:  When you step back and see how people read your questions and formulate their answers, you often see how to elaborate or clarify your instructions to the question.  Or perhaps you decide to create a text introduction to a series of related questions, e.g., “The first six questions primarily collect information about you and your law department so that we can analyze the answers to the later questions by those characteristics.”

Start your script:  Right off the bat, with as few as two or three responses, I start creating my script in R to read in the exported file and wrangle (clean up and prepare) the object created thereby.  Nothing like working with actual survey data to bring to your attention improvements in questions, instructions, short names and even the order of questions.  

Evaluate missing data and patterns:  The early bird answers might not be numerous enough for you to learn from the unanswered questions, but at least they are apparent, and you have the opportunity to think about why people did not respond.  You have an early opportunity to remedy that pattern in the later invitation emails, the guides in the questionnaire, and the question itself.

Add or drop questions:  Imagine no one answers question 8.  Upon reflection, you might realize that it requires research, or data that is not available, or data that your respondents are not permitted to access or disclose.  Another possibility is that the question comes across as naïve or unanswerable.   The early returns suggest that you eliminate the question.

<!-- End of post -->