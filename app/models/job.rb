class Job < ApplicationRecord
  validates :task, presence: true
end
