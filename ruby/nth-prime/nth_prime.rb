class Prime
  # def self.nth(n)
  #   count = 0
  #   num = 0
  #
  #   while count < n
  #     num += 1
  #     count += 1 if is_prime(num)
  #   end
  #
  #   num
  # end
  #
  # def self.is_prime num
  #   self.primes_until(num).last == num
  # end
  #
  # def self.primes_until num
  #   range = (2..num).to_a
  #   range.each do |prime|
  #     range.reject!{|n| n!= prime && n % prime == 0}
  #   end
  # end

  def self.nth(nth)
    candidates = self.candidates
    primes = []

    candidates.each do |candidate|
      primes.push candidate
      primes.each do |prime|
        primes.reject!{|n| n!= prime && n % prime == 0}
      end
      
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
