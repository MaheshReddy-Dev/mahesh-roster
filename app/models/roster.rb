class Roster < ApplicationRecord
 belongs_to :company
 has_many :shifts, dependent: :destroy 
 validates :roster_date, presence: true
 validates :company_id, presence: true
end

