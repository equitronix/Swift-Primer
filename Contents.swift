import UIKit

/* TYPES
there are 3 broad types in Swift

 1. Structures
 2. Classes
 3. Enums
 */

/* Each type can have:
 1. properties
 2. initializers
 3. instance methods
 4. class methods
 */

/* STRUCTS: In swift all basic types are also Structs like:
 1. Int, Float, Double
 2. String
 3. Bool
 4. Collections like Arrays, Dictionary and Set
 */

// COLLECTIONS
/* There are 3 types of collections
 1. Array
 2. Dictionary
 3. Set */

//Arrays

var arrayOfString1: [String] = []; //one way of declaring an array of String that is initially empty
var arrayOfString2: Array<String> = Array<String>(); //another way

var arrInt: [Int] = [10,12,3];

print(arrInt[0]);


//Dictionary
var sidesOfShapes: Dictionary<String,Int> = Dictionary<String,Int>();
sidesOfShapes["triangle"] = 3;
sidesOfShapes["rectangle"] = 4;
print(sidesOfShapes["triangle"] ?? "not found");

var costOfCars: Dictionary<String,Int> = ["BMW":4000, "Merc":5000];
print(costOfCars["BMW"] ?? "not found");

//Sets
var setOfPrimes:Set<Int> = Set<Int>();
setOfPrimes.insert(1);
setOfPrimes.insert(3);

print(setOfPrimes);

var setOfEvens:Set<Int> = [2,4,6];

for val in setOfEvens {
    print(val);
}


//Optionals - variable that can have a value or optionally be null.


var sideOfSquare: Int?

// now this is forcefully unwrapping them. Can be error prone...
//print("area of square \(sideOfSquare!*sideOfSquare!)");

//The better way is:
if let val = sideOfSquare {
    print("area of square \(val*val)"); //will not be executed as sideOfSquare is nil
}

//now set the value
sideOfSquare = 10;
if let val = sideOfSquare {
    print("area of square \(val*val)");
}


//Enums, Int is the type of raw value

enum carType: Int {
    case merc = 1
    case bmw = 2
    case vw = 3
}


var car = carType.merc
