//: # Swift Structures
//: [TOC](TOC) - [Previous](@previous) - [Next](@next)
/*:
## Exercise 1
Design a function that receives a Character and a Dictionary as input and returns an array containing the keys of the Dictionary that start with the input character.

### Input:
* Character: "c"
* Dictionary: {"cherry":"34" , "red":"23", "coral":19, "green":"12","celeste":"-10","gold":"-3"}

### Output: 
* ["crimson","coral","celeste""]

*/
let char = Character.init("c")
let dict: Dictionary = ["cherry":"34" , "red":"23", "coral":"19", "green":"12","celeste":"-10","gold":"-3"]

func findWordsWithLetter(char:Character, dict:Dictionary<String, String>) -> [String] {
    var wordsWithLetter: [String] = []
    
    for (k,_) in dict {
        if k.characters.first == char {
            wordsWithLetter.append(k)
        }
    }
    
    return wordsWithLetter
}

findWordsWithLetter(char: char, dict: dict)

/*:
## Exercise 2
Design a function that receives a Character and a Dictionary as input and returns the sum of the values for the keys of the Dictionary that start with the input character.

### Input:
* Character: "g"
* Dictionary: {"cherry":"34" , "red":"23", "coral":19, "green":"12","celeste":"-10","gold":"-3"}

### Output: 
* 9
*/

func findValueOfWords(char:Character, dict:Dictionary<String, String>) -> Int {
    var valueOfWords = 0
    
    for (k,v) in dict {
        if k.characters.first == char {
            valueOfWords += Int.init(v)!
        }
    }
    
    return valueOfWords
}

findValueOfWords(char: char, dict: dict)


//: [TOC](TOC) - [Previous](@previous) - [Next](@next)
