object HandshakeCalculator {
  val cipher = mapOf(
      0b1 to Signal.WINK,
      0b10 to Signal.DOUBLE_BLINK,
      0b100 to Signal.CLOSE_YOUR_EYES,
      0b1000 to Signal.JUMP
  )

  fun isMask(mask: Int, num: Int) = mask and num > 0

  fun calculateHandshake(num: Int): List<Signal> {
    val signals = cipher
                  .filterKeys{isMask(it, num)}
                  .values.toList()

    return if (isMask(0b10000, num)) signals.reversed() else signals
  }
}
