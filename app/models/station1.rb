class Station1 < ApplicationRecord
  belongs_to :estate, optional: true

  validates :rail, presence: true
  validates :name, presence: true
  validates :walk, presence: true
end
