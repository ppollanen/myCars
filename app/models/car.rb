class Car < ApplicationRecord
  validates :registration_number, presence: true
end
