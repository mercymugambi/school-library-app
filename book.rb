class Book
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(rental)
    @rental << rental
  end

  def create_rental(person, date)
    Rental.new(person, self, date)
  end
end
