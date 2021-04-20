class Income < ApplicationRecord
  has_many :income_value, dependent: :destroy
end
