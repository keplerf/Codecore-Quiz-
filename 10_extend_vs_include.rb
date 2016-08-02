# Extend

module Cookie
  def bake
    "baking .."
  end
end

class Oreo
  extend Cookie
end

class ChipAhoy
  extend Cookie
end

p Oreo.bake # "baking .."
p ChipAhoy.bake # "baking .."


#

module NameReplacer
  def replace
    @content.gsub("noname", "Kepler")
  end
end


class Resume
  include NameReplacer
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

class Website
  include NameReplacer
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

resume = Resume.new("This noname's resume.")
website = Website.new("noname website title")

p resume.replace #6
p website.replace #1
