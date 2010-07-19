class CreateAdministrators < ActiveRecord::Migration
  def self.up
    create_table :administrators do |t|
      t.string :login_id
      t.string :login_pw
      t.boolean :is_active, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :administrators
  end
end
