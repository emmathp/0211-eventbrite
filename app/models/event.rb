class Event < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  belongs_to :user
  validates :start_date, presence: true, if: :future_date
  validates :duration, presence: true , numericality: { greater_than_or_equal_to: 1 }, if: :multiple_of_five?
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, :inclusion => 1..1000
  validates :location, presence: true

  validate :future_date
  validate :multiple_of_five?

 

  def future_date
    errors.add(:start_date, "Event can't be in the past") unless
      start_date > DateTime.now
  end

  def multiple_of_five?
    errors.add(:duration, "should be a multiple of 5.") unless duration % 5 == 0
  end

end
