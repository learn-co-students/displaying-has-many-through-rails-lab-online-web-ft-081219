class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def app_count
        self.appointments.count
    end
end
