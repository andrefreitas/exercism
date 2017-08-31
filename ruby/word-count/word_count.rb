class Phrase
  SEPARATORS = /(\s|\n|\.|:|,)+/
  EXTRA = /!|&|@|\$|%|\^|&/
  QUOTES = /(^')|('$)/

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words
      .group_by { |v| v }
      .map { |k, v| [k, v.count] }
      .to_h
  end

  private

  def words
    @phrase
      .downcase
      .gsub(SEPARATORS, ' ')
      .gsub(EXTRA, '')
      .split(' ')
      .map { |word| word.gsub(QUOTES, '') }
  end
end

module BookKeeping
  VERSION = 1
end
