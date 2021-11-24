# Amazon_Vine_Analysis

## Overview of the analysis: 
- The purpose of this analysis was to take a dataset of amazon reviews and determine if users were more likely to leave a 5 star review as a part of the vine program.  I chose to use SQL to do this analysis but it could have been approached in a number of different ways. The dataset I chose to analyze had reviews for tools in it. 

## Results of the Analysis: 
![alt text](https://github.com/mrodenberg9055/Amazon_Vine_Analysis/blob/main/vine%20analysis.PNG?raw=true)
- How many Vine reviews and non-Vine reviews were there?
   - In this analysis there were 7761 total vine reviews or paid reviews
   - There were far more non vine reviews with 1733334 non paid reviews
- How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
   - Of the 7761 vine reviews 4328 of those were 5 star reviews
   - For the non vine reviews there were 1109235 5 star reviews
- What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
   - The 4328 five star reviews was good for roughly 55% of the total vine reviews
   - The 1109235 five star reviews accounted for about 64% of the non vine reviews
 
## Summary: 
- In this particular dataset I don't believe there to be any positivity bias for reviews where the reviewers were apart of the vine program.  The overwhelming majority of the reviews were left by non-vine users and the percentage of those that were 5 stars was higher.
- We could add 4 star reviews to this analysis as well to see if the number of 4 plus 5 star reviews for paid users is higher than that of non paid.  4 star reviews are still considered to be positive so we could take those into consideration as well.  We could also calculate the average star rating to see if the paid is really top heavy and there is more variance in the non paid. 
