class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  filter_parameter_logging :login_pw
  helper_method :is_admin?
  before_filter :get_current_registers
  
  protected
  def is_admin?
    not session[:pttflashmanager].blank?
  end
  
  def render_404
    render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
  end
  
  def admin_required
    render_404 unless is_admin?
  end
  
  private
  def get_current_registers
    @current_registers = Register.current_registers
  end
  
end
