require_relative './nameable'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  # define the public method
  def can_use_services?
    of_age? || @parent_permission
  end

  # define private method is_of_age
  def of_age?
    @age >= 18
  end

  private :of_age?
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
