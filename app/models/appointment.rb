class Appointment < ApplicationRecord

belongs_to :person, optional: true
belongs_to :shelter, optional: true
belongs_to :animal


end