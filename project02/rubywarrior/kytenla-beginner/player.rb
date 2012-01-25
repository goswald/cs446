class Player
  def play_turn(warrior)
    if warrior.feel.empty? then
        warrior.walk!  
    else
        warrior.attack!
    end
    # add your code here
  end
end
