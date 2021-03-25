class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :meals, dependent: :destroy
end
