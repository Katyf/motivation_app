class Task < ActiveRecord::Base
  has_many :messages

  validates :name, :due_by, :est_time, :status, presence: true
end
