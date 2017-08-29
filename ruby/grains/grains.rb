class Grains
  def self.square(pos)
    raise ArgumentError unless pos.between?(1, 64)

    2**(pos - 1)
  end

  def self.total
    2**64 - 1
  end
end

module BookKeeping
  VERSION = 1
end
