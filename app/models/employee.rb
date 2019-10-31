class Employee < ApplicationRecord
    validates :name, presence: true, length: { minimum: 10 }
    validates :position, presence: true, length: { minimum: 10 }
    validates :employeeid, presence: true, length: { minimum: 10 }
    validates :phone, presence: true, length: { minimum: 10 }
end
