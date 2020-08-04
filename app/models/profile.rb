class Profile < ApplicationRecord
  # attr_accessible :first_name, :last_name, :contact, :address
  belongs_to :user

  has_one_attached :photo
end
