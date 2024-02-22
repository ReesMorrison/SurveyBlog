---
title: Code Text Comments
author: Rees Morrison
date: '2024-02-22'
slug: []
categories:
  - Surveys
draft: no
---

It is a good survey practice to ask for only a limited number of comments, such as in an upward evaluation of managers, “Please write up to three suggestions for what actions the manager should do more.” Then, create three text boxes for their suggestions.  Text questions slow respondents and fatigue them; far better to concentrate on numeric answers. 

But when you include a free-text opportunity, give thought to several questions they raise.

•	Do most respondents put their comments generally in the order of significance to them?  If you suspect that is true, you could look at the first comments and weight them more heavily.   In this regard, you will find that fewer people add a comment to the second box and even fewer to the third box.^[It would be interesting to test leaving a single text block rather than multiple text blocks.  I tried doing that when I asked about software packages that the respondent used and instructed them to put a semi-colon between packages.  It sort of worked after arduous clean-up.]
•	Does the length of a comment suggest its importance to the respondent?  Counting the number of characters or words and the proportion of respondents who left any comment at all could enable another layer of interpretation.
•	What should you do if someone repeats a suggestion in more than one box, which could throw off your numerical analyses?  My general rule is to ignore the repeats.
•	How do you handle the likelihood that suggestions to do more of something could be phrased as doing less of the reverse.  For example, “Be clearer in your explanations of tasks” could have been phrased as “Avoid complex, unintelligible, or too brief explanations of tasks.”  It is a challenge to “reverse” statements and maintain the same meaning and connotations.
•	Should you touch up the comments?  I try to sparingly edit text comments:  The ACC Large Survey offered their explanation of what they did:  “A few survey questions required open-ended responses. Many of the quotes and citations from participants that we present throughout the report were shortened or edited due to space or style needs.”  I favor verbatim quotes so that you don’t knowingly or unknowingly alter the original message.

Moving beyond the questions that text comments raise, here are steps to take according to an online site as to how to code them for themes.^[http://www.deeplytrivial.com/2018/08/stats-note-making-sense-of-open-ended.html]  Coding is important if you want to have the report speak to how many people commented about certain ideas.

•	Take a random 10% of the text responses, 
•	Read them and note themes as you go, 
•	Create a spreadsheet with a row for each of the text responses, 
•	Add columns for each theme you found from the initial set, 
•	Read every comment and put an X in the cell of the relevant theme or themes it addresses (a comment might touch on multiple themes),
•	Add themes as you encounter new ones or reword existing themes,  
•	Sort by the themes and reread their comments to check your coding accuracy and consistency, 
•	Count the totals for each theme,
•	Choose a comment that exemplifies each theme, and 
•	Present the theme counts and the representative quotes in the report.

Even better, ask someone else to do some or all of the above steps and compare your results.  That step will almost certainly result in a better theme set and crisper wording for the themes.  Statistics will even let you calculate what is called “Inter-coder reliability,” how well you and your collaborator coded the same comments the same way.  Once you have coded the text comments, you may find that the theme counts corroborate (or confound) findings from other questions.

A second method to code text comments depends on the capabilities of your hosting software or your own technology tools and knowledge.  Some survey tools have AI built in to tag topics.  One blog site wrote, “I think Zenloop does a decent job.”^[From https://clickup.com/blog/affinity-diagram-tools/]  You can also dive into the deep pool of Natural Language Processing and its sub-field of topic modelling.  Text comments are often short, but they can yield topics, such as with “Latent Dirichlet Allocation.”

A third method, quite au courant and one I have not tried, is to give ChatGPT or another Large Language Model (LLM) application a persona ("Be a general counsel of a company..."), then explain the task ("Here are text comments from a survey.  Analyze them, search for insights, cluster them into a human-digestible amount of data, etc...") and describe your preferred output format ("... produce the results in a table, where column 1 is the insight, column 2 is how frequent it was in the batch, column 3 is how important you think it is from a scale of 0 to 10, and column 4 is possible actionable insights I can hand to my team").  Spreadsheets can be exported into CSV, which is a text format that the LLM application can read.^[ https://www.surveypractice.org/article/6384-text-mining-in-survey-data]

These three methods are time intensive and require human wetware.  But the return on that investment can be a much deeper understanding of your survey respondents’ views and the topics you want to research.

<!-- End of post -->
