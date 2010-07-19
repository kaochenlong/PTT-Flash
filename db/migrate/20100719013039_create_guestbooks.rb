class CreateGuestbooks < ActiveRecord::Migration
  def self.up
    create_table :guestbooks do |t|
      t.string :nickname, :limit => 50
      t.text :content
      t.string :is_active, :default => true
      t.string :ip_address, :limit => 15
      t.timestamps
    end
  end

  def self.down
    drop_table :guestbooks
  end
end
