let firstFiveEvenNumbers:[Int] = [0, 2, 4, 6, 8]  //  [0, 2, 4, 6, 8]
//firstFiveEvenNumbers.append(10) //This line will throw an error as array is not mutable.

var fewOddNumbers:[Int] = [3, 5, 11, 13, 15]  // [3, 5, 11, 13, 15]
//fewOddNumbers.append(17)
//fewOddNumbers.removeLast()
//fewOddNumbers
//fewOddNumbers.removeAtIndex(2)
//fewOddNumbers

var streetnames = ["Buffalo Gap", "Abbeygale"]   // ["Buffalo Gap", "Abbeygale"]

var emptyInt = [Int]()  // 0 elements

var emptyFloatArray = Array<Double>()   // 0 elements

let helloTwice = Array(repeating: "Hello", count: 2)  // ["Hello", "Hello"]

//Accessing Array Elements:

//You can provide the index of the element in the array you're looking for to fetch the element. The index starts from 0 for the first element.
let thirdElement = firstFiveEvenNumbers[2]  //4

//To retrieve a range of elements in an array, you can use the below shown syntax. The returned array include the indexes at the end of three dots (...)

let threeoddnos = fewOddNumbers[1...3]   // [5, 11, 13]

//Adding  and Removing Array Elements:

var twomultiples = [0, 2, 4] // [0, 2, 4]

twomultiples.append(8)       // [0, 2, 4, 8]

twomultiples.insert(6, at: 3) // [0, 2, 4, 6, 8]
//twomultiples.insert(123, atIndex: 7) // This will throw an error

twomultiples.append(10)      // [0, 2, 4, 6, 8, 10]
twomultiples += [12]         // Append using += operator
twomultiples

twomultiples.remove(at: 1)// 2

twomultiples.removeLast()    // 10
twomultiples

twomultiples.removeAll()     // 0 elements
twomultiples

twomultiples.reserveCapacity(3)

//Querying an Array:

twomultiples.count

twomultiples.isEmpty

twomultiples.capacity

//Algorithms

var integerArray = [9, 7, 6, 2, 3]

integerArray.sort {$0 < $1}

integerArray

let descendingArray:[Int] = integerArray.sorted{$1 < $0}

descendingArray

let reverseArray:[Int] = integerArray.reversed()

let evenNumbers = reverseArray.filter{ $0 % 2 == 0}

evenNumbers

let threemultiplied = integerArray.map{ $0 * 3}

threemultiplied

let additionofintegers = integerArray.reduce(0) {$0 + $1}

additionofintegers

let multiplyintegers = integerArray.reduce(1){$0 * $1}

multiplyintegers

//Operators

//The below operation is similar to 'append' except for the fact that it uses '+=' notation.

integerArray += [5, 4, 1]

//Iterating over an array

for i in integerArray{
    
    print(i)
    
}

//Exercises
//Create an array of strings, use the filter function to find the ones that begin with 'A'

func hasPrefix(word:String) -> Bool
{
    let firstCharIndex = word.startIndex
    let firstChar = word[firstCharIndex]
    if(firstChar == "A")
    {
        return true
    }
    
    return false
}

let words = ["Apple", "Banana", "Alex", "Card", "Echo"]
let wordsWithA = words.filter(hasPrefix)

wordsWithA

//Create an array of strings and sort them in descending order
let wordsDescending = words.sorted{$1 < $0}
wordsDescending

//Create an array of characters and append each of them using 'reduce' method
let characters = ["H", "E", "L", "L", "O"]
let fullword = characters.reduce(""){(prev, next) in prev + next}
fullword

//Write a utility method that takes an integer value as an index and an element. The method should append the element to the array if it can be, otherwise should print an error message stating the same.
func canAdd(myArray:[Int], addAtIndex:Int) -> Bool{
    
    if(myArray.count >= addAtIndex)
    {
        return true
    }
    
    return false
}

var integers = [3, 4, 5, 7, 8]
if (canAdd(myArray: integers, addAtIndex:8))
{
    integers.append(9)
}
else
{
    print("Cannot add element at index 8")
}

//Combine elements of two arrays
let array1 = ["A", "B", "C", "D", "E"]
let array2 = ["F", "G", "H", "I", "J"]

var together = array1 + array2
together
