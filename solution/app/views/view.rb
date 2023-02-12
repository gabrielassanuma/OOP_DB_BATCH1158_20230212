class View
  def index(games)
    games.each do | game |
      puts " [#{game.played ? "X" : " "}]#{game.id} - #{game.name}"
    end
  end

  def ask_for(stuff)
    puts "What's the #{stuff} of the game"
    gets.chomp
  end

  def show(game)
    puts "----------------"
    puts "Name: #{game.name}"
    puts "Genre: #{game.genre}"
    puts "Address: #{game.address}"
    puts "----------------"
  end

end
