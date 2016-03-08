class Patient < ActiveRecord::Base

  validates :name,  presence: true
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},  presence: true
  validates :phone_no, format: { with: /\d{3}-\d{3}-\d{4}/}, presence: true
  validates :home_address, presence: true, :length => { :maximum => 2000 }
  validates :facility_address, presence: true, :length => { :maximum => 2000 }
  validates :pickup_time, presence: true
  validates :days_of_week, presence: true

      # Include default devise modules. Others available
    # are:
    # :token_authenticatable, :encryptable,
    # :confirmable, :lockable, :timeoutable and
    # :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable,
    :validatable

end
