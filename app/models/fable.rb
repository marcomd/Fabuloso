class Fable < ApplicationRecord
  belongs_to :user
  has_many :likers, -> { where like: true } #, class_name: 'FableUser'
  has_many :users,
            through: :likers
  has_many :comments
  # has_and_belongs_to_many :users
end
