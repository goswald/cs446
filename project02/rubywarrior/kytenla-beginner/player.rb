class Player
  def play_turn(warrior)
    b = warrior.feel:backward
    if b.wall? and warrior.health < 20
        warrior.rest!
    elsif warrior.feel.empty?
        if warrior.health > 10
            warrior.walk!
        else
            go_back_and_heal(warrior)
        end       
    else
        if warrior.feel.captive? then
            warrior.rescue!
        elsif warrior.health < 5 then
            go_back_and_heal(warrior)
        else
            warrior.attack!
        end 
    end
    @health = warrior.health
  end
  def go_back_and_heal(warrior)
    b = warrior.feel:backward
    if b.empty?
        warrior.walk!:backward
    elsif b.captive? then
            warrior.rescue!:backward
    end
  end
end