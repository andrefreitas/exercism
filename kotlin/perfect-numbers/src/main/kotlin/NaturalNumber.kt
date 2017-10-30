enum class Classification {
    DEFICIENT, PERFECT, ABUNDANT
}

fun factorsSum(naturalNumber: Int): Int {
  return (1..(naturalNumber - 1))
          .filter{naturalNumber % it == 0}
          .sum()
}

fun classify(naturalNumber: Int): Classification {
  require(naturalNumber > 0) { "must > 0"}

  val sum = factorsSum(naturalNumber)
  return when {
    sum == naturalNumber -> Classification.PERFECT
    sum > naturalNumber -> Classification.ABUNDANT
    else -> Classification.DEFICIENT
  }
}
