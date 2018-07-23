class Pet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :color, presence: true
  validates :age, presence: true

  has_one_attached :pet_avi
  has_many_attached :images
end
