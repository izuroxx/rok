class User < ActiveRecord::Base

	validates	:imie, :nazwisko, presence: true
	
    
    def imie_i_nazwisko
        
        "#{imie} #{nazwisko}"
        
    end
end