class GuestbookController < ApplicationController
  
  before_filter :admin_required, :only => [:destroy]
  
  def index
    @guestbooks = Guestbook.active.paginate(:order => 'id DESC', :page => params[:page], :per_page => 10)
  end
  
  def new
    @guestbook = Guestbook.new
  end
  
  def create
    params[:guestbook][:ip_address] = request.remote_ip
    @guestbook = Guestbook.new params[:guestbook]
    
    if @guestbook.save
      flash[:notice] = '留言完成!'
      redirect_to guestbooks_path
    else
      render :action => 'new'
    end
  end
  
  def destroy
    Guestbook.disable_guestbook params[:id]
    flash[:notice] = "留言刪除"
    redirect_to guestbooks_path
  end
  
end
