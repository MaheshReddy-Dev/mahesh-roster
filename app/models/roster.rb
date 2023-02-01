class Roster < ApplicationRecord
    belongs_to :company
    has_many :shifts
    validates :roster_date, presence: true

end
