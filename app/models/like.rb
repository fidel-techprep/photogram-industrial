class Like < ApplicationRecord
  belongs_to :photo_id
  belongs_to :user_id
end
