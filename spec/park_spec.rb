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
end