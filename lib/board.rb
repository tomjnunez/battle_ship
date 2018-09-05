class Board
attr_reader :board
  def initialize
    @board = []
  end

  def create_board
    4.times {@board << [Slot.new, Slot.new, Slot.new, Slot.new]}

  end

  def board_display
    puts "# 1 2 3 4"
    puts "A #{@board}\nB #{@board}\nC #{@board}\nD #{@board}".tr('"', '')
  end

  def vertical_board_display
    {"1" => {"A" => @board[0][0], "B" => @board[1][0],
             "C" => @board[2][0], "D" => @board[3][0]},

     "2" => {"A" => @board[1][0], "B" => @board[1][1],
             "C" => @board[2][1], "D" => @board[3][1]},

     "3" => {"A" => @board[0][2], "B" => @board[1][2],
             "C" => @board[2][2], "D" => @board[3][2]},

     "4" => {"A" => @board[3][0], "B" => @board[1][3],
             "C" => @board[2][3], "D" => @board[3][3]}}
  end

  def horizontal_board_display
    {"A" => {"1" => @board[0][0], "2" => @board[0][1],
             "3" => @board[0][2], "4" => @board[0][3]},

     "B" => {"1" => @board[1][0], "2" => @board[1][1],
             "3" => @board[1][2], "4" => @board[1][3]},

     "C" => {"1" => @board[2][0], "2" => @board[2][1],
             "3" => @board[2][2], "4" => @board[2][3]},

     "D" => {"1" => @board[3][0], "2" => @board[3][1],
             "3" => @board[3][2], "4" => @board[3][3]}}
  end
end
