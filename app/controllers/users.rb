get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    redirect '/sessions/new'
  else
    status 422
    @errors = user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  if current_user
    erb :'users/show'
  else
    status 401
    redirect '/'
  end
end
