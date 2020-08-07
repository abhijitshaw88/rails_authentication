class Product < ApplicationRecord
  belongs_to :category
  has_one :extra
  accepts_nested_attributes_for :extra
end
