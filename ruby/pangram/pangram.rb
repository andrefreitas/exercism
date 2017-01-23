class Pangram
  def self.pangram? phrase 
    ("a".."z").all? { |e| phrase.downcase.chars.member? e }
  end
end

module BookKeeping
  VERSION = 3
end
