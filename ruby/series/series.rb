class Series
  def initialize(number_string)
    @numbers = number_string.chars
  end

  def slices(size)
    raise ArgumentError if size > @numbers.size

    @numbers.each_cons(size).map(&:join)
  end
end
