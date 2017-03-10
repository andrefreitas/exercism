class Robot
  ALPHABET = [*'A'..'Z']
  NUMBERS = [*'0'..'9']

  def generate_name
    srand
    chars = (1..2).map{ALPHABET.sample}.join
    numbers = (1..3).map{NUMBERS.sample}.join
    "#{chars}#{numbers}"
  end

  def reset
    @name = generate_name
  end

  def name
    @name ||= generate_name
  end
end

module BookKeeping
  VERSION = 2
end
