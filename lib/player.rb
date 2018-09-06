class Player
attr_reader :total_ships, :ship_1, :ship_2, :human
  def initialize(board)
    @total_ships = 2
    @ship_1 = []
    @ship_2 = []
    @human = true

  end

end
