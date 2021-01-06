class Animal < ApplicationRecord

belongs_to :shelter 
has_many :people, through: :adoptions
has_many :adoptions 

validates :name, presence: true
validates :gender, presence: true
validates :breed, presence: true
validates :age, presence: true
validates :personality, presence: true

end 