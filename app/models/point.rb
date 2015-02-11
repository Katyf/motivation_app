class Point < ActiveRecord::Base
  has_one :gmessage
  has_one :bmessage
  accepts_nested_attributes_for :gmessage
  accepts_nested_attributes_for :bmessage

  validates :statpoint, presence: true
end
