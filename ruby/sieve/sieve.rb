class Sieve
  def initialize num
    @num = num
  end

  def primes
    range = (2..@num).to_a
    range.each do |prime|
      range.reject!{|n| n!= prime && n % prime == 0}
    end
  end
end

module BookKeeping
  VERSION=1
end
