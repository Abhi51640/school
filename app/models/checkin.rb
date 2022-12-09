# frozen_string_literal: true

class Checkin < ApplicationRecord
  belongs_to :student
  # after_create_commit { broadcast_append_to "new_checkins" }
end
