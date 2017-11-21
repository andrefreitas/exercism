module RunLengthEncoding
  ENCODE_REGEX = /(.)\1+/
  DECODE_REGEX = /\d+\D/

  def self.encode(input)
    input.gsub(ENCODE_REGEX) { |m| m.size.to_s + m[0] }
  end

  def self.decode(input)
    input.gsub(DECODE_REGEX) { |m| m[-1] * m.to_i }
  end
end

module BookKeeping
  VERSION = 3
end
