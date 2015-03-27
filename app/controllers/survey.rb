get '/surveys' do
  @surveys = Survey.all
  erb :'/surveys/index'
end

get '/surveys/new' do
  @user = true #current_user.id
  erb :'/surveys/index'
end

get '/surveys/:id' do
  @questions = Survey.find(params[:id]).questions
  erb :'/surveys/index'
end

post '/surveys' do
  @survey = Survey.new(title: params[:title], user_id: params[:user_id])
  @survey.save

  erb :'/surveys/index'
end
