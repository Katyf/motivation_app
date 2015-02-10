class Task < ActiveRecord::Base

  validates :name, :due_by, :est_time, presence: true
end
