let expectedMinutesInOven: UInt = 40

func remainingMinutesInOven(elapsedMinutes: UInt) -> UInt {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: UInt) -> UInt {
    return layers*2
}

func totalTimeInMinutes(layers: UInt, elapsedMinutes: UInt) -> UInt {
    return elapsedMinutes + preparationTimeInMinutes(layers: layers)
}

