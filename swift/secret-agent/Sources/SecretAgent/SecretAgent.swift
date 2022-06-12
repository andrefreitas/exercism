func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func guesser(passwordGuess: String ) -> String {
        password == passwordGuess ? secret : "Sorry. No hidden secrets here."
    }
    
    return guesser
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let firstNumber = f(room)
    let secondNumber = f(firstNumber)
    return (firstNumber, secondNumber, f(secondNumber))
}
