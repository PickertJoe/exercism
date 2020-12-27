class Raindrops
  def self.convert(test_number)
    test_number = test_number
    factor_with_sounds = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong",
    }
    return_string = ""

    factor_with_sounds.each do |factor, sound|
      if test_number % factor == 0
        return_string << sound
      end
    end

    if return_string == ''
      test_number.to_s
    else
      return_string
    end
  end
end

