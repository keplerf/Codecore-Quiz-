# BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.
def titleize(str)
  str.gsub(/\b(?!in)(?!the)(?!of)(?!and)(?!or)(?!from)[a-z]/){ $&.capitalize }
end
