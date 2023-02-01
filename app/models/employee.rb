class Employee < ApplicationRecord
    belongs_to :company
    has_many :shifts
    validates :name , presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :salary, presence: true
    validates :experience, presence: true
end
