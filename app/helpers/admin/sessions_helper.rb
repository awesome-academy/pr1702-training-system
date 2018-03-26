module Admin::SessionsHelper
  def log_in(supervisor)
    session[:supervisor] = supervisor.id
  end
  
  def current_supervisor
      @supervisor ||= Supervisor.find_by(id: session[:trainee_id])
  end

  def logged_in?
    !current_supervisor.nil?
  end
  def log_out
    session.delete(:supervisor_id)
    @current_supervisor = nil
  end
end
