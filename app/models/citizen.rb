class Citizen < ApplicationRecord
  belongs_to :country

  validates :age,
            numericality: { greater_than_or_equal_to: 0,
                            less_than_or_equal_to: 150 }
end
