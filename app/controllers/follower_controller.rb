class FollowerController < ApplicationController


def follow

followed_user_id = params.fetch("followed_id")
follower_user_id = session[:user_id]

followed_user = User.where( :id => followed_user_id).at(0)


f = Following.new

f.leader_id = followed_user_id
f.follower_id = follower_user_id

f.save

redirect_to("/user/#{followed_user.username}")

end


#def unfollow

#unfollow the person

#end


end