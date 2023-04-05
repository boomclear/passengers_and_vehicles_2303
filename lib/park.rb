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

  def minors
    minors = []
    @passengers.each do |passenger|
      if passenger.kind_of?(Array)
        passenger.each do |pass|
          if !pass.adult?
            minors << pass.name
          end
        end
      else
        if !passenger.adult?
          minors << passenger.name
        end
      end
    end
    minors.sort
  end

  def adults
    adults = []
    @passengers.each do |passenger|
      if passenger.kind_of?(Array)
        passenger.each do |pass|
          if pass.adult?
            adults << pass.name
          end
        end
      else
        if passenger.adult?
          adults << passenger.name
        end
      end
    end
    adults.sort
  end
end