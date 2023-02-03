class Shift < ApplicationRecord
    belongs_to :roster
    belongs_to :employee
    validates :start_time, presence: true
    validates :end_time, presence: true
    validate :shift_duration
 
    private

  def shift_duration
     if end_time.present? && start_time.present? && (end_time - start_time) < 8.hours
       errors.add(:end_time, "should be at least 8 hours from the start time")
     end
  end

end
