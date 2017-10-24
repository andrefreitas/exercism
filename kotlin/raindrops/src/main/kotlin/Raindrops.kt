object Raindrops {
  val factors = mapOf(
    3 to "Pling",
    5 to "Plang",
    7 to "Plong"
  )

  fun convert(number: Int): String {
    val output = factors
      .filterKeys{number % it == 0}
      .values
      .joinToString("")

    return output.takeUnless{it.isBlank()} ?: number.toString()
  }
}
