class Relationship < ApplicationRecord
  belong_to :follower, class_name: "User"
  belong_to :followed, class_name: "User"
  
#　フォローしたときの処理
def follow(user_id)
  followers.create(followed_id: user_id)
end

#　フォローを外すときの処理
def unfollow(user_id)
  followers.find_by(followed_id: user_id).destroy
end

end
