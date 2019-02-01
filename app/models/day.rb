class Day < ApplicationRecord
  belongs_to :trip_plan

  validates :title, presence: {:message => "can't be blank." }
  validates :description, presence: {:message => "can't be blank." }
end
