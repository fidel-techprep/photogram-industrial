# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  photo_id_id :bigint           not null
#  user_id_id  :bigint           not null
#
# Indexes
#
#  index_comments_on_photo_id_id  (photo_id_id)
#  index_comments_on_user_id_id   (user_id_id)
#
# Foreign Keys
#
#  fk_rails_...  (photo_id_id => photos.id)
#  fk_rails_...  (user_id_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :photo_id
  belongs_to :user_id
end
