class Vehicle < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["brand", "created_at", "id", "plate_number", "updated_at", "user_id", "vehicle_type", "year"]
  end
end
