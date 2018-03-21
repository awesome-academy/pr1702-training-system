module SessionsHelper
  def log_in(trainee)
    session[:trainee_id] = trainee.id
  end
  
  def current_trainee
      @current_trainee ||= Trainee.find_by(id: session[:trainee_id])
    end

  def logged_in?
    !current_trainee.nil?
  end

  def log_out
    session.delete(:trainee_id)
    @current_trainee = nil
  end
end
