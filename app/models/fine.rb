class Fine < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["amount", "created_at", "id", "payment_status", "penalty_amount", "place", "reason", "time_of_issue", "updated_at"]
  end
end
