class Prime
  def self.nth(nth)
    raise ArgumentError if nth < 1
    primes = []

    candidates.each do |candidate|
      primes.push candidate if primes.none? { |n| (candidate % n).zero? }
      return primes.last if primes.length == nth
    end
  end

  def self.candidates
    Enumerator.new do |y|
      num = 2
      loop do
        y << num
        num += 1
      end
    end
  end
end

class BookKeeping
  VERSION = 1
end
