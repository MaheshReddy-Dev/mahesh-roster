class Roster < ApplicationRecord
 belongs_to :company
 has_many :shifts, dependent: :destroy 
 validates :roster_date, presence: true
 validates :company_id, presence: true
 validate :date_cannot_be_in_the_past

 private
  def date_cannot_be_in_the_past
     if roster_date.present? && roster_date < Date.today
      errors.add(:roster_date, "can't be in the past")
  end
  end
  def to_s
    self.roster_date.strftime("%d/%m/%Y")
  end
  
end

