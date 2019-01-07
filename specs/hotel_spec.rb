require("minitest/autorun")
require("minitest/rg")
require_relative("../hotel")

class HotelTest < Minitest::Test

  def setup
    @hotel = Hotel.new("Hilton", [1, 2, 3], {"room_1": 0, "room_2": 0} )
  end

  def test_hotel_name
    assert_equal("Hilton", @hotel.name)
  end

  def test_hotel_rooms
    assert_equal([1, 2, 3], @hotel.rooms)
  end

  def test_hotel_bookings
    assert_equal({"room_1": 0, "room_2": 0}, @hotel.bookings)
  end



end
