class Animal < ApplicationRecord

belongs_to :shelter 
has_many :people, through: :adoptions
has_many :adoptions 

end 