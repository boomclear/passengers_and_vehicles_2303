require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  it "exists" do 
    park1 = Park.new("Sunny Park", 10)

    expect(park1).to be_a Park
  end

  it "has a name and admission price" do 
    park1 = Park.new("Sunny Park", 10)

    expect(park1.name).to eq "Sunny Park"
    expect(park1.admission_price).to eq 10
  end

  it "can add vehicles to park" do 
    park1 = Park.new("Sunny Park", 10)
    vehicle = Vehicle.new("2001", "Honda", "Civic") 

    park1.add_vehicle(vehicle)
    expect(park1.vehicles).to eq [vehicle]
  end

  it "can report passengers in park" do 
    park1 = Park.new("Sunny Park", 10)
    vehicle = Vehicle.new("2001", "Honda", "Civic") 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor) 

    park1.add_vehicle(vehicle)

    expect(park1.passengers).to eq [[charlie, jude, taylor]]
  end

  it "can report revenue" do
    park1 = Park.new("Sunny Park", 10)
    vehicle = Vehicle.new("2001", "Honda", "Civic") 
    vehicle2 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor) 

    vehicle2.add_passenger(charlie)
    vehicle2.add_passenger(jude)
    vehicle2.add_passenger(taylor)

    park1.add_vehicle(vehicle)
    park1.add_vehicle(vehicle2)
    expect(park1.revenue).to eq 40
  end

  it "can report all attendees names sorted" do 
    park1 = Park.new("Sunny Park", 10)
    vehicle = Vehicle.new("2001", "Honda", "Civic") 
    vehicle2 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor) 

    vehicle2.add_passenger(charlie)
    vehicle2.add_passenger(jude)
    vehicle2.add_passenger(taylor)

    park1.add_vehicle(vehicle)
    park1.add_vehicle(vehicle2)

    expect(park1.all_attendees).to eq ["Charlie", "Charlie", "Jude", "Jude", "Taylor", "Taylor"]
  end
end