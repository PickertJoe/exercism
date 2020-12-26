class Phrase
  attr_accessor :word_string

  def initialize(input_string)
    @word_string = input_string
  end

  def word_count
    each_word.each_with_object(Hash.new(0)) {|word, hash| hash[word] += 1}
  end

private
  def each_word
    word_string.downcase.scan(/\w+/)
  end
end
