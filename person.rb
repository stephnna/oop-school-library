class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end
end
