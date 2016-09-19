//: # iOS Concepts
//: [TOC](TOC) - [Previous](@previous) - [Next](@next)
/*:
 ## Delegation Pattern:
 Define the "Delegation Pattern" and give and example of how it is used in iOS.

 */




 /* The delegate pattern is a way for a structure or class to pass on certain responsibilities to another class and ensure (using a protocol) the delegate will take care of the necessary things. i.e. If you have a game, you might want a delegate to deal with handling the start and finish of the game, while the Game class can worry about the actual gameplay: */

protocol GameDelegate {
    func gameStarted()
    func gameEnded()
}

class SomeDelegateClass: GameDelegate {
    func gameStarted() {
        // do stuff like start the timer, print a message, etc
    }
    
    func gameEnded() {
        // do stuff like print the winner
    }
}

class Game {
    func playGame() {
        // deal with game logic here
        let delegate:GameDelegate = SomeDelegateClass.init()
        delegate.gameStarted()
        return
    }
}



//: [TOC](TOC) - [Previous](@previous) - [Next](@next)
