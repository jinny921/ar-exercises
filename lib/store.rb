class Store < ActiveRecord::Base

  has_many :employees
  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue, greater_than_or_equal_to: 0
  validate :have_either_men_or_women_or_both

  def have_either_men_or_women_or_both
    if !mens_apparel && !womens_apparel
      errors.add(:base, "You should have mens or womens apparel")
    end
  end
  
end
