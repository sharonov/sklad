class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :head
      t.text :body

      t.integer :parent_id
      t.integer :lft
      t.integer :rgt

      t.integer :user_id

      t.timestamps
      t.timestamp :last_commented #this timestamp will be the date of last comment

      t.boolean :branch
      t.boolean :commentable
      t.integer :manufacturer_id
      t.string :cat_num
      t.integer :status_id
    end
    Item.create :id => 1,
                :head => "All items",
                :body => "The root for all items",
                :user_id => 1,
                :commentable => false,
                :branch => true
  end

  def self.down
    drop_table :items
  end
end
