class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user


	
end



#http://guides.railsgirls.com/commenting/
