class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def verify_supervisor
    unless verify_supervisor?
      flash[:danger] = I18n.t "controllers.application.verify_supervisor.login_supervisor"
      redirect_to login_url
    end
  end
  def verify_trainee
    unless verify_trainee?
      flash[:danger] = I18n.t "controllers.application.verify_trainee.login_trainee"
      redirect_to login_url
    end
  end
  def load_data data, data_model, id_params
    data.each do |datum|
      temp =  Object.const_get(data_model[datum]).send :find_by, id: params[id_params[datum]]
      instance_variable_set(datum, temp)
    end
    return if data.all? { |datum| instance_variable_get(datum).present? }
    flash[:danger] = I18n.t "controllers.application.load_data.content_not_found"
    redirect_to root_url
  end
end
