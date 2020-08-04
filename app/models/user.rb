class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # attr_accessible :email, :password, :password_confirmation, :profile_attributes
  
  has_one :profile, dependent: :destroy, class_name: "Profile"
  accepts_nested_attributes_for :profile,  allow_destroy: true

  # def create_profile
  #   profile = build_profile(:name => “Name”, :Surname =>
  #   “Surname”,)
  # end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
