class Driver < ActiveRecord::Base
  validates :name,  presence: true
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},  presence: true
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/}, presence: true
  validates :address, presence: true, :length => { :maximum => 2000 }
  validates :neighborhood, presence: true
  validates :wheel_chair_accessible, :inclusion => {:in => [true, false]}
  validates :willing_to_carpool, :inclusion => {:in => [true, false]}
  validates :assistance_comfort_level, presence: true
end
