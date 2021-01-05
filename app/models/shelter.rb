class Shelter < ApplicationRecord

has_many :animals
has_many :appointments
has_many :people, through: :appointments

end 