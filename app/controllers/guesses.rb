post '/guesses' do
	@guess = Guess.new(params[:guess])
	if @guess.save
		redirect '/'
	else
		erb :'/'
	end
end