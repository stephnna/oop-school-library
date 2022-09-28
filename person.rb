class Person
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  private_class_method def of_age?
    @age >= 18
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end
end
