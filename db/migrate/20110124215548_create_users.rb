class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :group_id

      t.timestamps
    end
      User.create :id => 1,
                  :name => "admin",
                  :email => "admin@sklad.com",
                  :group_id => 1
  end

  def self.down
    drop_table :users
  end
end
