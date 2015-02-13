class Note < ActiveRecord::Base
  validates :time_at, :body, :username, :note_id, presence: true
end
