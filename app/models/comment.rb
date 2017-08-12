class Comment < ApplicationRecord
  has_many:tasks
  has_many:likes
  validates :title,presence:{message:"入力してください"}
end
