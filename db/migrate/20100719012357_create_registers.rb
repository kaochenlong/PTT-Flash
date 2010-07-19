class CreateRegisters < ActiveRecord::Migration
  
  def self.up
    create_table :registers do |t|
      t.string :nickname, :limit => 50
      t.string :email, :limit => 75
      t.string :tel, :limit => 30
      t.string :ptt_id, :limit => 30
      t.string :ip_address, :limit => 15
      t.boolean :is_active, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
  
end
