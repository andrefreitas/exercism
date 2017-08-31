class Grains
  SIZE = 64

  def self.square(pos)
    raise ArgumentError unless pos.between?(1, SIZE)

    2**(pos - 1)
  end

  def self.total
    2**SIZE - 1
  end
end

module BookKeeping
  VERSION = 1
end
