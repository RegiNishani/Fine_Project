class Notification < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "publish_at", "published", "subject", "updated_at"]
  end
end
