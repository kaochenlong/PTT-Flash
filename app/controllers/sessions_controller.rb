class SessionsController < ApplicationController
  
  def new
    @administrator = Administrator.new
  end
  
  def create
    if request.post?
      
      login_id = params[:administrator][:login_id].strip
      login_pw = params[:administrator][:login_pw].strip
      
      admin = Administrator.get_valid_account(login_id, login_pw)
      
      if admin
        flash[:notice] = "登入成功!"
        session[:pttflashmanager] = { :login_id => admin.login_id }
        redirect_to registers_path
      else
        flash[:notice] = "登入失敗"
        redirect_to root_path
      end
      
    end
  end
  
  def destroy
    reset_session
    flash[:notice] = "登出成功!"
    redirect_to root_path
  end
  
end
