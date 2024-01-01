class Favorite < ApplicationRecord
  
  belong_to :user 
  belong_to :book
  
  validates :user_id, uniqueness: {scope: :book_id}
end
