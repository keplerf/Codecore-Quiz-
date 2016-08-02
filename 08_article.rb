require "./07_titleize.rb"

module Blog
  class Article
    include HelperMethods
    def initialize(title, body)
      @title = titleize(title)
      @body = body
    end
    attr_accessor :body, :title

  end

  class Snippet < Article

    def body
      if @body.length > 100
         @body = @body[0..100] + "..."
      else @body
      end
    end

  end

end

title = "title sample."
catullus = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

latin_article = Blog::Article.new(title, catullus)
latin_snippet = Blog::Snippet.new(title, catullus)

p "It's article's title is: #{latin_article.title}"
p "It's article's body is: #{latin_article.body}"
p "The snippet's title is: #{latin_snippet.title}"
p "The snippet's body is: #{latin_snippet.body}"
