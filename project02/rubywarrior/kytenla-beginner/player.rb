class Player
  def play_turn(warrior)
    if warrior.feel.empty? then
        if warrior.health < 20 and warrior.health >= @health then
            warrior.rest!
        else
            warrior.walk!  
        end
    else
        if warrior.feel.captive? then
            warrior.rescue!
        else
            warrior.attack!
        end
    end
    @health = warrior.health

    # add your code here
  end
end
