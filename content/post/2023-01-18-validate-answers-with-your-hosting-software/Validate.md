---
title: 'Validate Answers with Your Hosting Software '
author: Rees Morrison
date: '2023-01-18'
slug: []
categories:
  - Surveys
draft: no
---

If you ask a seemingly simple question of law firm or law department lawyers such as, “What was your total cash compensation in the last fiscal year?”, the format of the answers you receive will be far from simple.  One person will enter “$100,000,” another “one hundred thousand,” a third will enter “100,000 dollars,” while a fourth will put in “was $100,000.”  Although a human knows instantly and correctly how to interpret each variation, they will confound your comparatively rigid computer.  To it, those obvious comp answers will be treated “character” answers and in that form will be unusable for any calculations.  If a computer reads a mixed variable, comprised of numbers and letters for example, it will interpret them as the simplest format: character text.

To avoid the annoying cleanup that conversion of character text to numbers requires, your question (or **instructions** should specify what respondents should and should not do when they fill in the answer.   “Only enter digits.  Do no enter commas, dollar signs ($), decimal points, or any text.  For example, just enter “150000.”

However, despite your careful and detailed specifications, your busy, sloppy, or stubborn respondents will nevertheless find ways to stumble into error.  “To err is human,” so what is the second line of defense?  **Validation checks.**

Presumably, your **hosting software** lets you specify that only digits can be entered  for the answer.  If someone tries to sneak in a “thousand” or a decimal point, an **error message** will appear on the screen that chides them, gently, for the infraction.   It should also guide them how to correct it.  The software might not allow them to move to the next question until they have removed the impermissible text, or it might bar them at the end from submitting their responses until the mistake is fixed.   

Validation rules help with other kinds of answers.  When you ask for the respondent’s last name, you don’t want them to prefix it with “Mr.”, “Mrs.”, or “Ms.,” nor add an honorific such as “Dr.”, “Professor” or “Esq.”  Again, the first prophylactic is the question:  “What is your last name, without any additions such as marital status or professional degrees?”   My style, however, is to keep the question as unembellished as possible, and to put instructions in parentheses at least or in a separate instruction line.

As a fallback, the survey software might spot spaces in the answer and remind the respondent to conform to the instructions.  The same ideas can help you obtain the names of cities with the state abbreviation or full expansion: “Charlotte” not “Charlotte, NC” or “Charlotte, North Carolina.”  This presents a trickier validation test, so you might break the city and the state into two questions (or entries).  

Here's another situation.  My legal industry surveys often ask for names of law firms.  I ask for the first two names only, because the two-name versions are easier to **merge and match**.   But the answerers don’t oblige; they write “Morrison & Rees, LLP” and I have to clean up those non-standard forms.  Validation rules might be able to lighten the load.

Consider yet another instance where standardization at the point of data entry can save hours of repair.  I ask questions about software used by the respondent.  No matter how clearly and carefully explain that I would like them to give the vendor’s name and then the package name, followed by a semi-colon – “SurePoint Advantage; Aderant Expert” – the blooming buzzing confusion of real life thwarts me.  And the limited tools of validation inspections don’t seem to work.  I could remind them to enter semi-colons and ask in the next question, “Did you follow the format of “vendor package;?”  But respondents could rebel that you are asking them to do your work for you;  “it’s asking enough of me to take the time to get the basics in.  You figure it out!”

Finally, on the topic of obtaining cleaner answers (aside from creating multiple-choice questions or drop-down lists), here’s another option.  The **answer space** might contain **formatting clues**.  For example, if you’re asking for an allocation of percentages of time spent on various tasks over a period, the answer space might have a percentage symbol (“%”) or abbreviation (“pct.”) on the right side of the data entry box (or a dollar sign to the left of the box).  They encourage what to fill in (percentage numbers only) and discourage what not to fill in (a percentage symbol, abbreviation, or currency symbol).

<!-- End of post -->
