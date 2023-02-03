class Company < ApplicationRecord
    has_many :employees
    has_many :rosters , dependent: :destroy
    has_many :users
    validates :name, presence: true
    validates :website, presence: true
end
