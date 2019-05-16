class Restaurant < ApplicationRecord
  has_many :review, dependent: :destroy
  validates :name, :address, :category, uniqueness: true,
    presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian", "Austrian"] }
end
