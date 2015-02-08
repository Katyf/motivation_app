class Task < ActiveRecord::Base


  validates :name, :due_by, :est_time, :status, presence: true
end
