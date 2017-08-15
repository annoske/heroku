class Comment < ApplicationRecord
  has_many:tasks,:dependent => :destroy
  has_many:likes,:dependent => :destroy
  validates :title,presence:{message:"入力してください"}
end
