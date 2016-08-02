def titleize(str)
  str.gsub(/\b(?!in)(?!the)(?!of)(?!and)(?!or)(?!from)[a-z]/){ $&.capitalize }
end
