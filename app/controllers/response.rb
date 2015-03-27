get "/surveys/:id/responses" do
  @survey = Survey.find(params[:id])
  @questions = Question.find_by(survey_id: @survey.id)

  erb :'/responses/new_responses'
end

post '/responses' do
  @response = Response.create(user_id: params[:user_id], survey_id: params[:survey_id])
  redirect "/surveys/#{@response.survey_id}/responses"
end

