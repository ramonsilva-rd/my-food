class Category < ApplicationRecord
  has_many :restaurants, dependent: :destroy
  has_many :meals, dependent: :destroy
end
