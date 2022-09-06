class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Getter method for id
  attr_reader :id

  # Getter and setter method for name, age
  attr_accessor :name, :age

  # define the public method first
  def can_use_services?
    is_of_age? || @parent_permission
  end

  # define private method is_of_age
  def of_age?
    @age >= 18
  end

  private :is_of_age?
end
