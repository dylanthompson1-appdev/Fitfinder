# == Schema Information
#
# Table name: followings
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  follower_id :integer
#  leader_id   :integer
#
class Following < ApplicationRecord
end
