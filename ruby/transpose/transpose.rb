class Transpose

  def self.transpose(input)
    lines = input.split("\n")
    max_size = lines.map(&:size).max

    lines
      .map{ |row| row.ljust(max_size, "*").chars } # normalize size
      .transpose
      .map { |row| row.join.gsub(/\**$/, "").tr("*", " ") } # left pad only
      .join("\n")
      .strip
    end
end