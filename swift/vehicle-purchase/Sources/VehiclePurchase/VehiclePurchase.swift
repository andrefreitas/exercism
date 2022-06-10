func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPrice = price / 60.0 // 5 years
    let budgetRatio = monthlyPrice / monthlyBudget
    
    if budgetRatio <= 1 {
        return "Yes! I'm getting a \(vehicle)"
    }
    else if budgetRatio <= 1.10 {
        return "I'll have to be frugal if I want a \(vehicle)"
    }
    return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels: Int) -> String {
    switch(numberOfWheels) {
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else {return 25}
    
    let baseCost = Double(max(msrp, 25_000))
    let fee = baseCost * ( 1.0 - Double(yearsOld) * 0.1) / 100.0
    
    return Int(fee.rounded(.towardZero))
}
