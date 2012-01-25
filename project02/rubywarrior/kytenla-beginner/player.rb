class Player
  def play_turn(warrior)
    if warrior.feel.empty? then
        if warrior.health < 20 and warrior.health >= @health then
            warrior.rest!
        else
            warrior.walk!  
        end
    else
        warrior.attack!
    end
    @health = warrior.health

    # add your code here
  end
end
