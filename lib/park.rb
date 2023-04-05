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

    vehicle.passengers.each do |passenger|
      if passenger.kind_of?(Array)
        passenger.each do |pass|
          if pass.adult?
            @revenue += @admission_price
          end
        end
      else
        if passenger.adult?
          @revenue += @admission_price
        end
      end
    end
  end

  def all_attendees
    attendees = []
    @passengers.each do |passenger|
      if passenger.kind_of?(Array)
        passenger.each do |pass|
          attendees << pass.name
        end
      else 
        attendees << passenger.name
      end
    end
    attendees.sort
  end
end