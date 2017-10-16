# get 'card/:deck_id/:id' do
# 	@deck = Deck.find_by(id: params[:deck_id])
# 	@cards = @deck.cards
# 	@card = @cards.find_by(id: params[:id])
# 	@top_card = @cards.sample
# 	@question = @top_card.question
# 	erb :'cards/index'
# end

get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :'cards/show'
end

get '/decks/:deck_id/cards' do
	"hello"
	puts params
	# @deck = Deck.find_by(id: params[:deck_id])
	# @cards = @deck.cards
	# @card = @cards.find_by(id: params[:id])
	# @top_card = @cards.sample
	# @question = @top_card.question
	# erb :'cards/index'
end