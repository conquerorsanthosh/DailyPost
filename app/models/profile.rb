class Profile < ActiveRecord::Base

  validates_presence_of :name ,:age ,:location
  belongs_to :user
end
