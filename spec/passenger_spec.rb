require './lib/passenger'

RSpec.describe Passenger do 
  it "exists" do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_a Passenger
    expect(taylor).to be_a Passenger
  end

  it "has a name and age method" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq "Charlie"
    expect(taylor.age).to eq 12
    expect(charlie.age).to eq 18
    expect(taylor.name).to eq "Taylor"
  end

  it "can determine adult?" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to be true
    expect(taylor.adult?).to be false
  end

  it "can drive" do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to be false
    charlie.drive
    expect(charlie.driver?).to be true
  end
end
