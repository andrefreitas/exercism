class Matrix

  attr_accessor :rows, :columns

  def initialize(matrix)
    @rows = matrix.lines.map do |line| 
      line.split.map(&:to_i) 
    end
    @columns = rows.transpose
  end
end
