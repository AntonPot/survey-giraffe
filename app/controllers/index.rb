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

post '/sessions' do
  user = User.where(email: params[:email]).first

  if user && user.password == params[:password]
    session[:user_id] = user.user_id
    redirect '/surveys'
  else
    status 400
    @error = user.errors.full_messages.to_sentence
  end

end

delete '/sessions/delete' do
  sessions.delete(:user_id)
  redirect '/'
end
