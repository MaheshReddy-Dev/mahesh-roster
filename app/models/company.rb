class Company < ApplicationRecord
    has_many :employees
    has_many :rosters
    validates :name, presence: true
    validates :website, presence: true
end
