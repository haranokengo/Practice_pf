class VariablecostValue < ApplicationRecord
  has_many :variablecost_values, dependent: :destroy
end
