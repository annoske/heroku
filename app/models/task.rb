class Task < ApplicationRecord
  belongs_to :comment
  validates :title,presence: true
end
