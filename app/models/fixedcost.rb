class Fixedcost < ApplicationRecord
  has_many :fixedcost_value, dependent: :destroy
end
