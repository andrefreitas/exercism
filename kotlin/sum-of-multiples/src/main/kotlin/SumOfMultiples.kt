object SumOfMultiples {
  fun sum(numbers: Set<Int>, limit: Int) = (1..limit-1).filter{n -> numbers.any{n % it == 0}}.sum()
}
