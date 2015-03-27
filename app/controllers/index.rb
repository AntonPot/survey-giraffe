get '/' do
  erb :index
end

post '/' do
  user = User.new(name: params[:name], email: params[:email], password: params[:password])

  if user.save
    status 200
    redirect '/'
  else
    status 400
    @error = user.errors.full_messages.to_sentence
  end
end

post '/session' do
  if current_user && current_user.authenticate(params[:password])
    session[:user_id] = current_user.id
    status 200
    # redirect '/'
    erb :index
  else
    status 400
    current_user.errors.full_messages.to_sentence
  end

end

delete '/session/delete' do
  session.delete(:user_id)
  redirect '/'
end
