class Station1 < ApplicationRecord
  belongs_to :estate, optional: true
  validates :estate_id, presence:true
end
