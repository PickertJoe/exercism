class Acronym
  def self.abbreviate(phrase)
    phrase.split('/\w/').map { |word| word.upcase}.join
  end
end