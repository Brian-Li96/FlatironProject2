class Person < ApplicationRecord

has_many :adoptions
has_many :animals, through: :adoptions 

validates :first_name, length: { minimum: 2 }
validates :last_name, presence: true
validates :email, presence: true
validates :email, uniqueness: true
validates :password, presence: true

has_secure_password 



end 