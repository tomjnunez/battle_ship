class Slot
attr_reader :empty
  def initialize
    @empty = true
    @state_of_fire = nil
  end

  def occupied
    @empty = false
  end

  def enemy_shot
    if @empty == true
      @state_of_fire = "Miss!"
      @empty = false
    elsif @empty == false
      @state_of_fire = "Hit!"
    else
      puts "Please choose a slot to fire upon"
    end
  end
end
