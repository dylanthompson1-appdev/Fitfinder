# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  owner_id   :integer
#
class Post < ApplicationRecord


end
