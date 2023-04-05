class Park
  attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @revenue = 0
    @passengers = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers << vehicle.passengers

    vehicle.passengers.map do |passenger|
      if passenger.adult?
        @revenue += @admission_price
      end
    end
  end
end