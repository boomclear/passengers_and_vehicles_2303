class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
    @adults = 0
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.map do |passenger|
      if passenger.adult?
        @adults += 1
      end
    end
    @adults
  end
end