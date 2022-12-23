---
title: 'Identify Possibly Erroneous Responses (Outlier Detection) '
author: Rees Morrison
date: '2022-12-23'
slug: []
categories:
  - Surveys

draft: no
---

One of the methodological risks that a compensation survey particularly confronts is that respondents don’t enter correct information. It is possible, for example, that a Chief Operating Officer deliberately enters inflated values where the survey asks for salary or bonus. They may nurture a hope that if they and others put in numbers that are higher than what is true, the resulting averages and medians in the report will be too high.  Those inflated findings will be beneficial when they negotiate raises (or bonuses).  

That is a cynical interpretation for implausibly high answers.   After all, medians are not affected much by unusually high or low figures at the extremes.  A more likely explanation is at hand.  Anyone conducting a survey comes to realize that people make mistakes.   They type in a bonus of \$750,000 where they sloppily added a 0; your survey answer should have a value of \$75,000.   They may It's possible that when you do quality assurance you notice the oddity of a bonus being larger than a salary but typos can afflict either base or bonus.  And a bonus of 100000 doesn’t jump out at the analyst as a incorrect 10000 (or vice versa).  

All that admitted, computers can pitch in.  Software can identify values that are unusually high or low, which are called by statisticians “**outliers**”.   Most of the functions calculate the **standard deviation** for base, bonus, or whatever number is being vetted and then set a threshold for identifying outlier values, such as those more than three standard deviations from the median.  Others look at “local density,” so that if other values are close, the suspicious one looks less like an outlier.  

A survey of mine on COO compensation collected a total of 214 responses for total compensation. I ran several outlier detection tests and found that four of the values consistently were identified as outliers.  Let me be clear:  an outlier does not mean a deliberate or inadvertent wrong value; it may be that the response is completely correct even though it looms much larger or shrinks much smaller than other responses.  Yes, the median of law firm locations might be four, but one firm might still have 31 locations, which you can check on its website.

The safest way to allay any suspicions on uncheckable personal information is to write the person who submitted the questionable data and ask them to confirm what they entered.   Here is a stellar justification for the survey asking for email addresses.  You shouldn't have to send them the actual figures if they know them and can provide them again, such as their salary and bonus.  I emailed two COOs and received confirmation from one that the unusual bonus was correct, but the most extreme value had been entered by a person who remained silent.   What, then, to do?

If you cannot correct or confirm an extreme value, an outlier, then you have to decide whether to include it in your calculations, findings, and plots or to exclude it.  Again, the bizarre number isn’t by that fact alone illegitimate.   If you ask for height and someone enters 83 inches, they might play in the NBA.  

If you include an off-the-scale value, your averages will be pulled high or low.  Furthermore, your plots that include it will be harder to read because the scale on one axis is stretched, which crams together the lower values and makes them less legible.  I have dealt with the problem by splitting plots into below average and above average or by omitting the one odd-ball value and explaining that I omitted it.  You can also create a gap in the axis scale, although plot purists frown on that workaround, by annotating the plot to identify the outré value.
