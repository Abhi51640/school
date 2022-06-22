class Checkin < ApplicationRecord
 
   belongs_to :student

   validates_uniqueness_of :name
   after_create_commit { broadcast_append_to "checkins" }
end
