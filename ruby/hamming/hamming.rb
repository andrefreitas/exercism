class Hamming
  def self.compute a, b
    raise ArgumentError if a.length != b.length

    a.chars.zip(b.chars).count{ |n1,n2| n1 != n2 }
  end
end

module BookKeeping
  VERSION = 3
end
