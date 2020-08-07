class Profile < ApplicationRecord
  # attr_accessible :first_name, :last_name, :contact, :address
  belongs_to :user

  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact, presence: true
  validates :address, presence: true

end
