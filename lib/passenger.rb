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

  def driver?
    @driver = false
  end

  def drive
    if @adult == true
      @driver = true
    end
    # How do I get this to change Charlie's driving status?
    # What info can I use so #driver? is called first => false
    # And then returns true after #charlie.drive is called?
  end
end