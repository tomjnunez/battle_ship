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

  def test_board_is_filled_with_slots
    board = Board.new
    board.create_board

    assert_instance_of Slot, board.board[0][0]
  end

  def test_it_can_display_board_vertically
    board = Board.new
    board.create_board
    a_1 = board.board[0][0]
    b_2 = board.board[1][1]
    c_3 = board.board[2][2]
    d_4 = board.board[3][3]

    assert_equal a_1, board.vertical_board_display["1"]["A"]
    assert_equal b_2, board.vertical_board_display["2"]["B"]
    assert_equal c_3, board.vertical_board_display["3"]["C"]
    assert_equal d_4, board.vertical_board_display["4"]["D"]
  end

  def test_it_can_display_board_horizontally
    board = Board.new
    board.create_board
    a_1 = board.board[0][0]
    b_2 = board.board[1][1]
    c_3 = board.board[2][2]
    d_4 = board.board[3][3]

    assert_equal a_1, board.horizontal_board_display["A"]["1"]
    assert_equal b_2, board.horizontal_board_display["B"]["2"]
    assert_equal c_3, board.horizontal_board_display["C"]["3"]
    assert_equal d_4, board.horizontal_board_display["D"]["4"]
  end
end
