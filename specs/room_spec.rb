require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("one", 2, [])
  end

  def test_room_name
    assert_equal("one", @room.name)
  end

  def test_room_capacity
    assert_equal(2, @room.capacity)
  end

  def test_room_guests_getter
    assert_equal([], @room.guests)
  end

  def test_can_count_guest
    assert_equal(0, @room.guest_count)
  end



end
