class Point < ActiveRecord::Base
  has_one :message
  accepts_nested_attributes_for :message

  validates :statpoint, presence: true
end
