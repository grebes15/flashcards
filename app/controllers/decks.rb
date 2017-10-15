get '/decks' do
  @decks = Deck.all
  @deck_iteration = @decks.each{|x| x.title}
  erb :'decks/index'
end