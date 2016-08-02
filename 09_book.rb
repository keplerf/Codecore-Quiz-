class Book
  attr_accessor :title, :chapters

  def initialize(title="", chapters={})
    @title = title
    @chapters = chapters
  end

  def add_chapter(str)
    chapter_number = @chapters.length + 1
    @chapters[chapter_number] = str
  end

  def chapters
    message = "Your book : #{@title} has: "
    @chapters.each do |chapter_num, chapter_title|
      message += "#{chapter_num}. #{chapter_title} "
    end
    message
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
p book.chapters
