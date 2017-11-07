require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')
require_relative('../bus_stop.rb')
require_relative('../bus_class.rb')

class TestBusStop < Minitest::Test

def setup
  @person1 = Person.new("Fraser", 30)
  @person2 = Person.new("Alex", 29)
  @person3 = Person.new("Keith", 35)

  @bus_stop = BusStop.new("Ocean Terminal",[@person2, @person3])

  @bus = Bus.new(22, "Ocean Terminal",[])
end
  def test_number_in_queue
    result = @bus_stop.number_in_queue
    assert_equal(2, result)
  end

  def test_add_person_to_queue
    result = @bus_stop.add_to_queue(@person1)
    assert_equal(3, @bus_stop.number_in_queue)
  end

  def test_pick_up_all_passengers
   @bus.pick_up_all_passengers(@bus_stop)
    assert_equal(2,@bus.number_of_passengers)
  end
end
