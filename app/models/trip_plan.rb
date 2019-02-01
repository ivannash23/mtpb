class TripPlan < ApplicationRecord
  has_many :days, dependent: :destroy

  validates :title, presence: {:message => "can't be blank." }
  validates :summary, presence: {:message => "can't be blank." }
end
