require 'pry'
require 'simplecov'
require './lib/board'
require './lib/slot'
require 'minitest/autorun'
require 'minitest/pride'
SimpleCov.start

class BoardTest < Minitest::Test
  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_starts_with_empty_slots
    board = Board.new
    assert_equal [], board.board
  end

  def test_board_has_correct_layout
    board = Board.new
    board.create_board

    assert_equal 4, board.create_board
  end
end
