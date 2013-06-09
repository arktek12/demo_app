class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validation :content, :length => { :maximum => 140 }
end
