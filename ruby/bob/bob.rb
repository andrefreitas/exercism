module Bob
  def self.hey(remark)
    if yell?(remark)
      'Whoa, chill out!'
    elsif question?(remark)
      'Sure.'
    elsif nothing?(remark)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.yell?(remark)
    /[A-Z]+/.match(remark) && !/[a-z]+/.match(remark)
  end

  def self.question?(remark)
    remark.strip.end_with?('?')
  end

  def self.nothing?(remark)
    remark.strip.empty?
  end
end

module BookKeeping
  VERSION = 1
end
