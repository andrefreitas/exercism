import java.time.LocalDate
import java.time.LocalDateTime
import java.time.Duration

class Gigasecond {
  val date: LocalDateTime
  val gigaSecond: Long = 1_000_000_000

  constructor (fromDate: LocalDateTime) {
    date = fromDate.plusSeconds(gigaSecond)
  }

  constructor (fromDate: LocalDate) {
    date = fromDate.atStartOfDay().plusSeconds(gigaSecond)
  }
}
