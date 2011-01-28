class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :type #(item or comment)
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt

      t.integer :user_id

      t.string :head
      t.text :body

      t.timestamps
      t.timestamp :last_commented #this timestamp will be the date of last comment

      #products related attributes
      t.integer :manufacturer_id
      t.string :cat_num
      t.integer :status_id
    end
  end

  def self.down
    drop_table :items
  end
end
