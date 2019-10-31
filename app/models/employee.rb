class Employee < ApplicationRecord
    validates :name, presence: true 
    validates :position, presence: true 
    validates :employeeid, presence: true
    validates :phone, presence: true
end
