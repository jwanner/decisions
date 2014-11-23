decisions
=========

A simple ruby script to assess the best mode of transportation 


Jacob Wanner

Mode of transportation

Situation: Traveling from downtown Washington D.C. to downtown Boston (395 miles point to point)


Criteria:

Cost
Time
Connivence
Productive capability

Alternatives: 
Plane 
Train
Car
Bus

Method:  This experiment will be carried out by a rudimentary Ruby script assigning values to each possible scenario.  The 4 criteria will be quantified as follows: Cost: 30%, Time 30%, Connivence: 15%, Productive capability:15%  These 4 criteria are then used in the following formula: Time+Cost-Connvience-Productive capability, with the lowest score representing the best choice.  Example: Time(300min)*.3+Cost(400)*.3 - Connivence(4)* .15 - Productive capability(1) *.15 = 209.25


Results: Based on the result of the alternatives and the criteria, flying appears to be the best choice.  


Assumptions

 1 Defined as the amount of steps required to complete travels
 
 2 How possible is it for work to be done while traveling 
 
 3Connivence and productive capability are assigned values between 1 and 5 with 5 being the most productive or convenient. 