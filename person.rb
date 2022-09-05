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
  attr_accessor :name
  attr_accessor :age
 

  # define the public method first
  def can_use_services?
    if is_of_age = true || @parent_permission = true
      true
    else
      false
    end
  end

  # define private method 
  private

  def is_of_age
    if @age >= 18
      true
    else
      false
    end
  end

end