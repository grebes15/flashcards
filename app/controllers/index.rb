get '/' do
  @decks = Deck.all
  @deck_iteration = @decks.each{|x| x.title}
  erb :'index'
end
