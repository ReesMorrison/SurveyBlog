---
title: 'Calculate the Median Absolute Deviation (MAD)'
author: Rees Morrison
date: '2023-01-12'
slug: []
categories:
  - Surveys
draft: no
---

The most common measure in survey results of what statisticians call “central tendency” is the average (the mean) of a set of numbers, such as the average number of paralegals in the responding law firms.   The next most common measure is the median, the middle value when the set is sorted from high to low.   Rarely you see the mode, which is the most common value in a set of numbers.

Then there are measures of dispersion like **standard deviation** and **variance**.  They give a sense of how much the numbers in a set vary.  But they are affected by extremely high or extremely low values and the normality of the distribution (how close a histogram of the numbers looks like a bell shape).  

The Median Absolute Deviation (MAD) resolves both those limitations.  It offers a way to quantify variation (along with the interquartile range) and to characterize a midpoint. Half the values in a set are closer to the median than the MAD, and half are further away.  It is what is known as a robust measure of central tendency.  Robust statistics serve well with data drawn from a wide range of non-normally distributed data sets. Unlike the measures just mentioned, MAD is not distorted by **outliers**. 

Think about the breakdown point for a measure (median, mean, variance, etc.).  It  is the proportion or number of small or large extreme values that must be introduced into a sample to cause the estimator to yield a bad (misleading) result.  The median’s breakdown point is .5 or half (the mean’s is 0). This means that the median only becomes “bad” when more than 50% of the observations are infinite.  For example: If you have a set of numbers for the office locations of seven law firms [2, 6, 6, 12, 17, 25 ,32], the median is 12 and the average is 14.28. If you replace 32 with infinity, the median stays the same (12), but the average soars to infinite.

To calculate the MAD, we find the median of absolute deviations from the median. In other words, the MAD is the middle number of the absolute values [where you ignore plus or minus signs] of the residuals (deviations) from the data’s median.

Let’s see how the MAD is calculated.  Using the same set of office locations from earlier:

1.	[(2 - 12), (6 - 12), (6 - 12), (12 - 12), (17 - 12), (25 - 12) , (32 - 12)] Subtract median from each
2.	|[-10, -6, -6, 0, 5, 13, 20]| Take the absolute value of the list
3.	[10, 6, 6, 0, 5, 13, 20] Find the median
4.	[10, 6, 6, 0, 5, 13, 20] -> [0, 5, 6, 6, 10, 13, 20] -> 6
5.  Multiply the median by the constant 1.4826 which is a correction factor that makes the MAD unbiased at the normal distribution
6.	6 * 1.4826 = 8.8956

Our MAD (8.8956) describes the degree of dispersion and the central tendency of our set of numbers.  It can also help identify outlier values. Going back to our example set’s median of 12 we can use +/- 2 or 2.5 or 3 MAD. For example:

12 + 2 times 8.8956 = 29.7912 as our upper threshold (above that means outlier)
12 – 2 times 8.8956 = -5.7912 as our lower threshold (below that means outlier)

Using this criterion, we identify 32 as an outlier in our example set of [2, 6, 6, 12, 17, 25 ,32].

<!-- End of post -->