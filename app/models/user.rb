class User < ActiveRecord::Base

	validates	:imie, :nazwisko, presence: true

	#has_many :posts
	
    
    def imie_i_nazwisko
        
        "#{imie} #{nazwisko}"
        
    end
end