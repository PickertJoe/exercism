class Matrix
  attr_accessor :rows, :columns

  def initialize(input_string)
    @rows = input_string.split("\n").map { |row| row.split.map(&:to_i)}
    @columns = @rows.transpose
  end
end
