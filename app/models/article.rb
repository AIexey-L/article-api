class Article < ApplicationRecord
  validates_presence_of :title, :description
  has_many :likes, dependent: :destroy
  has_many :dislikes, dependent: :destroy
end
