# == Schema Information
#
# Table name: pieces
#
#  id         :integer          not null, primary key
#  brand      :string
#  image      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Piece < ApplicationRecord
end
