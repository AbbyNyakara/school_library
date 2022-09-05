require_relative './person.rb'

class Teacher < Person
  def initialize(specialization, can_use_services = true)
    @specialization = specialization
  end
end