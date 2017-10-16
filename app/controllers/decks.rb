# get '/decks' do
#   @decks = Deck.all
#   @deck_iteration = @decks.each{|x| x.title}
#   erb :'decks/index'
# end


# get '/decks/:id/cards/new' do
#   @deck = Deck.find_by(id: params[:id])
#   erb :'cards/new'
# end

get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end


get '/decks/:id' do
  "hello word"
  puts params 
  @cards = Card.where(deck_id: params[:id])
  erb :'cards/index'
end