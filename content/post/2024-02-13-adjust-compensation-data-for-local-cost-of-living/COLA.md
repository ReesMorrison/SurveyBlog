---
title: 'Adjust Compensation Data for Local Cost of Living '
author: Rees Morrison
date: '2024-02-13'
slug: []
categories:
  - Surveys
draft: no
---

Compensation surveys abound in the legal sphere, yet it is common knowledge that the take-home pay of a law firm employee in a low cost-of-living city may be less than that of an identical counterpart in a firm based in an expensive urban metropolis, where the higher pay goes less far.  What it costs to pay expenses varies widely between cities, so a nominal pay gap doesn’t fairly reflect comparative costs.  Stated differently, $250,000 a year goes much farther in Waco than in Washington, DC.  To compare compensation figures straight up distorts what’s left over after the bills are paid.

One method to account for the domestic notion of purchase power parity is to adjust raw compensation data by a cost of living (COLA) index.  For example, in a survey of chief operating officers of law firms, it made sense to adjust each person’s compensation according to the cost structure of the city of their firm’s largest office.  The assumptions behind doing so were (1) that COLA differences among firms is influenced by the city where the plurality of the firm's lawyers are located and (2) that COO total comp reflects that COLA difference.  If more lawyers of a given firm work in Philadelphia than in any other location, Philly salaries will strongly influence its firm-wide salaries and bonuses, including those of the COO.

A complication of this seemingly self-evident proposition is that law firms have many offices.  Is it plausible to take the city with the most lawyers and deem that one to be the basis for the COLA adjustment?  Another empirical question is whether most law firms offer comparable pay for comparable levels across their multiple offices?

It’s true that in a time of virtual work, respondent COOs might not live in the metropolitan area where the firm is based. But it is plausible that the cost of living for a firm's largest office sets the compensation scale for the firm generally, and thus still bears on the COO's compensation.

One other rumination: larger law firms tend to have their most populous office in big cities.  Big cities are typically relatively expensive cities.  Thus, the size of firms and COLA of their largest office city should correlate strongly.

So how do you adjust for living expenses?  Many websites offer comparative cost-of-living figures for U.S. cities.  I have used Numbeo [https://www.numbeo.com/cost-of-living/country_result.jsp?country=United+States], which provides an index of COLA figures for 57 cities, starting with Honolulu at 102.5 and ending with Cincinnati at 64.1.  The federal government also publishes COLA indices for cities.

With the survey data in hand, create a new variable, COLA compensation.  It’s simple: divide the reported compensation, the figures the respondent entered into the questionnaire answer, by the city’s COLA index.   Thus, if a COO earned $300,000 and the firm’s largest office was in a city with a 0.9 COLA index (a dollar goes further there than in a city with a higher COLA index), the COLA compensation for that COO would be $333,333 ($300,000/0.9).  The report can then provide results based on both nominal amounts and COLA-adjusted amounts.  However, the survey report must continually remind readers that the numbers in text, plots or tables have been adjusted.

<!-- End of post -->
