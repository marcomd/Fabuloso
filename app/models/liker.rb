class Liker < ApplicationRecord
  belongs_to :fable
  belongs_to :user
end
