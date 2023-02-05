class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    belongs_to :company
    has_many :shifts ,dependent: :destroy
    validates :name , presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :salary, presence: true
    validates :experience, presence: true
end
