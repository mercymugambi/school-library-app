require_relative 'person'

class Rental
  attr_accessor :person, :book, :date

  def initialize(person, book, date)
    @person = person
    @book = book
    @date = date
  end
end
