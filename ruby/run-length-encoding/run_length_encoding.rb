module RunLengthEncoding
  ENCODE_REGEX = /((.)\2*)/
  DECODE_REGEX = /(\d*)(\D)/

  def self.encode(input)
    input.scan(ENCODE_REGEX).map do |sequence, _|
      sequence.size > 1 ? [sequence.size, sequence[0]] : sequence[0]
    end.join
  end

  def self.decode(input)
    input.scan(DECODE_REGEX).map do |n, char|
      n.empty? ? char : char * n.to_i
    end.join
  end
end

module BookKeeping
  VERSION = 3
end
