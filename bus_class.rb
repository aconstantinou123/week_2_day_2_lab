class Bus

  attr_reader :route_number, :destination
  attr_writer :route_number, :destination

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers || []

  end

  def drive()
    return "Brum brum"
  end

  def number_of_passengers
    return @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def remove_all
    @passengers = []
  end

  def pick_up_all_passengers(bus_stop)
    for passenger in bus_stop.queue
      @passengers.push(passenger)
      bus_stop.queue = []
    end
  end
end
