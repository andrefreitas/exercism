
class Phrase
  QUOTES = /(^')|('$)/
  WORD = /(?:\w|')+/

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words
      .group_by(&:itself)
      .map { |k, v| [k, v.count] }
      .to_h
  end

  private

  def words
    @phrase
      .scan(WORD)
      .map { |word| word.downcase.gsub(QUOTES, '') }
  end
end

module BookKeeping
  VERSION = 1
end
