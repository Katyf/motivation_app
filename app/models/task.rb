class Task < ActiveRecord::Base
  has_many :points

  validates :name, :due_by, :est_time, presence: true
end
