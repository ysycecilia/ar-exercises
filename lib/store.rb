class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  
  validate :stores_must_carry_men_or_women_apparel
  
  def stores_must_carry_men_or_women_apparel
    if self.mens_apparel == false && self.womens_apparel == false
      errors.add(:mens_apparel, :womens_apparel, ", either of them should be sold")
    end
  end

end
