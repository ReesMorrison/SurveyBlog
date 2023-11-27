---
title: "Explore Factors with Entropy, Information Gain, and Mutual Information"
author: "Rees Morrison "
date: "2023-11-22"
output:
  pdf_document: default
  html_document:
    df_print: paged
categories: Surveys
draft: no
slug: []
---





When a survey question collects data that is neither numeric nor text, it is likely a categorical, like Male/Female or Republican/Democrat/Independent.  Once that kind of data has been collected, how can you better understand those categorical variable (aka factors) findings?     

The **entropy** of a factor variable, such as COO titles, measures the amount of randomness in the distribution of the variable. Here, "distribution" simply means the string of answers the survey collects.  Higher entropy indicates greater unpredictability in the factor.  Stated differently, a factor’s entropy reflects the average uncertainty level or disorder in its various outcomes.  Variables with higher uncertainty have higher entropy. That indicates a more heterogeneous variable with more levels and the levels have different numbers of respondents, while a lower entropy signifies a more pure and homogeneous variable (fewer levels and more balanced respondents in the levels). If all COO titles in our data were the same, the entropy would be zero. If two titles dominated and had approximately equal numbers of respondents, the entropy would still be quite low. If the four standardized titles all have a decent number of respondents, but the numbers vary widely, entropy will be higher.

To find the entropy of a factor, you first calculate the probability of each of its levels.  With our data set of COO titles, 
Administrator is 0.151, 
Chief is 0.54, 
Director is 0.243, and 
Other is 0.0669 -- the probabilities total 1.0.  Then you multiply each proportion by the logarithm to base 2 of it^[The log base 2 to a number is equal to the exponent value of 2 which gives the number.  So, if the probability for the title of Chief is 0.54] the base 2 exponent would be -0.4728381, or 2 raised to that value.] and take the absolute value of adding those four products.  The sum is 
1.42, the entropy of the COO title factor.^[A second calculation of entropy using a function from a different R library -- DescTools -- produces produces a slightly lower value, 1.65.]  

By comparison, the entropy of COO educational levels is 2.009; since it is higher, the educational background of COOs has more uncertainty or unpredictability. It would be harder to guess. Finally, as to the prior position of COOs, its entropy value is 2.14, which is even higher than educational level.  These insights from entropy calculations can help an analyst choose which variables to include in models, such as a multiple regression model.

Aside from giving us a handle on the "reliability" of a variable, another common use of entropy values shows up in **decision trees**.  A decision tree algorithm for classification creates a branch by calculating the resulting entropy (sometimes called "impurity").  From the top, the root level, a branch splits where the algorithm determines the resulting branch has the lowest entropy value.  In other words, it looks for the split that maximally reduces the uncertainty in the classification labels (for exammple, the tree might be classifying the title of COOs based on other factor variables).^[It is the weighted entropy, which means taking the weights of each attribute. The weights are the probability of each of the classes.] The more entropy drops, the more  information has been gained.

In fact, **Information gain** is the term for the pattern observed in data when there is a reduction in entropy. It consists of the entropy of the parent node in a decision tree minus the entropy of the child node (branch) below it. It is calculated by comparing the entropy before and after a split. The idea is to select the feature and split point that maximizes information gain. Higher information gain implies that the split provides more information about the class labels.

Can we improve (reduce) the entropy of the parent dataset to classify COO titles by segmenting on educational level? Information gain helps answer this question by measuring how much “information” a given level of education gives us about titles. The idea is to look at how much we can reduce the entropy of our parent node by segmenting on a given educational background.^[Information Gain is calculated by subtracting from the entropy of the parent factor, title, the sum of all the the ratios of the number of COOs in each educational level divided by all the COOS with a title and each of those multiplied by the entropy of educational level.  Whew!]

<!-- Where  Hp is the entropy of the parent (the complete, unsegmented dataset), n is the number of values of our target variable (and hence the number of child segments),  pci is the probability that an observation is in child  i (the weighting), and  Hci is the entropy of child (segment)  i. -->

Turn now to a third, related measure for factors.  **Mutual information** helps us understand how much information two factor variables share. The more the two have in common, the higher their mutual information value.  It captures both linear and nonlinear relationships between the two variables unlike traditional correlation coefficients which are restricted to linear relationships.

Calculating the mutual information (MI) between two categorical factors, such as title and education level, can provide insights into the statistical dependence or information shared between the two variables. Mutual information measures the amount of information one variable provides about the other. It is usually measured in **nats**.^[Nats are a unit of measurement for information. The term "nat" is short for "natural unit of information" and is named after the natural logarithm, which is commonly denoted as "ln" (logarithm to the base "e," where "e" is Euler's number, approximately 2.72).  The relationship between nats (nat) and bits (bit) is that 1 nat is equal to approximately 1.4427 bits.]  It tells us how much information about a COO's title we can know if we know that COO's level of education. The magnitude of the mutual information reflects the strength of the association between the two factors. Higher MI values indicate a stronger association, while lower values suggest a weaker association.



Mutual information is calculated by subtracting the entropy of the joint distribution of the two variables^[That values comes from a contingency table for the two variables, which leads to marginal probabilities, joint probabilities (for each cell in the table), and a final calculation of entropy.] from the sum of their individual entropy values.  So, if the sum of the entropy of title and the entropy of educational level is 1.65 plus 2.01, we subtract the entropy of the two variables together from the joint entropy, 3.54.  That's our (meager) mutual information!^[Keep in mind that mutual information is a non-parametric measure and does not make assumptions about the form of the relationship between variables. It is particularly useful when dealing with categorical data or when you want to capture non-linear associations between variables. However, interpreting MI values requires domain knowledge and context to understand the practical significance of the associations between factors.]

So, to put all the above together: the entropy of any categorical factor in our COO dataset is a value that increases the more the factor "bounces around," the more it exhibits a haphazard pattern.  If we sort each of the COOs with a given title by a second factor, such as education, we lower the entropy of title, and we can quantify  that as Information Gain.  Finally, with mutual information, we can quantify the likelihood of predicting a factor variable (e.g., title) if we know a second factor (e.g., educational background).

<!-- End of post -->
