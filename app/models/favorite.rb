class Favorite < ApplicationRecord
  belong_to :user
  blogng_to :topic
end
