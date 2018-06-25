class Article < ApplicationRecord
  validates_presence_of :title, :description
  # Like and Dislike models are counters
  has_one :like, dependent: :destroy
  has_one :dislike, dependent: :destroy
end
