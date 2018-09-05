require 'pry'
require 'simplecov'
require './lib/slot'
require 'minitest/autorun'
require 'minitest/pride'
SimpleCov.start

class SlotTest < Minitest::Test
  def test_it_exists
    slot = Slot.new
    assert_instance_of Slot, slot
  end

  def test_each_slot_starts_out_empty
    slot = Slot.new
    assert true, slot.empty
  end

  def test_ship_can_fill_slot
    slot = Slot.new
    slot.occupied

    assert true, slot.occupied
  end

  def test_ship_can_fire_at_slot
    slot = Slot.new
    slot.enemy_shot


    assert true, slot.enemy_shot
    refute slot.empty
  end
end
