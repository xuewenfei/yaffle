class Wickwall < ActiveRecord::Base
  act_as_yaffle yaffle_text_field: :last_tweet
end
