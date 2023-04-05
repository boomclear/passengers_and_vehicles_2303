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
end