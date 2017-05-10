class Employee < ActiveRecord::Base

  belongs_to :store
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :store_id
  validates_inclusion_of :hourly_rate, in: 40..200
  before_create :generate_password

  private
    def generate_password(length=8)
      self.password = ('a'..'z').sort_by {rand}[0,length].join
    end

end
