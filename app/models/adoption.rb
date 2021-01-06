class Adoption <  ApplicationRecord

belongs_to :person 
belongs_to :animal


#validates :adopt

def adopt
    #each pet belongs to one adoption/person
    self.animal
end


end