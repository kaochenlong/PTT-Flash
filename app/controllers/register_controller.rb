class RegisterController < ApplicationController
  
  before_filter :admin_required, :only => [:index, :destroy]
  
  def index
    @registers = Register.active
  end
  
  def new
    if still_available?
      @register = Register.new
    else
      render :template => 'register/finish'
    end
  end
  
  def create
    
    # check available slot first
    if Register.is_avaliable?
      
      params[:register][:ip_address] = request.remote_ip
      @register = Register.new(params[:register])

      if @register.save
        flash[:notice] = '報名成功，感謝您的參與!'
        redirect_to root_path
      else
        render :action => 'new'
      end
    else
      flash[:notice] = '抱歉! 報名已額滿!'
      redirect_to new_registers_path
    end
    
  end
  
  def destroy
    Register.disable_register(params[:id])
    flash[:notice] = "報名刪除成功!"
    redirect_to registers_path
  end
  
  private
  def still_available?
    @current_registers < MaxRegister
  end
  
end
