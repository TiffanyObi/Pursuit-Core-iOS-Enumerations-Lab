import UIKit

// Question One

// a. Define an enumeration called iOSDeviceType with member values iPhone, iPad, iWatch. Create a variable called myiPad and assign it to .iPad.

// Your code here
/*enum IOSDeviceType {
    case iPhone, iPad, iWatch
}

let myiPad = IOSDeviceType.iPad


// Uncomment the lines below to test your solution

//let myiPad = iOSDeviceType.iPad
assert(myiPad == .iPad)*/

// b. Adjust your code above so that iPhone and iPad have associated values of type String which represents the model number.  Create an instance of a .iPhone("8+") and assign it to a variable called myPhone

// Your code here

/* enum IOSDeviceType {
    case iPhone(String), iPad(String), iWatch
}

let myPhone = IOSDeviceType.iPhone("8+")

// Uncomment the lines below to test your solution

switch myPhone {
case let .iPhone(model): assert(model == "8+", "Was expecting a model type of 8+, but got \(model)")
default: fatalError("Was expecting an iPhone but got \(myPhone)")
}
*/

// Question Two

// Write a function named getPosition(startingAt:afterSteps:) that takes an array of Steps, and a starting location of (Int, Int) and returns an (Int, Int) tuple representing the final position.

//A step .up will increase the y coordinate by 1.
//A step .down will decrease the y coordinate by 1.
//A step .right will increase the x coordinate by 1.
//A step .left will decrease the x coordinate by 1.

// Your function here
/*
enum Step {
    case up (Int)
    case down (Int)
    case left (Int)
    case right (Int)
}

func getPosition(startingAt: (x:Int,y:Int) , afterSteps:[Step]) -> (Int,Int){
    
   let x = 0
   let y = 0
    
    let steps = Step.down
    
    switch steps {
    case .up:
    case .down():
        (x,y-1)
    case .left:
        (x-1,y)
    case .right:
        (x+1,y)
    }
    return (0,0)
}



// Uncomment the lines below to test your solution

let startingLocation = (x: 0, y: 0)
let steps: [Step] = [ .up(0), .up(0), .left(0), .down(0), .left(0)]
let expectedEndPosition = (x: -2, y: 1)
let endPosition = getPosition(startingAt: startingLocation, afterSteps: steps)
print(endPosition)

//
//assert(endPosition == expectedEndPosition, "Was expecting \(expectedEndPosition) but got \(endPosition)")



// Question Three

// You are given a Coin enumeration which describes different coin values. Write a function called getTotalValue(from:) that takes in an array of tuples of type (number: Int, coin: Coin), and returns the total value of all coins in cents.
*/
enum Coin: Int {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}

// Your function here

func getTotalValue(from tuples: [(countOfCoins:Int,coin:Coin)]) -> (Int) {
     var totalMonies: Int = 0
    for tuple in tuples {
    
        switch tuple.coin {
    case .nickle:
        totalMonies += tuple.coin.rawValue * tuple.countOfCoins
        
    case .dime:
        totalMonies += tuple.coin.rawValue * tuple.countOfCoins
            
    case .quarter:
        totalMonies += tuple.countOfCoins * tuple.coin.rawValue
            
    case .penny:
        totalMonies += tuple.coin.rawValue * tuple.countOfCoins
        }
        
    }
    return totalMonies
}
// Uncomment the lines below to test your solution

let coinArr: [(Int, Coin)] = [
    (10, .penny),
    (15, .nickle),
    (3, .quarter),
    (20, .penny),
    (3, .dime),
    (7, .quarter)
]
//
let expectedTotal = 385
let total = getTotalValue(from: coinArr)
assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")

// Question Four

// Write an enum called Day to represent the days of the week with a raw value of type String.
// Write a method inside Day that returns whether or not it is a weekday (Monday - Friday)

// Your code here

// Uncomment the lines below to test your solution

//assert(Day.monday.isWeekday() == true, "Monday is a weekday")
//assert(Day.tuesday.isWeekday() == true, "Tuesday is a weekday")
//assert(Day.wednesday.isWeekday() == true, "Wednesday is a weekday")
//assert(Day.thursday.isWeekday() == true, "Thursday is a weekday")
//assert(Day.friday.isWeekday() == true, "Friday is a weekday")
//assert(Day.saturday.isWeekday() == false, "Saturday is not a weekday")
//assert(Day.sunday.isWeekday() == false, "Sunday is not a weekday")

// Question Five

//Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
//Define an enumeration named MatchResult with three members: .win, .draw, .lose.
//Write a function called matchResult(fromPlayerOneShape:andPlayerTwoShape:) that takes two HandShapes and returns a MatchResult. It should return the outcome for the first player (the one with the first hand shape).
//
//Rock beats scissors, paper beats rock, scissor beats paper

// Your code here

// Uncomment the lines below to test your solution

//let testCases: [(HandShape, HandShape, MatchResult)] = [
//    (.rock, .paper, .lose),
//    (.paper, .paper, .draw),
//    (.scissors, .rock, .lose),
//    (.rock, .scissors, .win)
//]
//
//for testCase in testCases {
//    let expectedOutput = testCase.2
//    let output = matchResult(fromPlayerOneShape: testCase.0, andPlayerTwoShape: testCase.1)
//    assert(output == expectedOutput, "Was execting \(expectedOutput), but got \(output) for inputs \(testCase.0) and \(testCase.1)")
//}
