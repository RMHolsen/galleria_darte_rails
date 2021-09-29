class User < ActiveRecord::Base 
    has_secure_password
    has_many :galleries 
    has_many :artworks, through: :galleries

    def medium_hours(medium)
        @medium_hours = 0
        self.artworks.each do |work|
            if work.medium == medium 
                @medium_hours += work.hours 
            end 
        end 
        
        # or something to that effect, test once you have views and things up.

        @medium_hours 
    end
end 