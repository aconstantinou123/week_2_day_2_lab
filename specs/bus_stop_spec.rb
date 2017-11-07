require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class TestBusStop < Minitest::Test

def setup
  @person1 = Person.new("Fraser", 30)
  @person2 = Person.new("Alex", 29)
  @person3 = Person.new("Keith", 35)

  @bus_stop = BusStop.new("Ocean Terminal",[])
end
  def test_number_in_queue
    result = @bus_stop.number_in_queue
    assert_equal(0, result)
  end

  def test_add_person_to_queue
    result = @bus_stop.add_to_queue(@person1)
    assert_equal(1, @bus_stop.number_in_queue)
  end
end
