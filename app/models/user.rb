class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "date_of_birth", "email", "encrypted_password", "id", "identification_number", "name", "phone_number", "remember_created_at", "reset_password_sent_at", "reset_password_token", "surname", "updated_at"]
  end

  has_many :vehicles
end
