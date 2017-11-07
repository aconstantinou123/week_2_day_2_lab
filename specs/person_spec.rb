require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class TestPerson < Minitest::Test

  def setup

    @person = Person.new("Fraser", 30)

  end

  def test_person_name
    assert_equal("Fraser", @person.name)
  end

  def test_person_age
    assert_equal(30, @person.age)
  end

end
