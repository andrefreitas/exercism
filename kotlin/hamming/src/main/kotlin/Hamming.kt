object Hamming {
  fun compute(a: String, b: String): Int {
    require (a.count() == b.count()) {
      "leftStrand and rightStrand must be of equal length."
    }

    return a.zip(b).count{ (x,y) -> x != y }
  }
}
