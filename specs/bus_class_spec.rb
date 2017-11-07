require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_class.rb')
require_relative('../person.rb')

class TestBus < Minitest::Test

  def setup

    @person = Person.new("Fraser", 30)
    @person2 = Person.new("Alex", 29)
    @person3 = Person.new("Keith", 35)
    @bus = Bus.new(22,"Ocean Terminal",[@person2, @person3])

  end

  def test_route_name
    assert_equal(22, @bus.route_number)
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_number_of_passengers
    assert_equal(2, @bus.number_of_passengers)
  end

  def test_add_passenger
    result = @bus.pick_up(@person)
    assert_equal(3, @bus.number_of_passengers)
  end

  def test_remove_passenger
    result = @bus.drop_off(@person)
    assert_equal(2, @bus.number_of_passengers)
  end

  def test_remove_all_passengers
    result = @bus.remove_all
    assert_equal(0, @bus.number_of_passengers)
  end

end
