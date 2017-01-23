class Squares

  def initialize num
    @numbers = (0..num)
  end

  def square_of_sum
    @numbers.inject(:+).**2
  end

  def sum_of_squares
    @numbers.map { |e| e**2  }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 3
end
