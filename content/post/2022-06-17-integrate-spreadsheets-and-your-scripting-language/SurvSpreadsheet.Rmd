---
title: "Integrate Spreadsheets and Your Scripting Language"
author: "Rees Morrison"
date: '2022-06-17'
output: pdf_document
draft: no
categories: Surveys
---

Ideally, once you export to a spreadsheet the data that has been collected by your **hosting software**, you will read it into the **scripting language** of your choice and carry out every step of **cleaning the data**.  You will remove **disqualified responses**, **standardize titles** and **educational levels** or other **demographic questions** that have an option for “**Other**,” correct incorrect answers (such as a compensation figure obviously missing a zero), and perhaps add **calculated variables** such as total compensation when you’ve asked for base and bonus or convert foreign currencies to a standard currency.  

Because you write code statements that carry out these data manipulation tasks and you insert explanatory comments for them in your script, you will be able to explain in your report’s **methodology** section as well as to the **sponsors** what you did to reach the final data set.  Also, you can test and scrutinize your operations as you go along.  As importantly, you are able to go back and check or revise your work, because gremlins pop up unexpectedly, and the ability to trace the evolution of your data set may save your bacon.  It is also trivial to rerun the code if the original data changes or enlarges.  A longer-term advantage is that if you redo the survey a year or two later, all your preparatory code remains applicable for use in that subsequent project.

Programmers ruefully grimace at the old chestnut, “Better to spend five hours coding a solution than five minutes doing it quickly by hand.”  Figuring out what code is needed to scrub your data and then writing it syntactically correctly in R or Python, for example, takes time and has aspects of trial and error, even for the most proficient programmer.  The truth is, even a proficient **survey analyst** can invest hours and hours tweaking the data through the scripting language.

This is where the capabilities of Excel (or other **spreadsheet packages**, such as Tableau) may step in to help.  With Excel you can see everything on the screen, and you can quickly sort the data by a key variable, such as “Title,” and then standardize its entries.  The order of the responses will change from the original order as you sort, but that doesn’t matter to your programming language.  You can whisk away an incomplete submission.  Whenever I resort to Excel, I copy the original exported data into a new worksheet (called “revisions”) and highlight any changes I make with background yellow.  By those two steps, I create a partial **audit trail** of my work which lets me undo a step by restoring the original data.  There may be ways to add comments to changes in Excel, but I use a third worksheet (cleverly called “notes”) to record my notes to that purpose.

I do not favor carrying out calculations in Excel, because the R programming language in my toolchest excels, so to speak, at calculations.  Whenever an entire variable needs to be manipulated, such as splitting one into multiple variables, transforming data into factors or date format, extracting information with a **regular expression**, or changing the levels of **factors**, I do those transformations in R.

