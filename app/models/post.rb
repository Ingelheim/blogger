class Post < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings
  # Remember to create a migration!
end
