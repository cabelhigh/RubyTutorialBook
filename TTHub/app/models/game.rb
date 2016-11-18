class Game < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1, maximum: 140 }

  has_attached_file :image
end
