class Animal < ApplicationRecord

belongs_to :shelter 
has_many :people, through: :adoptions
has_many :adoptions 
has_many :appointments

validates :name, presence: true
validates :gender, presence: true
validates :breed, presence: true
validates :age, presence: true
validates :personality, presence: true


def self.not_adopted
    #list of all animals that are NOT adopted
    Animal.all.select do |animal|
    animal.adopted == false
    end 
    end



end 