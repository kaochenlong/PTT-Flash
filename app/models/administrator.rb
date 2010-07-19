class Administrator < ActiveRecord::Base
  
  def self.get_valid_account(id, pw)
    first(:conditions => { :login_id => id, :login_pw => pw, :is_active => true })
  end
  
end
