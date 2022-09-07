#!/usr/bin/env ruby

class Nameable
  def correct_name
    raise NotImplementedError
  end
end

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


class NameableBaseDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < NameableBaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < NameableBaseDecorator
  def correct_name
    @nameable.correct_name
    @nameable.correct_name[0...10] if @nameable.correct_name.length > 10
  end
end

person = Person.new(22, 'maximilianus')
  person.correct_name
  capitalized_person = CapitalizeDecorator.new(person)
  capitalized_person.correct_name
  capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
  capitalized_trimmed_person.correct_name
