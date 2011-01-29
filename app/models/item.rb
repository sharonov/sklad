class Item < ActiveRecord::Base

acts_as_nested_set

  belongs_to :user
  has_many :comments

  validates :head, :presence => true

end
