class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  # validates :hourly_rate, numericality: { in: 40..200 }
  validates :store_id, numericality: { greater_than_or_equal_to: 1}
  
end
