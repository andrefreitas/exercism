func dailyRateFrom(hourlyRate: Int) -> Double {
    8.0 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    (22 * dailyRateFrom(hourlyRate: hourlyRate) * (1 - (discount / 100.0))).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    (budget / (dailyRateFrom(hourlyRate: hourlyRate) * (1 - (discount / 100.0)))).rounded(.towardZero)
}
