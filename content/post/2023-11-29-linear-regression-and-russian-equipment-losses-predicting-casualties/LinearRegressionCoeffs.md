---
title: "Linear Regression and Russian Equipment Losses Predicting Casualties"
author: "Rees Morrison"
date: "2023-11-29"
slug: []
categories: Russian War in Ukraine
draft: yes
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<link href="/rmarkdown-libs/bsTable/bootstrapTable.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/bsTable/bootstrapTable.js"></script>

Here are the findings from a software analysis called "multiple linear regression." When the Russian invaders lose armored personnel carriers ("APCs") or artillery ("Arty"), those losses most strongly and reliably predict casualties of personnel ("Soldiers").  Curiously, airplanes that crash stand out as associated with deaths of soldiers on the ground.  Next, the destruction of multiple launch rocket systems ("MLRS") also reliably predict the number of casualties, but somewhat less assuredly.  When Ukraine eliminates or captures^[We understand that the losses reported include equipment that the Ukrainian armed forces have captured.] other varieties of equipment -- anti-aircraft systems ("AA"), drones ("UAVs"), vehicles/fuel tankers ("Fuel") -- it doesn't quite as reliably predict the number of human casualties for the day. 

Let's speculate why the first group of equipment strongly predicts casualties.  When either side engages in offensives or probes, APCs ferry soldiers to and from the front lines, which puts both the vehicles and occupants in harms way. APC losses ought to relate closely to soldier losses.  Likewise, Russia fires artillery shells at the Ukrainian positions being attacked (or at attacking Ukrainian forces), and Ukrainian counter-battery fire strikes back at the Russian artillery. So for Russia, losses of artillery relate to losses of its soldiers. But, somewhat oddly, for each AA battery destroyed, fewer Soldiers are predicted to be lost!  Perhaps if Ukraine's forces are focused on Russian artillery sites they aren't aiming so much at trenches or groups of Russian fighters.

Downed planes might have a close connection to downed soldiers because planes are more likely to be shot out of the sky if they are near the front line fighting.  They could be strafing, bombing, or launching missile in the heat of battle, when an attack or defense is flaring up and soldiers are perishing.

It's harder to picture why MLRS destruction is associated clearly with deaths of Russian soldiers, but perhaps MLRS should be considered simply a different variation of artillery. From that perspective, as with barrel artillery, when Ukrainians take out a MLRS, soldiers are dying at matching rates. 

Blown up Russian tanks being linked to dead Russian soldiers make sense not so much because tank crews die but because armor trundles along with infantry moving forward or provides supporting fire from nearby.  During attacks, Ukrainian anti-tank weaponry or mines are used to full effect, so tank and soldier losses co-occur. 

AA batteries and fuel tankers or other vehicles are generally more active in the rear, at some distance from the actual fighting, than at the front where the bulk of the trench warfare and squad-to-squad assaults are raging.  Yes, the Ukrainian armed forces destroy anti-aircraft kit and heavy transporters of fuel, but those tallies are not as well connected to battlefield deaths. Downed helicopters ought to be related to deaths of soldiers due to proximity, but only about 40 days out of the entire span of time include them, and typically only one or two in a day, so the association between helicopter crashes and soldier deaths is weak.

The weak link to drones (UAVs) puzzle me, especially as First-Person View (FPV) drones would seem likely to be closely linked to deaths of soldiers below them.  It makes sense that when Russian drones are destroyed they tend to be operating near Russian soldiers.  But those same drones often whir overhead in reconnaissance, target-spotting, or attack mode, with no Russian soldiers nearby.  In such situations, there might be no Russian personnel losses sustained even though the drones are shot down or crash. Anyway, the regression model has spoken: downing Russian drones is not sufficiently related to prediction of body bags of Russian soldiers. 







From the data set we tried to understand how Russian losses of equipment are associated with Russian losses of military personnel.  **Multiple linear regression** is a software tool that can help us learn the connections.  The regression model we created uses the predictor variables discussed above and in the table to explain the variables' relative contributions to predicting military personnel losses (Soldiers).

## About the technical (software and algorithms) aspects of the analysis 

Here are the types of equipment that the model tells us have a "statistically significant" **p-value** or very near it.  Statistically significant means the probability that such a value could have occurred by chance is less than 0.05, or less than one out of twenty.  Statisticians tell us that when the p-value of a variable is this low -- each type of equipment is a "variable" in our regression model -- we can be confident that "something is going on" and the association of the destroyed equipment to losses of soldiers is far from random.  The equipment loss does not cause some number of Russian soldiers to sprout sunflowers, but the two losses are statistically associated.

are t-stats more insightful than p-values, and 0.05 is not Ten Commandments https://towardsdatascience.com/why-you-should-prefer-confidence-interval-over-p-value-e32293bd174c

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:broom"></span>Table 1: Linear Regression Model</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Loss </th>
   <th style="text-align:left;"> Coefficient </th>
   <th style="text-align:right;"> p_value </th>
  </tr>
 </thead>
<tbody>
  <tr>

  </tr>
</tbody>
</table>

Each **coefficient** of a regression model indicates the influence of one additional unit loss of that equipment on the casualty figure.  So, for example, under the fitted model, the average difference in casualties, comparing two days of the same equipment losses but one tank more is 630 more liquidated personnel than the model's average, 1.0747181\times 10^{7} Soldiers.  Likewise, for every lost Russian tank, add 1400 more lost personnel.^[The "e" at the end of a regression formula stands for the errors (aka "residuals"), which are the differences between the the model's predicted number of soldiers killed each day using the data on equipment lost and the actual number of soldiers killed that day.]

One of the gifts of the regression model is that it calculates each equipment coefficient as it holds all the other equipment variables constant, which it does by assigning them zero. This means the model isolates just the effect for the loss of one unit of that particular equipment on Soldiers. Each coefficient of a regression model measures what is called "effect size".  So, effect size indicates the magnitude of what one-plus-or-one-minus loss of a particular piece of Russian equipment means for the Soldier losses.
<!-- https://www.scribbr.com/statistics/effect-size/ very clear -->

Here is the formula for our model. Soldier deaths, where the first number if the predicted average, can be predicted from 10747181.2+633timesAA + 15.8timesAPCs + -13.4timesArty + -76.7timesFuel + 3.7timesSpecEquip + 1396timesHelis + -260timesMLRS + -3.3timesUAV + -507.1timesPlanes + 0timesDate + -1290.3timesDayOfWeekMon + 669.5timesDayOfWeekSat + -1442.4timesDayOfWeekSun + -473.9timesDayOfWeekThur + -543.9timesDayOfWeekTues + 28.4timesDayOfWeekWed + 37755.4timesWeekEighteen + 12942.6timesWeekEleven + 27634timesWeekFifteen + -12024.5timesWeekFive + 128655.2timesWeekForty + 130025.1timesWeekForty-One + 133484.3timesWeekForty-Two + -13624.9timesWeekFour + 24290.9timesWeekFourteen + 4066.3timesWeekNine + 43505.9timesWeekNineteen + -28155.5timesWeekOne + -3422.8timesWeekSeven + 36408timesWeekSeventeen + -6697.7timesWeekSix + 29187.4timesWeekSixteen + 8619.8timesWeekTen + 19854.6timesWeekThirteen + 85881.4timesWeekThirty + 118328.1timesWeekThirty-Eight + 107296.2timesWeekThirty-Five + 102818.6timesWeekThirty-Four + 121884timesWeekThirty-Nine + 89522.3timesWeekThirty-One + 115042.7timesWeekThirty-Seven + 111812.7timesWeekThirty-Six + 97614.9timesWeekThirty-Three + 93494.9timesWeekThirty-Two + -17609.7timesWeekThree + 18202.7timesWeekTwelve + 44824timesWeekTwenty + 77868.4timesWeekTwenty-Eight + 64804.1timesWeekTwenty-Five + 64574timesWeekTwenty-Four + 77959.9timesWeekTwenty-Nine + 51764.7timesWeekTwenty-One + 74743.2timesWeekTwenty-Seven + 70682.8timesWeekTwenty-Six + 58534.2timesWeekTwenty-Three + 53822.4timesWeekTwenty-Two + -22752.8timesWeekTwo + NAtimesDay + 8.3timesFullDate01 August 2023 + 2556.3timesFullDate01 February 2023 + 1295.1timesFullDate01 January 2023 + 896.8timesFullDate01 July 2023 + 1367.8timesFullDate01 June 2023 + -248.9timesFullDate01 March 2023 + 559.5timesFullDate01 May 2023 + -2611.5timesFullDate01 October 2023 + 539.3timesFullDate01 September 2023 + -1373timesFullDate02 April 2023 + 608.8timesFullDate02 August 2023 + -118.2timesFullDate02 February 2023 + 1053.5timesFullDate02 January 2023 + 532.6timesFullDate02 July 2023 + 1784.5timesFullDate02 June 2023 + 766timesFullDate02 March 2023 + -1230.2timesFullDate02 May 2023 + -3879.7timesFullDate02 October 2023 + -160timesFullDate02 September 2023 + -976.8timesFullDate03 April 2023 + 1574.7timesFullDate03 August 2023 + 2276.8timesFullDate03 February 2023 + -598.2timesFullDate03 January 2023 + -998.1timesFullDate03 July 2023 + 11.5timesFullDate03 June 2023 + 1619.2timesFullDate03 March 2023 + 154.5timesFullDate03 May 2023 + -3415.2timesFullDate03 October 2023 + 527.5timesFullDate03 September 2023 + -917.4timesFullDate04 April 2023 + 1011.5timesFullDate04 August 2023 + -154.5timesFullDate04 February 2023 + 505timesFullDate04 January 2023 + -961timesFullDate04 July 2023 + -1119.6timesFullDate04 June 2023 + 2196.8timesFullDate04 March 2023 + 1170.3timesFullDate04 May 2023 + -2534timesFullDate04 October 2023 + -243.5timesFullDate04 September 2023 + 78timesFullDate05 April 2023 + 2594.6timesFullDate05 August 2023 + -2653.2timesFullDate05 February 2023 + 2358.4timesFullDate05 January 2023 + 1931.6timesFullDate05 July 2023 + -3508.1timesFullDate05 June 2023 + -1079.6timesFullDate05 March 2023 + 4595.8timesFullDate05 May 2023 + -2454.1timesFullDate05 October 2023 + -688.4timesFullDate05 September 2023 + -2948timesFullDate06 April 2023 + 398.4timesFullDate06 August 2023 + -924timesFullDate06 February 2023 + 4502timesFullDate06 January 2023 + -4399timesFullDate06 July 2023 + -300.6timesFullDate06 June 2023 + -2070.3timesFullDate06 March 2023 + 1999.3timesFullDate06 May 2023 + -1135.5timesFullDate06 October 2023 + -2974.2timesFullDate06 September 2023 + 527.2timesFullDate07 April 2023 + 189.9timesFullDate07 August 2023 + -2165.6timesFullDate07 February 2023 + NAtimesFullDate07 January 2023 + -2234.1timesFullDate07 July 2023 + 1562.4timesFullDate07 June 2023 + -1170.2timesFullDate07 March 2023 + 92.3timesFullDate07 May 2023 + NAtimesFullDate07 October 2023 + -59.1timesFullDate07 September 2023 + NAtimesFullDate08 April 2023 + -2484.3timesFullDate08 August 2023 + -2335.8timesFullDate08 February 2023 + -1428timesFullDate08 January 2023 + NAtimesFullDate08 July 2023 + 1198.5timesFullDate08 June 2023 + -1042.9timesFullDate08 March 2023 + -886.1timesFullDate08 May 2023 + -936.4timesFullDate08 October 2023 + 478.1timesFullDate08 September 2023 + -1230.3timesFullDate09 April 2023 + 381.9timesFullDate09 August 2023 + -2286timesFullDate09 February 2023 + -4056.4timesFullDate09 January 2023 + -128.3timesFullDate09 July 2023 + 985.1timesFullDate09 June 2023 + -1333.9timesFullDate09 March 2023 + -1260.5timesFullDate09 May 2023 + -3462.9timesFullDate09 October 2023 + NAtimesFullDate09 September 2023 + -254.4timesFullDate10 April 2023 + -396.9timesFullDate10 August 2023 + -2818.7timesFullDate10 February 2023 + -573.4timesFullDate10 January 2023 + -1077.8timesFullDate10 July 2023 + NAtimesFullDate10 June 2023 + 303.2timesFullDate10 March 2023 + -1709.3timesFullDate10 May 2023 + -2659.6timesFullDate10 October 2023 + -462.4timesFullDate10 September 2023 + -1444.6timesFullDate11 April 2023 + 325timesFullDate11 August 2023 + NAtimesFullDate11 February 2023 + 79.3timesFullDate11 January 2023 + 606.6timesFullDate11 July 2023 + -368.4timesFullDate11 June 2023 + NAtimesFullDate11 March 2023 + -561.4timesFullDate11 May 2023 + -2166.8timesFullDate11 October 2023 + -2399.5timesFullDate11 September 2023 + -398.4timesFullDate12 April 2023 + NAtimesFullDate12 August 2023 + 1022.4timesFullDate12 February 2023 + -2351.8timesFullDate12 January 2023 + -216timesFullDate12 July 2023 + -2347.7timesFullDate12 June 2023 + -2805.2timesFullDate12 March 2023 + -92.1timesFullDate12 May 2023 + 774.6timesFullDate12 October 2023 + -711.1timesFullDate12 September 2023 + -430.2timesFullDate13 April 2023 + -3276.7timesFullDate13 August 2023 + -930.8timesFullDate13 February 2023 + 975.1timesFullDate13 January 2023 + -1388.2timesFullDate13 July 2023 + -5151.1timesFullDate13 June 2023 + -1201.8timesFullDate13 March 2023 + NAtimesFullDate13 May 2023 + 424.1timesFullDate13 October 2023 + -1620.5timesFullDate13 September 2023 + -175.3timesFullDate14 April 2023 + -840.3timesFullDate14 August 2023 + 595.3timesFullDate14 February 2023 + NAtimesFullDate14 January 2023 + 1291.8timesFullDate14 July 2023 + -2598timesFullDate14 June 2023 + -1050.4timesFullDate14 March 2023 + 1627.3timesFullDate14 May 2023 + NAtimesFullDate14 October 2023 + -83.8timesFullDate14 September 2023 + NAtimesFullDate15 April 2023 + -2931timesFullDate15 August 2023 + -2001.5timesFullDate15 February 2023 + -2943.3timesFullDate15 January 2023 + NAtimesFullDate15 July 2023 + -1667.9timesFullDate15 June 2023 + -389.3timesFullDate15 March 2023 + 1236.7timesFullDate15 May 2023 + NAtimesFullDate15 October 2023 + -679.6timesFullDate15 September 2023 + 2316.4timesFullDate16 April 2023 + -881.9timesFullDate16 August 2023 + -3028.3timesFullDate16 February 2023 + -1691.8timesFullDate16 January 2023 + 3400.2timesFullDate16 July 2023 + -616.2timesFullDate16 June 2023 + -404.1timesFullDate16 March 2023 + 1933.9timesFullDate16 May 2023 + NAtimesFullDate16 September 2023 + 1761.7timesFullDate17 April 2023 + 894.1timesFullDate17 August 2023 + 801.7timesFullDate17 February 2023 + -1040.5timesFullDate17 January 2023 + 3341timesFullDate17 July 2023 + NAtimesFullDate17 June 2023 + -1426.8timesFullDate17 March 2023 + 1082.6timesFullDate17 May 2023 + -2792.7timesFullDate17 September 2023 + 1157.7timesFullDate18 April 2023 + -1886.8timesFullDate18 August 2023 + NAtimesFullDate18 February 2023 + -723timesFullDate18 January 2023 + 6168.2timesFullDate18 July 2023 + -1466.2timesFullDate18 June 2023 + NAtimesFullDate18 March 2023 + 2929.8timesFullDate18 May 2023 + -968.6timesFullDate18 September 2023 + 2297.4timesFullDate19 April 2023 + NAtimesFullDate19 August 2023 + -1152.3timesFullDate19 February 2023 + -2132.9timesFullDate19 January 2023 + 3130.4timesFullDate19 July 2023 + -1255timesFullDate19 June 2023 + -5152.5timesFullDate19 March 2023 + 2624.5timesFullDate19 May 2023 + -469.1timesFullDate19 September 2023 + 3527.7timesFullDate20 April 2023 + -2807timesFullDate20 August 2023 + 1653.7timesFullDate20 February 2023 + -684.7timesFullDate20 January 2023 + 5002.9timesFullDate20 July 2023 + 1652.2timesFullDate20 June 2023 + -3954.1timesFullDate20 March 2023 + NAtimesFullDate20 May 2023 + 93.9timesFullDate20 September 2023 + 2619.8timesFullDate21 April 2023 + -1283.9timesFullDate21 August 2023 + -592.8timesFullDate21 February 2023 + NAtimesFullDate21 January 2023 + 329.1timesFullDate21 July 2023 + 476.9timesFullDate21 June 2023 + -2192.3timesFullDate21 March 2023 + -2364.5timesFullDate21 May 2023 + 589.1timesFullDate21 September 2023 + NAtimesFullDate22 April 2023 + -1458.5timesFullDate22 August 2023 + -605.9timesFullDate22 February 2023 + -1310.5timesFullDate22 January 2023 + NAtimesFullDate22 July 2023 + 870.7timesFullDate22 June 2023 + -3487.9timesFullDate22 March 2023 + 160.3timesFullDate22 May 2023 + 1183.4timesFullDate22 September 2023 + -2821.1timesFullDate23 April 2023 + -779.6timesFullDate23 August 2023 + -211.4timesFullDate23 February 2023 + -1583.8timesFullDate23 January 2023 + -1143.2timesFullDate23 July 2023 + 2283.8timesFullDate23 June 2023 + -954timesFullDate23 March 2023 + -2450.6timesFullDate23 May 2023 + NAtimesFullDate23 September 2023 + -195.6timesFullDate24 April 2023 + -1626.1timesFullDate24 August 2023 + 350.9timesFullDate24 February 2023 + -6330timesFullDate24 January 2023 + -958.2timesFullDate24 July 2023 + NAtimesFullDate24 June 2023 + -3150.3timesFullDate24 March 2023 + -1716.7timesFullDate24 May 2023 + -1834timesFullDate24 September 2023 + -1026.5timesFullDate25 April 2023 + -641.2timesFullDate25 August 2023 + NAtimesFullDate25 February 2023 + 186.7timesFullDate25 January 2023 + -1237.7timesFullDate25 July 2023 + -1180.2timesFullDate25 June 2023 + NAtimesFullDate25 March 2023 + -802.4timesFullDate25 May 2023 + -2148.8timesFullDate25 September 2023 + -2283.4timesFullDate26 April 2023 + NAtimesFullDate26 August 2023 + -550.9timesFullDate26 February 2023 + -25.7timesFullDate26 January 2023 + -3276.7timesFullDate26 July 2023 + 165.4timesFullDate26 June 2023 + -3509timesFullDate26 March 2023 + NAtimesFullDate26 May 2023 + -844.2timesFullDate26 September 2023 + -241.2timesFullDate27 April 2023 + -1302.1timesFullDate27 August 2023 + 116.6timesFullDate27 February 2023 + -1995.4timesFullDate27 January 2023 + 1108.8timesFullDate27 July 2023 + -26.6timesFullDate27 June 2023 + -244timesFullDate27 March 2023 + NAtimesFullDate27 May 2023 + -690.4timesFullDate27 September 2023 + -315.6timesFullDate28 April 2023 + -2343.2timesFullDate28 August 2023 + NAtimesFullDate28 February 2023 + NAtimesFullDate28 January 2023 + 124.9timesFullDate28 July 2023 + -1689.8timesFullDate28 June 2023 + NAtimesFullDate28 March 2023 + NAtimesFullDate28 May 2023 + NAtimesFullDate28 September 2023 + NAtimesFullDate29 April 2023 + NAtimesFullDate29 August 2023 + NAtimesFullDate29 January 2023 + NAtimesFullDate29 July 2023 + NAtimesFullDate29 June 2023 + NAtimesFullDate29 March 2023 + NAtimesFullDate29 May 2023 + NAtimesFullDate29 September 2023 + NAtimesFullDate30 April 2023 + NAtimesFullDate30 August 2023 + NAtimesFullDate30 January 2023 + NAtimesFullDate30 July 2023 + NAtimesFullDate30 June 2023 + NAtimesFullDate30 March 2023 + NAtimesFullDate30 May 2023 + NAtimesFullDate30 September 2023 + NAtimesFullDate31 August 2023 + NAtimesFullDate31 January 2023 + NAtimesFullDate31 July 2023 + NAtimesFullDate31 March 2023 + NAtimesFullDate31 May 2023 + NAtimesStrikes plus an error term.



Every type of military equipment in the table above has a p-value below the conventional threshold of statistical significance (UAV is slightly higher).  That is what we stated at the start and what stimulated thoughts on why some equipment losses move more closely in relation to killed-in-action numbers and others less so.