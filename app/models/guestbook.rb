class Guestbook < ActiveRecord::Base
  attr_protected :is_active
  
  # validations
  validates_presence_of :nickname, :on => :create, :message => "can't be blank"
  validates_presence_of :content, :on => :create, :message => "can't be blank"
  
  # named scope
  named_scope :active, :conditions => { :is_active => true }
  
  def self.disable_guestbook(id)
    find(id).update_attribute('is_active', false)
  end
end
