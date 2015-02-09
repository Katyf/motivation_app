class Point < ActiveRecord::Base
  belongs_to :task
  has_many :messages

  validates :statpoint, presence: true
end
