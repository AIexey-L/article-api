class Dislike < ApplicationRecord
  belongs_to :article
  validates :count, numericality: { only_integer: true }
end
