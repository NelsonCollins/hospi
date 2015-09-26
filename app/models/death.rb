class Death < ActiveRecord::Base
	belongs_to :user
  # has_one :reg_no
  belongs_to :searching
  
  	
     def self.search(query)
  where("dname like ?" "%#{query}%") 
  end

  def reg_num
    "#{place.first(3).upcase}/#{created_at.month}/#{created_at.year}/%.2d" % id
   
  end
  
end
