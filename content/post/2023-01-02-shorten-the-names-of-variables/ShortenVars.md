---
title: 'Shorten the Names of Variables'
author: Rees Morrison
date: '2023-01-02'
slug: []
categories:
  - Surveys
draft: no
---

When a **survey analyst** sits down to corral and curry the data from a survey, one of the first steps would typically be to rename some or all of the variables.   You do that so that they are intelligible and so that they are short.  Assuming you use the variable in your code or graphics, you want it to be called “Title”, not “Please pick from the drop-down below the title that is most equivalent to yours.”  Not only is it verbose, it has empty spaces, which give software conniptions.

It is possible that your **hosting software** allows you to append a short name for a variable, which means you can export the data with the variables already renames in good form.  It is much easier to remember one-word variables (never abstracts, like “x” or “var1”!), not to mention type them more easily and repeatedly.   For example, in the R programming language, in order to slice out only a certain title, you might write “subset(data = surveydata, Title == “Chief Financial Officer”).  It’s obvious that renaming the long variable name to the short version, “Title,” helps your productivity.
 
Shorter variables also make graphs and tables (such as cross tabs) easier to construct and to read.  Long variables cause long column labels, for example.  Or legends on plots look ungainly if you don’t pare down the variables that comprise it.  Think ahead to all the places where the variable might appear, and you will appreciate and take the time to create a truncated form.

As with many steps in programming, be consistent and follow a similar format, e.g., wherever your survey collects **write-in comments**, rename  the variable, perhaps “variableComments.”   As another example, you might adopt a style of “variable_Title” or a pattern of camel case like “VariableTitle”.  When you adhere to a style, it makes global searching and replacing easier and less error prone.

Once I have downloaded survey data from my hosting software site, my practice is to work my way through the variables in order, renaming them in script chunks so I can check and confirm that I am correctly naming everything.  It is slow work but needs to be done and done accurately.  By the way, as I do that, I make sure that numeric variables are treated as numbers and that factor variables are indeed factors.

The R language, and probably Python and other open-source scripting/programming tools, have functions that help you rename variables consistently with adherence to a solid, consistent style.  R even has a names() function in the janitor package that will do the heavy lifting for you. 

Having renamed variables, the analyst must be careful if variations of the survey are then fielded.  The order of the variables may change, or one or more questions may have been deleted or added.   You can’t unthinkingly rely on or copy and paste the renaming code from the script for the prior version of the survey.

Good hygiene exercised on your survey data – including standardizing and simplifying the names of variables – takes time, but rewards the analyst multiply down the road.

<!-- End of post -->