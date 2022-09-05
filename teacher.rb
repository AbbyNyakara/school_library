require_relative './person'

class Teacher < Person
  def initialize(specialization, _can_use_services : true)
    super()
    @specialization = specialization
  end
end
