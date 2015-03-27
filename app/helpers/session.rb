helpers do

  def current_user
    User.where(email: params[:email]).first
  end

end
