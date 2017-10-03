val dnaMap = mapOf(
  'G' to 'C',
  'C' to 'G',
  'T' to 'A',
  'A' to 'U'
)

fun transcribeToRna(dna: String): String {
  return dna.map{dnaMap[it]}.joinToString("")
}
