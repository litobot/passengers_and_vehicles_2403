class Passenger
  attr_reader :name, :age

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
  end

  def adult?
    if @age >= 18 == true
      true # was `nil` without this explicit return
    else
      false
    end
  end


end