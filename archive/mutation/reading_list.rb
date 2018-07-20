require 'pry'
class ReadingList
  BOOKS = ["1984", "The Hobbit", "I, Robot"]

  attr_reader :books

  def initialize
    @books = []
    @books.push(*ReadingList::BOOKS)
  end

  def << book
    @books << book
  end
end
