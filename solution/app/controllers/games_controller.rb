require_relative "../views/view"
require_relative "../models/game"

class GamesController

  def initialize
    @view = View.new
  end
    
  def index
    games = Game.all
    # a list with all games
    @view.index(games)
  end

  def create
    name = @view.ask_for(:name)
    genre = @view.ask_for(:genre)
    address = @view.ask_for(:address)
    game = Game.create(name: name, genre: genre, address: address)
    @view.show(game)
  end

  def show
    index
    id = @view.ask_for(:id).to_i
    game = Game.find(id)
    @view.show(game)
  end

  def update
    index
    id = @view.ask_for(:id).to_i
    game = Game.find(id)
    game.name = @view.ask_for(:name)
    game.genre = @view.ask_for(:genre)
    game.address = @view.ask_for(:address)
    game.save
    @view.show(game)
  end

  def destroy
    index
    id = @view.ask_for(:id).to_i
    game = Game.find(id)
    game.destroy
    index
  end

  def mark_as_played
    index 
    id = @view.ask_for(:id).to_i
    game = Game.find(id)
    game.played = true
    game.save
    index
  end
end