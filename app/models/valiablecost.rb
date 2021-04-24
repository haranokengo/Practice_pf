class Valiablecost < ApplicationRecord
  has_many :valiablecost_value, dependent: :destroy
end
