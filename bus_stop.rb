class BusStop

  attr_accessor :name, :queue

  def initialize(name, queue)

    @name = name
    @queue = queue

  end

  def number_in_queue
    return @queue.length
  end

  def add_to_queue(person)
    return @queue.push(person)
  end

end
