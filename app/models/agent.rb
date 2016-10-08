class Agent < ActiveRecord::Base
  belongs_to :user
  
  has_many :photos
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :agent_type, presence: true
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 50}
  validates :phone_number, presence: true, length: {maximum: 12}
  validates :about, presence: true, length: {maximum: 500}
  validates :address, presence: true, length: {maximum: 50}
  validates :days_availability, presence: true
  validates :time_availability, presence: true
  validates :price, presence: true
  
  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end
end
