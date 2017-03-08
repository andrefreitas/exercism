class Robot
  def generate_name
    rng = Random.new
    chars = ('A'..'Z').to_a.shuffle(random: rng).slice(0, 2).join
    numbers = "%03d" % rng.rand(0..999)
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
