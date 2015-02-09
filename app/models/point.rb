class Point < ActiveRecord::Base
  belongs_to :task
  validates :statpoint, presence: true
end
