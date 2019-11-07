class Employee < ApplicationRecord
    has_many :projects
    validates :name, presence: true
    validates :position, presence: true
    validates :employeeid, presence: true
    validates :email, presence: true
    validates :phone2, presence: true
end
