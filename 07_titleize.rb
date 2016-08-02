
  def titleize(string)
    prepositions = ["in", "the",  "of", "and", "or" , "from"]
    string.split(" ").map do |word|
      if prepositions.include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end
