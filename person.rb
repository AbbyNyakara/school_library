class Person
  def initialize(id, name = "Unknown", age, parent_permission = true)
    @id = id
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
    if is_of_age? || @parent_permission = true
      true
    else
      false
    end
  end

  # define private method 
  def is_of_age?
    @age >= 18
  end

  private @is_of_age?

end
