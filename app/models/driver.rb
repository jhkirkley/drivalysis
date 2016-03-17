class Driver < ActiveRecord::Base
  validates :name,  presence: true
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/}, presence: true
  validates :address, presence: true, :length => { :maximum => 2000 }
  validates :neighborhood, presence: true
  validates :wheel_chair_accessible, presence: true
  validates :willing_to_carpool, presence: true
  validates :assistance_comfort_level, presence: true

  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
end
