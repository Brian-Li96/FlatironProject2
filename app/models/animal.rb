class Animal < ApplicationRecord

belongs_to :shelter 
has_many :people, through: :adoptions
has_many :adoptions 

validates :name, presence: true
validates :gender, presence: true
validates :breed, presence: true
validates :age, presence: true
validates :personality, presence: true

# validates :age, numericality {greater_than_or_equal_to: 1,
#             less_than_or_equal_to: 20}

end 