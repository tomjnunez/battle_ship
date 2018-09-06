require './lib/board'
require './lib/slot'
require './lib/player'
require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'
SimpleCov.start

class PlayerTest < Minitest::Test
  def test_it_exists
    board = Board.new
    player = Player.new(board)

    assert_instance_of Player, player
  end

  def test_it_has_attributes
    board = Board.new
    player = Player.new(board)
    
    assert_equal 2, player.total_ships
    assert true, player.human
    assert_equal [], player.ship_1
    assert_equal [], player.ship_2
  end
end
