class Message < ActiveRecord::Base
  belongs_to :point

  validates :body, presence: true
end
