object Acronym {
  fun generate(phrase: String): String {
    return words(phrase)
            .map{it.first()}
            .joinToString("")
            .toUpperCase()
  }

  fun words(phrase: String): Sequence<String> {
    return Regex("([A-Z]+[a-z]*)|[a-z]+")
            .findAll(phrase)
            .map{it.value}
  }
}
