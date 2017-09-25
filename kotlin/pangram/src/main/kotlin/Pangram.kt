object Pangrams {
  val alphabet = ('a'..'z').toSet()

  fun isPangram(sentence: String): Boolean {
    return sentence.toLowerCase()
                   .filter {c -> c in alphabet}
                   .toSet() == alphabet
  }
}
