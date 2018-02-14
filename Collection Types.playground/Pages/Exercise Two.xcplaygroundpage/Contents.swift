/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation
var restaurantRatings : [Double] = []

/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restaurantRatings.append(Double(arc4random_uniform(99) + 1))
}
/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */

var totalRating = 0.0
for rating in restaurantRatings {
    totalRating += rating
}
totalRating /= Double(restaurantRatings.count)

/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var peopleWhoHates = 0.0
for rating in restaurantRatings {
    if rating <= 80.0 {
        peopleWhoHates += 1
    }
    
}
var percentageOfPeopleWhoHates = peopleWhoHates / Double(restaurantRatings.count) * 100
/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var peopleAreVeryBad = 0.0
var peopleAreBad = 0.0
var peopleAreFair = 0.0
var peopleAreSatisfactory = 0.0
var peopleAreStellar = 0.0

for rating in restaurantRatings {
    if rating >= 0 && rating <= 25 {
        peopleAreVeryBad += 1
    } else if rating >= 25 && rating <= 49 {
        peopleAreBad += 1
    } else if rating >= 50 && rating <= 79 {
        peopleAreFair += 1
    } else if rating >= 80 && rating <= 89 {
        peopleAreSatisfactory += 1
    } else {
        peopleAreStellar += 1
    }
}
print("The number of people who are very bad is \(Int(peopleAreVeryBad)), the number of people who are bad is \(Int(peopleAreBad)), the number of people who are fair is \(Int(peopleAreFair)) and the number of people who are satisfactory is \(Int(peopleAreSatisfactory)), and the number of people who are stellar is \(Int(peopleAreStellar)).")





