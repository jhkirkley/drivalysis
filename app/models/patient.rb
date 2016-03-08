class Patient < ActiveRecord::Base

  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},  presence: true
  validates :home_address, :length => { :maximum => 2000 }
  validates :facility_address, :length => { :maximum => 2000 }


      # Include default devise modules. Others available
    # are:
    # :token_authenticatable, :encryptable,
    # :confirmable, :lockable, :timeoutable and
    # :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable,
    :validatable

end
