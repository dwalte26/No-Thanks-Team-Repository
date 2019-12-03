class Employee < ApplicationRecord
    has_many :projects
    has_secure_password
    
    ##VALID_EMAIL_REGEX = /A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
   ## before_save { self.email = email.downcase }
    
    
    validates :name, presence: true
    validates :position, presence: true
    validates :employeeid, presence: true
    validates :phone, presence: true
    validates :email,
        presence: true,
        length: { maximum: 255 },
        #format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
        
    validates :password, presence: true

    
    
    
end
