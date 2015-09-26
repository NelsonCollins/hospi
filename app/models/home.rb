class Home < ActiveRecord::Base
  belongs_to :user
 
  
  dragonfly_accessor :photo

  dragonfly_accessor :image

  
end
