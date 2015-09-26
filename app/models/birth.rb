class Birth < ActiveRecord::Base
  belongs_to :user
  # has_one :reg_no
  belongs_to :searching
  
  	
  def self.search(query)
    where("childname LIKE ? OR reg_num like ?" , "%#{query}%", "%#{query}%")
  end
  
  def reg_num
    
    "#{sbirth.first(3).upcase}/#{lga.first(3).upcase}/#{created_at.month}/#{created_at.year}/%.2d" % id
  
  end
    
end

# {sbirth.chars.first}