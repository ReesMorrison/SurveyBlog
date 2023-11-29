---
title: Adjusted R-Squared for the Linear Regression Model of Russian Losses
author: Rees Morrison
date: '2023-11-29'
slug: []
categories:
  - Russian War in Ukraine
draft: no
---






All very interesting, that a linear regression model shows which of various types of Russian equipment losses are most closely associated with deaths of Russian soldiers. Beyond those findings, can we also say something about how well those equipment losses in the aggregate account for Russian casualties?  Yes, we can, with the **Adjusted R-Squared** value calculated for the linear regression model.  We explain this value further below.

Here's the takeaway: Despite having 288 days of data and the range of equipment losses, the model only explains a bit less than a quarter of the variance in the casualties.  More precisely, the Adjusted R-Squared figure is 0.22.  

What accounts for the other three-quarters?  Most obviously, battlefield actions for which we don't have data explain 75% or so of the daily casualties of Russian soldiers. Despite the seeming plenitude of information available, the fog of war and other factors significantly limit our regression model's *predictive* power.  Note, however, that Adjusted R-Squared at this level does not deprecate the *explanatory* power of the linear regression model. 

All kinds of additional information about Ukraine's war-making would improve Adjusted R-Squared.  For example, many observers of the war believe that artillery bombardments by Ukraine are their most lethal weapon, but we don't have data for the number of shells fired per day.  More specifically, cluster munitions wreak lethality when they spew hundreds of bomblets over a large area; they are being deployed but we know nothing about numbers of them used each day (or even the first day they were deployed). We have no data on the number of mines that explode under Russian troops.  Ukrainian snipers pick off targets, but we don't have numbers about know how many are behind scopes or how many times they shoot.  Another missing metric that would strengthen the model concerns the number of drone sorties flown each day by Ukraine.

Armchair data analysts can't include in a model anything about how many Russian soldiers are killed directly by Ukrainian bullets, bayonets, rocket-propelled grenades, or ordinary grenades.  The up-close combat that makes trench struggles and skirmishes so nightmarish claims scores or hundreds of lives.  Put differently, frontal savagery accounts for large chunks of deaths that our equipment-based model can't capture.  

Russian maneuvers and tactics also create many unquantifiable unknowns.  We miss in in the regression model any data about "friendly fire" casualties, where Russian shells, shots, treads, or fragging eliminate their own troops.   Sometimes combatants kill themselves; bunkers, tunnels or trenches collapse with lethal effect or vehicles crash. Soldiers die of disease, heart attack, or hypothermia in the bitter Ukrainian cold. Munitions such as mines, grenades, and mortars malfunction and devastate unfortunate soldiers who are nearby.  As one instance, who delivers supplies to an artillery system and shows up at the wrong time?  What about wounded soldiers who expire later, during evacuation, in a field hospital or far from the initial wounds?

The Ukrainian Ministry of Defense does not elaborate on how it compiles the casualty figures it releases. Watching even a handful of videos from combat will convince anyone that when it's kill or be killed, soldiers aren't keeping track of the number of opponents who have gone down.  Tank crews are unlikely to count the number of enemies they slay by firing a round.  Filling body bags after an area has been secured doesn't tell you what day the person died.  Do partisan strikes or raids by special operations forces in temporarily-occupied areas add to Soldier counts?  If HIMARS or Storm Shadows clobber a command center or ammunition depot, it is likely that some invaders who are nearby cease to be, but how can Ukraine's tally incorporate those corpses? 

If a Russian soldier falls within eyesight of a Ukrainian or Ukrainian drone, the death should be counted, of course. But we do not know whether the daily Soldier tally consists in part of a given number of deaths assumed per tank or artillery piece destroyed. If a far-off tank explodes from a drone attack, does the Ministry of Defense assume that two of the four tank crew members should be presumed deceased, for example? Likewise, when they blow up an artillery piece, do they assume one (or more) of the personnel who are moving, loading and targeting it also die?  If Ukraine applies such algorithms for casualties presumed to be directly connected with the destruction of a piece of equipment, the model would have in unexplained correlation.  The Soldiers figures would more closely track equipment losses that trigger an heuristic addition of deaths.

Under the Hood

Let's return to Adjusted R-Squared.  Regression is all about prediction: the data in variables predicts the target variable.  All the limitations of our data being acknowledged, we still can learn from our regression model what percentage of the predicted casualties is explained by the data we do have. Adjusted R-Squared identifies the percentage of variance in the Soldiers figures that is explained by the equipment losses. Higher R-squared values are better than lower R-squared values  -- it means the regression model accounts for more of the predicted Soldiers. 

The model corrects for the number of predictor variables, i.e., the number of types of equipment losses, because simply having more predictors usually increases the percentage of the variability explained. When you add more variables to a regression formula, Adjusted R-squared increases only if the new predictor variables improve the model more than you would expect by chance.  So Adjusted R-squared takes into account **degrees of freedom**.[^1][R-squared is equal to the square of the correlation between the predicted values and actual values.  Adjusted R-squared is the R-squared reduced by the ratio of the degrees of freedom, 277, to the number of days of observations.]  It represents the amount of variance in the estimated responses explained by the regression model relative to how much variation there was to explain in the first place. When you increase the number of observations but keep the number of predictors constant, the adjusted R-squared tends to increase. That increase, however, is welcome because richer data bolsters a regression model.

There is more from our model.  In addition to Adjusted R-squared, we can learn from it about how well the model fits the data.  The **F-test** tells us whether the regression model, as a whole, is statistically significant in predicting casualties.  That is, can we trust that this equipment data and our linear regression model can be relied on to predict Russian casualties reasonably accurately if we feed it a new day of data?  Our model has an F-statistic of   8.9, which is highly statistically significant because it yields a nanoscopic p-value of 0.000000000001.  

So, to pull together these two strands, the regression model tells us that we have found a meaningful and useful collection of data for insights into Russian troop liquidations (thank you, F-test), but still quite a bit of insight remains outside our purview (thank you, Adjusted R-squared).

We close by pointing out that the conclusions of the first part remain valid about which equipment losses have predictive power and which do not regarding casualties and that the coefficients link losses by equipment type to casualty numbers.
