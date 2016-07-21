class Fable < ApplicationRecord
  belongs_to :user
  has_many :likers, -> { where like: true } #, class_name: 'FableUser'
  has_many :users,
            through: :likers
  has_many :comments
  # has_and_belongs_to_many :users

  has_attached_file :logo,
                    styles: { medium: "400x400>", thumb: "200x200>" },
                    default_url: "/images/:style/missing.png" #, path: "/public/images/fables/:id/logos/:style/:basename.:extension"
  # validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  validates_attachment :logo,
                      presence: true,
                      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
                      size: { in: 0..200.kilobytes }
end
