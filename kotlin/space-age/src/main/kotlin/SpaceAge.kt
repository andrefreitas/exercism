import java.math.BigDecimal

fun Double.round(precision: Int): Double {
  return BigDecimal(this)
          .setScale(precision, BigDecimal.ROUND_HALF_UP)
          .toDouble()
}

class SpaceAge(val seconds: Long) {
  val earthYearSeconds = 31557600.0

  fun onEarth (): Double = relativeAge(1.0)
  fun onMercury (): Double = relativeAge(0.2408467)
  fun onVenus (): Double = relativeAge(0.61519726)
  fun onMars (): Double = relativeAge(1.8808158)
  fun onJupiter (): Double = relativeAge(11.862615)
  fun onSaturn (): Double = relativeAge(29.447498)
  fun onUranus (): Double = relativeAge(84.016846)
  fun onNeptune (): Double = relativeAge(164.79132)

  fun relativeAge(relativity: Double): Double {
    val period = relativity * earthYearSeconds
    return (seconds / period).round(2)
  }
}
