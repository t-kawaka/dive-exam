class Estate < ApplicationRecord
  has_many :station1s, dependent: :destroy
  accepts_nested_attributes_for :station1s, allow_destroy: true, reject_if: :all_blank

  has_many :station2s, dependent: :destroy
  accepts_nested_attributes_for :station2s, allow_destroy: true, reject_if: :all_blank

  validates :house, presence:true
  validates :money, presence:true
  validates :address, presence:true
  validates :age, presence:true
  validates :information, presence:true
end
