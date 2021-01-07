class Appointment < ApplicationRecord

belongs_to :person, optional: true
belongs_to :shelter, optional: true
belongs_to :animal

# def self.one_app
#     #animal cannot have same app time on same date
#     Appointment.all.select do |app|
#     app.animal.date == false
#     end 
#     end

end