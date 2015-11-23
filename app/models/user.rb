class User < ActiveRecord::Base
    
    def imie_i_nazwisko
        
        "#{imie} #{nazwisko}"
        
    end
end