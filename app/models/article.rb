class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :categories
  validates_presence_of :title,:contents,:location
end
