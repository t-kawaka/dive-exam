class Estate < ApplicationRecord
  has_many :station1s, dependent: :destroy
  accepts_nested_attributes_for :station1s

  has_many :station2s, dependent: :destroy
  accepts_nested_attributes_for :station2s

  has_many :station3s, dependent: :destroy
  accepts_nested_attributes_for :station3s

  validates :house, presence:true
  validates :money, presence:true
  validates :address, presence:true
  validates :age, presence:true
  validates :information, presence:true
end
