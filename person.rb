require './person'

class Person
  attr_accessor :id, :name, :age, :parent_permission
  attr_reader :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private

  def of_age?
    @age >= 18
  end
end
