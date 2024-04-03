require 'pry'
require './lib/passenger'

RSpec.describe Passenger do
  #   pry(main)> require './lib/passenger'
  # # => true

  it 'can initialize' do
    passenger = Passenger.new({})
    expect(passenger).to be_an_instance_of(Passenger)

  end

  it 'has a name & an age' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(taylor.name).to eq("Taylor")
    expect(taylor.age).to eq(12)
  end
  
  it 'is an adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    # Charlie is an adult
    # Taylor is not an adult
    
    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end
  
  it 'changes the driver' do

  end
  # Charlie is not the driver
    # --> call medthod #charlie.drive
      # Now Charlie can drive when #charlie.driver is called again

  # pry(main)> charlie.driver?
  # # => false

  # pry(main)> charlie.drive

  # pry(main)> charlie.driver?
  # # => true
end