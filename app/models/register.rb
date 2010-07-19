class Register < ActiveRecord::Base
  attr_protected :is_active
  
  # validations
  validates_presence_of :nickname, :on => :create, :message => '為必填欄位'
  validates_presence_of :email, :on => :create, :message => '為必填欄位'
  validates_presence_of :tel, :on => :create, :message => '為必填欄位'
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => "格式有誤"
  validates_uniqueness_of :email, :on => :create, :message => '已經報名過了'

  # named scope
  named_scope :active, :conditions => { :is_active => true }
  
  def self.is_avaliable?
    current_registers < MaxRegister
  end

  def self.current_registers
    count(:conditions => { :is_active => true })
  end
  
  def self.disable_register(id)
    find(id).update_attribute('is_active', false)
  end
  
end