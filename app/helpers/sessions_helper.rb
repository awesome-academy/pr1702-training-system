module SessionsHelper
  def log_in user
    session[:user] = user.id
  end

  def current_user
    @current_user ||= User.find_by id: session[:user]
  end

  def logged_in?
    current_user.present?
  end

  def log_out
    session.delete :user
    @current_user = nil
  end

  def is_trainee?
    current_user.is_a? Trainee
  end

end
