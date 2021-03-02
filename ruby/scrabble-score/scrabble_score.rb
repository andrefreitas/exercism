class Scrabble
  SCORES = {
    1 => %w{A E I O U L N R S T},
    2 => %w{D G}, 
    3 => %w{B C M P},
    4 => %w{F H V W Y},
    5 => ['K'],
    8 => %w{J X},
    10 => %w{Q Z}
  }.map{|score, chars| chars.product([score])}
  .flatten(1)
  .to_h

  attr_reader :word

  def initialize(word)
    @word = word.to_s
  end

  def self.score(word)
    new(word).score
  end
  
  def score
    word
      .chars
      .map{|c| SCORES.fetch(c.upcase, 0)}
      .sum
  end
end