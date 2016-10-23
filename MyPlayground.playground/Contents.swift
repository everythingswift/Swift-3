
// Swift Chapter 4 - Tuples

//Tuple examples

let priceOfFruit = ("Apple", 3.95)

let whoIsYounger = ("Ashley", 1995, "Philadelphia")

print("The youngest in class is \(whoIsYounger.0)")

//Separate variables for a tuple

let (whichCoffee, waterInOz) = ("Dark Roast", 6)

print("The name of the coffee is \(whichCoffee)")

print("Water needed in Ozs is \(waterInOz)")


//Individual names of tuples declared

let coffeeType = (whichCoffee: "Dark Roast", waterInOz : 6)

print("The name of the coffee is \(coffeeType.whichCoffee)")

print("Water needed in Ozs is \(coffeeType.waterInOz)")
