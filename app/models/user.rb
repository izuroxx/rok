class User < ActiveRecord::Base

	validates	:imie, presence: true
	validates	:nazwisko, presence: true

    
    def imie_i_nazwisko
        
        "#{imie} #{nazwisko}"
        
    end
end