---
title: "Linear Regression and Russian Equipment Losses Predicting Casualties"
author: "Rees Morrison"
date: "2023-11-29"
slug: []
categories: Russian War in Ukraine
draft: no
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

Under the Hood (about the software and algorithmic aspects of the analysis) 

Here are the types of equipment that the model tells us have a "statistically significant" **p-value** or very near it.  Statistically significant means the probability that such a value could have occurred by chance is less than 0.05, or less than one out of twenty.  Statisticians tell us that when the p-value of a variable is this low -- each type of equipment is a "variable" in our regression model -- we can be confident that "something is going on" and the association of the destroyed equipment to losses of soldiers is far from random.  The equipment loss does not cause some number of Russian soldiers to sprout sunflowers, but the two losses are statistically associated.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:broom"></span>Table 1: Linear Regression Model</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Equipment </th>
   <th style="text-align:right;"> Coefficient </th>
   <th style="text-align:right;"> p_value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> APCs </td>
   <td style="text-align:right;"> 4.60 </td>
   <td style="text-align:right;"> 0.0008 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Arty </td>
   <td style="text-align:right;"> -3.61 </td>
   <td style="text-align:right;"> 0.0011 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Planes </td>
   <td style="text-align:right;"> 76.01 </td>
   <td style="text-align:right;"> 0.0017 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MLRS </td>
   <td style="text-align:right;"> 14.76 </td>
   <td style="text-align:right;"> 0.0077 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tanks </td>
   <td style="text-align:right;"> 5.47 </td>
   <td style="text-align:right;"> 0.0087 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AA </td>
   <td style="text-align:right;"> 12.65 </td>
   <td style="text-align:right;"> 0.0425 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fuel </td>
   <td style="text-align:right;"> -1.84 </td>
   <td style="text-align:right;"> 0.0799 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> UAV </td>
   <td style="text-align:right;"> -1.36 </td>
   <td style="text-align:right;"> 0.0976 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Helis </td>
   <td style="text-align:right;"> -25.25 </td>
   <td style="text-align:right;"> 0.1882 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SpecEquip </td>
   <td style="text-align:right;"> -2.80 </td>
   <td style="text-align:right;"> 0.4775 </td>
  </tr>
</tbody>
</table>

Each **coefficient** of a regression model indicates the influence of one additional unit loss of that equipment on the casualty figure.  So, for example, under the fitted model, the average difference in casualties, comparing two days of the same equipment losses but one tank more is 5.47 more liquidated personnel than the model's average, 617 Soldiers.  Likewise, for every lost Russian artillery piece, subtract -3.61 lost personnel.^[The "e" at the end of a regression formula stands for the errors (aka "residuals"), which are the differences between the the model's predicted number of soldiers killed each day using the data on equipment lost and the actual number of soldiers killed that day.]

One of the gifts of the regression model is that it calculates each equipment coefficient as it holds all the other equipment variables constant, which it does by assigning them zero. This means the model isolates just the effect for the loss of one unit of that particular equipment on Soldiers. Each coefficient of a regression model measures what is called "effect size".  So, effect size indicates the magnitude of what one-plus-or-one-minus loss of a particular piece of Russian equipment means for the Soldier losses.
<!-- https://www.scribbr.com/statistics/effect-size/ very clear -->

Here is the formula for our model. Soldier deaths, where the first number is the predicted average, can be predicted from this equation, 617.1+5.5 times Tanks + 12.6 times AA + 4.6 times APCs + -3.6 times Arty + -1.8 times Fuel + -2.8 times SpecEquip + -25.3 times Helis + 14.8 times MLRS + -1.4 times UAV + 76 times Planes plus an error term, when you plug in the figures for the respective equipment losses.



Every type of military equipment in the table above has a p-value below the conventional threshold of statistical significance (UAV is slightly higher).  That is what we stated at the start and what stimulated thoughts on why some equipment losses move more closely in relation to killed-in-action numbers and others less so.

<!-- End of post -->
