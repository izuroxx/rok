class User < ActiveRecord::Base

	before_save { self.email = email.downcase }
	has_secure_password
	validates	:imie, :nazwisko, :login, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
	has_many :posts
	


    
    def imie_i_nazwisko
        
        "User: #{imie} #{nazwisko}"
        
    end

    def credentials
    	"Username: #{login} Email: #{email}"
    end

end