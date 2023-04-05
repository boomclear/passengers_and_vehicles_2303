class Passenger
  def initialize(details)
    @details = details
    @adult = false
    @driver = false
  end

  def name
    @details["name"]
  end

  def age
    @details["age"]
  end

  def adult?
    if age >= 18
      @adult = true
    else 
      @adult = false
    end
    @adult
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end