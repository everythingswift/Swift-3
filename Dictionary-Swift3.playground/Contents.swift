//Creation of a Dictionary
var firstDictionary = ["key1":"value1", "key2":"value2"]
let emptyDictionary = [Int:String]()
var min2Dictionary = [String: Int](minimumCapacity: 2)

//Accessing Dictionary Element

firstDictionary["key1"]
firstDictionary["key2"]

let wordsDictionary = ["A":"Apple", "B":"Ball", "C":"Cat", "D":"Dog"]
wordsDictionary["B"]
wordsDictionary["C"]

var unlimitedDictionary = [1:"one", 2:"two"]
unlimitedDictionary[3] = "three"
unlimitedDictionary
unlimitedDictionary[4] = "four"

unlimitedDictionary[3] = "threee"
unlimitedDictionary
unlimitedDictionary[3] = nil
unlimitedDictionary

let prevValue = unlimitedDictionary.updateValue("foour", forKey: 4)
unlimitedDictionary

let removedValue = unlimitedDictionary.removeValue(forKey: 4)
unlimitedDictionary

//unlimitedDictionary.removeAll(keepCapacity: false)
unlimitedDictionary = [:]
unlimitedDictionary

var airportsDictionary = ["DFW":"Dallas Fort Worth", "DAL":"Dallas Love Field", "JFK":"John F Kennedy", "NWK": "Newark International"]
airportsDictionary.count
for key in airportsDictionary.keys
{
    print("Key : \(key)")
}

for val in airportsDictionary.values
{
    print("Value : \(val)")
}

let first1Dictionary = ["B":"Bus"]
let secondDictionary = ["C":"Car"]
let thirdDictionary = ["B":"Bus"]
if(first1Dictionary == secondDictionary)
{
    print("firstDictionary equals secondDictionary")
}
else
{
    print("firstDictionary is not same as secondDictionary")
}

if(first1Dictionary != thirdDictionary)
{
    print("firstDictionary is not same as thirdDictionary")
    
}
else
{
    print("firstDictionary equals thirdDictionary")
}

//Exercises.

//Create a immutable dictionary using 'let' with two elements. Try performing the following operations and see if you can. Deleting a particular key-value pair. Updating value for a key.

let twoElementDictionary = ["A":"Acura", "B":"BMW"]
//twoElementDictionary["A"] = nil  //Uncomment to see error
//twoElementDictionary["A"] = "Acu"  //Uncomment to see error

//Create a dictionary with 2 key-value pairs. Use updateValue(_forkey) method, and try updating an existing value. Use optional binding to verify the value exists.
var twoElementDictionary2 = ["A":"Acura", "B":"BMW"]
if let previousValue = twoElementDictionary2.updateValue("BMW E", forKey: "B")
{
    print("previousValue: \(previousValue) updated")
}
else
{
    print("previousValue not found, inserted new value")
}
twoElementDictionary2

//Create a dictionary with 3 key-value pairs. Use removeValueForKey method for a non existing key. Use optional binding to verify that the key does not exist.

var threeElementDictionary3 = ["A":"Acura", "B":"BMW", "C":"Chevy"]
if let removedValue = threeElementDictionary3.removeValue(forKey: "D")
{
    print("Removed: \(removedValue) removed")
}
else
{
    print("Key not found to remove")
}
threeElementDictionary3

