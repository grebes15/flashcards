get '/decks' do
  @decks = Deck.all
  #@deck_iteration = @decks.each{|x| x.title}
  @card = Card.all
  #@card_in_deck = @card.each{|y| y.deck_id}
  erb :'decks/index'
end

get '/decks/:id' do
	@deck = Deck.find(params[:id])
	erb :'cards/index'
	#@card = Card.find(params[:deck_id])
end