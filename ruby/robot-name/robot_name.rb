require "set"

class Robot
  ALPHABET = [*'A'..'Z']
  NUMBERS = [*'0'..'9']
  @@names = Set.new

  def reset
    @name = nil
  end

  def name
    @name ||= generate_unused_name
  end

  private
  def generate_unused_name
    begin
      name = generate_random_name
    end until !@@names.include? name

    @@names.add(name)
    name
  end

  def generate_random_name
    chars = (1..2).map{ALPHABET.sample}.join
    numbers = (1..3).map{NUMBERS.sample}.join
    "#{chars}#{numbers}"
  end
end

module BookKeeping
  VERSION = 2
end
