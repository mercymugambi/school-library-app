require_relative 'nameable'
require_relative 'base_decorator'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'rental'

# define person class
class Person < Nameable
  def initialize(age = nil, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_accessor :name, :age, :rentals
  attr_reader :id

  def correct_name
    @name
  end

  def of_age?
    @age.to_i >= 18
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
 end

end
