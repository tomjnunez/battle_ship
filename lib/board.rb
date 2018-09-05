class Board
attr_reader :board
  def initialize
    @board = []
  end

  def create_board
    4.times {@board << [Slot.new, Slot.new, Slot.new, Slot.new]}

  end

  def board_display
    puts "A #{@board}\nB #{@board}\nC #{@board}\nD #{@board}".tr('"', '')
  end
end
