object Luhn {
  fun onlyNumbersAndSpaces(num: String): Boolean {
    val trimmed = num.trim()
    return trimmed.length > 1 && Regex("([0-9]|\\s)+").matches(trimmed)
  }

  fun doubleDigit(digit: Int): Int {
    val double = digit * 2
    return if (double > 9) double - 9 else double
  }

  fun doubleDigits(num: String): List<Int> {
    val digits = Regex("[0-9]")
      .findAll(num)
      .map{it.value.toInt()}
      .toMutableList()

    return digits.reversed().mapIndexed {
      i, num -> if ((i + 1) % 2 == 0) doubleDigit(num) else num
    }
  }

  fun isValid(num: String): Boolean {
    if (!onlyNumbersAndSpaces(num)) return false
    return doubleDigits(num).sum() % 10 == 0
  }
}
