#Create a class named Bookmark with the following:

#An initializer that accepts url and title parameters:
#it should set instance variables named url, title
#it should set a read only variable named last_visited
#A method named visit! which sets last_visited to the current time and date (hint: the Time.now method returns an instance of Time)

class Bookmark
  attr_accessor :url, :title
  attr_reader :last_visited

  def initialize(url,title)
    @url = url
    @title = title
    visit!
  end

  def visit!
	  @last_visited = Time.now
  end

end